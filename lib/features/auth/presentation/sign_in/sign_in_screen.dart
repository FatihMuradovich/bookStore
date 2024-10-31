// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo/logo 3.PNG',
                  height: 70,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Çeşmämiz kitap bolsun',
              style: TextStyle(
                fontFamily: 'BigCaslon',
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'E-pocta salgynyz',
                      style: TextStyle(
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hintText: 'example@gmail.com',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Parolynyz',
                          style: TextStyle(
                            fontFamily: 'Poppins-regular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Paroly unutdynyzmy?',
                          style: TextStyle(
                            fontFamily: 'Poppins-regular',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFff9900),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          color: Color(0xFF445872),
                          fontFamily: 'Poppins-regular',
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        hintText: 'password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFF445872),
                          ),
                          gapPadding: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFF445872),
                          ),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFF445872),
                        ),
                      ),
                      child: Row(
                        children: [
                          const CountryCodePicker(
                            showFlag: false,
                            onChanged: print,
                            initialSelection: 'Tm',
                            favorite: ['+993', 'TM'],
                            showCountryOnly: false,
                            flagWidth: 24,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              '|',
                              style: TextStyle(
                                fontSize: 33,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: const InputDecoration(
                                    hintText: 'xxxxxxxx',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hintText;
  CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: Color(0xFF445872),
          fontFamily: 'Poppins-regular',
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF445872),
          ),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF445872),
          ),
          gapPadding: 10,
        ),
      ),
    );
  }
}
