import 'package:book_store/app/injection.dart';
import 'package:book_store/app/router.dart';
import 'package:book_store/features/category/data/datasources/datasource.dart';
import 'package:book_store/features/category/presentation/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                CategoryCubit(remoteDataSource: sl<CategoryRemoteDataSource>())
                  ..fetchCategories())
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          onGenerateRoute: RouteGenerator.generateRoute,
          //initialRoute: splash,
          debugShowCheckedModeBanner: false,
          title: 'Book Library',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}
