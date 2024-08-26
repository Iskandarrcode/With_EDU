import 'package:with_edu/data/repositories/admin_group_management_repository.dart';
import 'package:with_edu/data/repositories/admin_room_management_repository.dart';
import 'package:with_edu/data/repositories/admin_user_management_repository.dart';
import 'package:with_edu/data/repositories/auth_repository.dart';
import 'package:with_edu/data/repositories/user_repository.dart';
import 'package:with_edu/data/services/dio/admin_group_management_dio_service.dart';
import 'package:with_edu/data/services/dio/admin_room_management_dio_service.dart';
import 'package:with_edu/data/services/dio/admin_user_management_dio_service.dart';
import 'package:with_edu/data/services/dio/auth_dio_service.dart';
import 'package:with_edu/data/services/dio/user_dio_service.dart';
import 'package:with_edu/logic/bloc/admin_group_management/admin_group_management_bloc.dart';
import 'package:with_edu/logic/bloc/admin_management/admin_user_management_bloc.dart';
import 'package:with_edu/logic/bloc/admin_room_management/admin_room_management_bloc.dart';
import 'package:with_edu/logic/bloc/auth/auth_bloc.dart';
import 'package:with_edu/logic/bloc/user/user_bloc.dart';
import 'package:with_edu/logic/cubit/edit_profile_form_cubit/edit_profile_form_cubit.dart';
import 'package:with_edu/logic/cubit/register_form_cubit/register_form_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logic/cubit/login_form_cubit/login_form_cubit.dart';

final GetIt getIt = GetIt.instance;
late SharedPreferences sharedPrefs;

class AppConfig {
  static Future<void> setUp() async {
    sharedPrefs = await SharedPreferences.getInstance();

    // Bloc.observer = const CrmFlutterBlocObserver();
  }

  static void dependencySetup() {
    /// registering repositories
    getIt.registerLazySingleton(
      () => AuthRepository(authDioService: AuthDioService()),
    );
    getIt.registerLazySingleton(
      () => UserRepository(userDioService: UserDioService()),
    );
    getIt.registerLazySingleton(
      () => AdminManagementRepository(
          adminDioService: AdminManagementDioService()),
    );
    getIt.registerLazySingleton(
      () => AdminGroupManagementRepository(
        adminGroupManagementDioService: AdminGroupManagementDioService(),
      ),
    );
    getIt.registerLazySingleton(
      () => AdminRoomManagementRepository(
        adminRoomManagementDioService: AdminRoomManagementDioService(),
      ),
    );

    /// registering blocs && cubits
    /// [BLOCS]
    getIt.registerLazySingleton(
      () => AuthBloc(
          authRepository: getIt.get<AuthRepository>(),
          userRepository: getIt.get<UserRepository>()),
    );
    getIt.registerLazySingleton(
      () => UserBloc(userRepository: getIt.get<UserRepository>()),
    );
    getIt.registerLazySingleton(
      () => AdminUserManagementBloc(
        adminManagementRepository: getIt.get<AdminManagementRepository>(),
      ),
    );
    getIt.registerLazySingleton(
      () => AdminGroupManagementBloc(
        adminGroupManagementRepository:
            getIt.get<AdminGroupManagementRepository>(),
      ),
    );
    getIt.registerLazySingleton(
      () => AdminRoomManagementBloc(
        adminRoomManagementRepository:
            getIt.get<AdminRoomManagementRepository>(),
      ),
    );

    /// [CUBITS]
    getIt.registerLazySingleton(() => LoginFormCubit());
    getIt.registerLazySingleton(() => RegisterFormCubit());
    getIt.registerLazySingleton(() => EditProfileFormCubit());
  }
}
