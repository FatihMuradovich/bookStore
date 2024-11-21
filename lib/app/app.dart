import 'package:book_store/app/injection.dart';
import 'package:book_store/app/router.dart';
import 'package:book_store/common/blocs/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:book_store/features/category/data/datasources/datasource.dart';
import 'package:book_store/features/category/presentation/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'localization/localization.dart';

class App extends StatefulWidget {
  const App({super.key});
  static _AppState? of(BuildContext context) {
    return context.findAncestorStateOfType<_AppState>();
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Locale _locale = const Locale('en');

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                CategoryCubit(remoteDataSource: sl<CategoryRemoteDataSource>())
                  ..fetchCategories()),
        BlocProvider(
            create: (_) =>
                NavBarCubit(),),          
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generateRoute,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          localeResolutionCallback: (locale, supportedLocales) {
            if (locale == null || !supportedLocales.contains(locale)) {
              return const Locale(
                  'en'); // Fallback to English if locale is unsupported
            }
            return locale;
          },
          locale:
              _locale, // Current locale (set by the user or system)          debugShowCheckedModeBanner: false,
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
