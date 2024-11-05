import 'dart:async';
import 'dart:developer';

import 'package:book_store/app/app.dart';
import 'package:flutter/material.dart';
import 'app/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  // Bloc.observer = TalkerBlocObserver(talker: sl<Talker>());
  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) => log(
      error.toString(),
      stackTrace: stackTrace,
    ),
  );
}
