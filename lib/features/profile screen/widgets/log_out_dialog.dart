import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      title: const Text('Ulgamdan çykmak isleýänňizmi?'),
      titleTextStyle: TextStyle(
        color: ConstantsColor.customBlueColor,
        fontFamily: 'Poppins-regular',
        fontWeight: FontWeight.bold,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.grey[200]),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Ýok',
                    style: TextStyle(
                      color: ConstantsColor.customBlueColor,
                      fontFamily: 'Poppins-regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: ConstantsColor.customOrageColor),
                  onPressed: () {},
                  child: const Text(
                    'Hawa',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins-regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
