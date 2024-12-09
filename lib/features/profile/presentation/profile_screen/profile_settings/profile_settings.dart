import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/constants.dart';
import 'package:book_store/features/profile/presentation/profile_screen/profile_settings/widgets/log_out_dialog.dart';
import 'package:book_store/features/profile/presentation/profile_screen/profile_settings/widgets/profile_settings_item.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ConstantsIcons.leftChevron),
        title: Text(
          context.l10n.settingsProfil,
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ProfileSettingsItem(
              title: 'Şahsy maglumatlarym',
              icon: const Icon(
                FluentSystemIcons.ic_fluent_person_filled,
              ),
              ontap: () {},
            ),
            ProfileSettingsItem(
              title: 'Paroly täzelemek',
              icon: const Icon(
                FluentSystemIcons.ic_fluent_person_filled,
              ),
              ontap: () {},
            ),
            ProfileSettingsItem(
              title: 'Çykyş',
              icon: const Icon(
                FluentSystemIcons.ic_fluent_person_filled,
              ),
              ontap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const LogOutDialog();
                  },
                );
              },
            ),
            ProfileSettingsItem(
              title: 'Hasaby pozmak',
              icon: const Icon(
                FluentSystemIcons.ic_fluent_person_filled,
              ),
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
