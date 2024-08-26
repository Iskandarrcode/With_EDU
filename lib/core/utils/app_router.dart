import 'package:with_edu/ui/screens/admin_panel/groups/groups_screen.dart';
import 'package:with_edu/ui/screens/admin_panel/rooms/rooms_screen.dart';
import 'package:with_edu/ui/screens/admin_panel/user/users_screen.dart';
import 'package:with_edu/ui/screens/auth/login/login_screen.dart';
import 'package:with_edu/ui/screens/auth/register/register_screen.dart';
import 'package:with_edu/ui/screens/home/home_screen.dart';
import 'package:with_edu/ui/screens/profile/profile_screen.dart';
import 'package:with_edu/ui/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class AppRouter {
  static const String loginScreen = '/loginScreen';
  static const String registerScreen = '/registerScreen';
  static const String splashScreen = '/splashScreen';
  static const String homeScreen = '/homeScreen';
  static const String profileScreen = '/profileScreen';
  static const String adminPanelUsersScreen = '/adminPanelUsersScreen';
  static const String adminPanelGroupsScreen = '/adminPanelGroupsScreen';
  static const String adminPanelRoomsScreen = '/adminPanelRoomsScreen';

  static PageRoute _buildPageRoute(Widget widget) {
    return CupertinoPageRoute(builder: (BuildContext context) => widget);
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.registerScreen:
        return _buildPageRoute(const RegisterScreen());
      case AppRouter.loginScreen:
        return _buildPageRoute(const LoginScreen());
      case AppRouter.homeScreen:
        return _buildPageRoute(const HomeScreen());
      case AppRouter.profileScreen:
        return _buildPageRoute(const ProfileScreen());
      case AppRouter.adminPanelUsersScreen:
        return _buildPageRoute(const UsersScreen());
      case AppRouter.adminPanelGroupsScreen:
        return _buildPageRoute(const GroupsScreen());
      case AppRouter.adminPanelRoomsScreen:
        return _buildPageRoute(const RoomsScreen());
      default:
        return _buildPageRoute(const SplashScreen());
    }
  }
}
