import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class UrunDegerlendirme extends StatelessWidget {
  const UrunDegerlendirme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              const Text('3.4'),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 20,
                width: 90,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const Icon(
                      FluentSystemIcons.ic_fluent_star_filled,
                      size: 18,
                      color: Colors.amber,
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text('941 puan'),
              const SizedBox(
                width: 5,
              ),
              const Text('|'),
              const SizedBox(
                width: 5,
              ),
              const Text('663 yorum'),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 170,
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  color: Colors.grey[100],
                  child: SizedBox(
                    height: 170,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 20,
                                width: 90,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return const Icon(
                                      FluentSystemIcons.ic_fluent_star_filled,
                                      size: 18,
                                      color: Colors.amber,
                                    );
                                  },
                                ),
                              ),
                              const Text(
                                '20.09.2024',
                                style: TextStyle(fontFamily: 'Poppins-regular'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Kullanici adi',
                            style: TextStyle(
                              fontFamily: 'Poppins-regular',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe"),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
