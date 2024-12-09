import 'package:book_store/app/localization/localization.dart';
import 'package:book_store/common/constants.dart';
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
      child: Row(
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
              readOnly: true,
              onTap: () {
                showSearch(
                  context: context,
                  delegate: CustomSearch(),
                );
              },
              decoration: InputDecoration(
                hintText: context.l10n.bookAuthorSearch,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Kitap',
    'Roman',
    'Ceper eser',
    'Roman',
  ];
  @override
  String get searchFieldLabel => 'Kitap';
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          FluentSystemIcons.ic_fluent_dismiss_filled,
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: ConstantsIcons.leftChevron,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return Container(
      color: Colors.white,
      height: double.infinity,
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        },
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return Container(
      color: Colors.white,
      height: double.infinity,
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        },
      ),
    );
  }
}
