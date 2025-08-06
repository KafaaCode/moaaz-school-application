import 'package:flutter/material.dart';
import 'package:moaazapp/features/home/student/presentation/screens/student_home_screen.dart';
import 'package:moaazapp/services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await AuthService.init();
    final isLoggedIn = await AuthService.loadUser();
    runApp(MyApp(isLoggedIn: isLoggedIn));
  } catch (e) {
    print('Initialization error: $e');
    runApp(const MyApp(isLoggedIn: false));
  }
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({Key? key, required this.isLoggedIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مدرسة معاذ للمتفوقين',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color(0xFF536B9D)),
        fontFamily: 'Tajawal',
      ),
      // home: isLoggedIn ? const HomeScreen() : const LoginScreen(),
      home: StudentHomeScreen(),
    );
  }

  // دالة مساعدة لإنشاء MaterialColor من Color
  static MaterialColor createMaterialColor(Color color) {
    final strengths = <double>[.05];
    final swatch = <int, Color>{};

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (final strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        color.red,
        color.green,
        color.blue,
        ds < 0 ? 1 : 1 - ds,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
