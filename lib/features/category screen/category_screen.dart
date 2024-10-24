import 'package:book_store/common/constants.dart';
import 'package:book_store/features/home%20screen/widgets/search_text_field.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'Kategoriýalar',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 55),
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: SearchTextField(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Card(
                color: Colors.white,
                elevation: 0.1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Kategoriya',
                        style: TextStyle(
                          fontFamily: 'Poppins-regular',
                          fontSize: 14,
                        ),
                      ),
                      Icon(
                        FluentSystemIcons.ic_fluent_chevron_right_filled,
                        color: ConstantsColor.customBlueColor,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
