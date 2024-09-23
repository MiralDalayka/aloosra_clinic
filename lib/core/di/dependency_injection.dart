import 'package:aloosra_clinic/core/networking/api_service.dart';
import 'package:aloosra_clinic/core/networking/dio_factory.dart';
import 'package:aloosra_clinic/features/login/data/logic/login_cubit.dart';
import 'package:aloosra_clinic/features/login/data/repos/login_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
//call it in main before run app
Future<void> setUpGetIt() async {
  //dio & api service for one time
  Dio dio = DioFactory.getDio(); //our dio class .await
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //log in repo & cubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  //home repo & cubit
}
