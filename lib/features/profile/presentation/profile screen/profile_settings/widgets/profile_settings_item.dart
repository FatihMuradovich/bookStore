import 'package:book_store/common/constants.dart';
import 'package:flutter/material.dart';

class ProfileSettingsItem extends StatelessWidget {
  const ProfileSettingsItem({
    super.key,
    required this.icon,
    required this.title,
    this.ontap,
  });
  final Widget icon;
  final String title;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      elevation: 0.1,
      child: ListTile(
        onTap: ontap,
        leading: icon,
        title: Text(title),
        titleTextStyle: const TextStyle(
          fontFamily: 'Poppins-regular',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        trailing: ConstantsIcons.rightChevron,
      ),
    );
  }
}
