import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.icon,
    required this.title,
    this.ontap,
  });
  final String icon;
  final String title;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        color: Colors.grey[100],
        elevation: 0.1,
        child: Container(
          height: 55,
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    icon,
                  ),
                )),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins-regular',
                  //fontWeight: FontWeight.bold,
                  color: Color(0xFF282846),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
