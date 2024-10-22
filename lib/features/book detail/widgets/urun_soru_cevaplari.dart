import 'package:flutter/material.dart';

class UrunSoruCevaplari extends StatelessWidget {
  const UrunSoruCevaplari({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
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
                    const Text(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                      style: TextStyle(
                        fontFamily: 'Poppins-regular',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 25,
                              image: AssetImage(
                                'assets/logo/logo 3.PNG',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              maxLines: 2,
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: TextStyle(fontFamily: 'Poppins-regular'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
