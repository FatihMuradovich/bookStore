import 'package:book_store/app/app.dart';
import 'package:flutter/material.dart';
import 'app/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init(); // Initialize dependencies
  runApp(const App());
}

