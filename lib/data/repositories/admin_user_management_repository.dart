import 'package:with_edu/data/models/app_response.dart';
import 'package:with_edu/data/services/dio/admin_user_management_dio_service.dart';

class AdminManagementRepository {
  final AdminManagementDioService _adminDioService;

  const AdminManagementRepository({
    required AdminManagementDioService adminDioService,
  }) : _adminDioService = adminDioService;

  Future<AppResponse> getAllUsers() async => _adminDioService.getAllUsers();
}
