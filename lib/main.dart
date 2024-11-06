import 'dart:async';
import 'dart:developer';

import 'package:book_store/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'app/injection.dart' as di;
import 'app/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = TalkerBlocObserver(talker: sl<Talker>());
  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) => log(
      error.toString(),
      stackTrace: stackTrace,
    ),
  );
}
