import 'package:book_store/features/profile%20screen/my%20orders/completed_order.dart';
import 'package:book_store/features/profile%20screen/my%20orders/continue_order.dart';
import 'package:book_store/features/profile%20screen/my%20orders/widget/tab_item.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Sargytlarym',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
          ),
        ),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xFF96CCFF)),
                child: TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(
                    color: Color(0xFF004D96),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: const [
                    TabItem(title: 'Dowam edýän sargyt', count: 5),
                    TabItem(title: 'Tamamlanan sargyt', count: 0),
                  ],
                ),
              ),
            )),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          OrderToContinue(),
          CompletedOrder(),
        ],
      ),
    );
  }
}
