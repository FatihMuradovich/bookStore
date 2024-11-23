import 'package:book_store/app/localization/localization.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child:  Row(
        children: [
          const Icon(
            FluentSystemIcons.ic_fluent_search_filled,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 6,
          ),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                  hintText: context.l10n.bookAuthorSearch, border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
