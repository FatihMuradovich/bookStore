import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class AddAdressButton extends StatelessWidget {
  const AddAdressButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/newAddAdress');
          },
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFF9E0D),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FluentSystemIcons.ic_fluent_add_filled,
                    size: 22,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Täze salgy goş',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins-regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
