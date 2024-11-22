import 'package:book_store/common/constants.dart';
import 'package:book_store/features/profile/presentation/profile%20screen/my_orders/completed_order.dart';
import 'package:book_store/features/profile/presentation/profile%20screen/my_orders/continue_order.dart';
import 'package:book_store/features/profile/presentation/profile%20screen/my_orders/widget/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ConstantsIcons.leftChevron),
        title: Text(
          'Sargytlarym',
          style: TextStyle(
            fontFamily: 'Poppins-regular',
            fontSize: 18.sp,
          ),
        ),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Container(
                height: 40.w,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color:  Color.fromARGB(255, 167, 186, 212)),
                child: TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator:  BoxDecoration(
                    color: ConstantsColor.customBlueColor,
                    borderRadius: const BorderRadius.all(
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
