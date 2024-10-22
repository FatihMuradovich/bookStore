import 'package:book_store/features/profile%20screen/widgets/profile_item.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'Profil',
          style: TextStyle(fontFamily: 'Poppins-regular'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ProfileItem(
                ontap: () {},
                title: 'Profil',
                icon: 'assets/icons/person_light.png',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/myOrders'),
                title: 'Sargytlarym',
                icon: 'assets/icons/cart_light.png',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/adress'),
                icon: 'assets/icons/location_light.png',
                title: 'Salgylarym',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/aboutUs'),
                icon: 'assets/icons/info_light.png',
                title: 'Biz barada',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/message'),
                icon: 'assets/icons/comment_light.png',
                title: 'Habarlaşmak',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/myOrders'),
                icon: 'assets/icons/globe_light.png',
                title: 'Dil çalyşmak',
              ),
              ProfileItem(
                ontap: () => Navigator.pushNamed(context, '/rule'),
                icon: 'assets/icons/rule_light.png',
                title: 'Eltip bermek we töleg',
              ),
              const ProfileItem(
                icon: 'assets/icons/sign_light.png',
                title: 'Ulgamdan çykmak',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Wersiýa',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins-regular',
                ),
                //const TextStyle(fontFamily: 'Quicksand', fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  // aboutUser() {
  //   return
  // }
}
