import 'package:book_store/app/dio_settings.dart';
import 'package:book_store/features/category/data/datasources/datasource.dart';
import 'package:book_store/features/category/presentation/cubit/cubit.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:talker_flutter/talker_flutter.dart';

final GetIt sl = GetIt.instance;
Future<void> init() async {
  registerDio();
  registerDataSources();
  registerBloc();
}

registerTalker() {
  final talker = TalkerFlutter.init();

  sl.registerLazySingleton(() => talker);
}

registerDio()  {
  sl.registerLazySingleton<Dio>(() => Dio(BaseOptions(
        baseUrl: 'http://34.44.248.57/api',
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 3000),
      )));
  sl.registerLazySingleton(() => const FlutterSecureStorage());
  sl.registerLazySingleton(() => Talker());
  sl.registerLazySingleton(
      () => DioSetting(sl<Dio>(), sl<FlutterSecureStorage>(), sl<Talker>()));
}

registerDataSources()  {
  sl.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSource(dioSetting: sl<DioSetting>()));
}

registerBloc()  {
  sl.registerFactory(
      () => CategoryCubit(remoteDataSource: sl<CategoryRemoteDataSource>()));
}
