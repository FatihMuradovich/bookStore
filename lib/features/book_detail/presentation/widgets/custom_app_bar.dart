import 'package:book_store/common/constants.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: true,
      pinned: false,
      backgroundColor: Colors.grey[100],
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: ConstantsIcons.leftChevron,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 15,
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                FluentSystemIcons.ic_fluent_heart_regular,
                color: Color(0xFF282846),
              ),
            ),
          ),
        )
      ],
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: SizedBox(
              height: 220,
              width: 150,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  //margin: const EdgeInsets.only(bottom: 15),
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/books/1.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
