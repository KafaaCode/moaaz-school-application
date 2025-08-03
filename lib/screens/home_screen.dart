import 'package:flutter/material.dart';
import 'package:moaazapp/screens/auth/login_screen.dart';
import 'package:moaazapp/services/user_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مدرية معاذ للمتوفقين',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF536B9D, {
          50: Color(0xFFEAEDF4),
          500: Color(0xFF536B9D),
          900: Color(0xFF293C6F),
        }),
        fontFamily: 'Tajawal',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width * 0.42;
    final details = UserService.userDetails; // نقلنا الاستدعاء هنا

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // القسم العلوي الأزرق
            Container(
              padding: const EdgeInsets.fromLTRB(25, 40, 25, 30),
              decoration: const BoxDecoration(
                color: Color(0xFF536B9D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مرحبًا ${details?.id ?? ''} ${details?.lname ?? ''}',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                          const Text(
                            '2020-2021',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          print('تم الضغط على شعار معاذ');
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(0, 2),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/moaaz-logo.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSquareCard(
                    title: 'واجباتي',
                    width: cardWidth,
                    color: const Color(0xFF536B9D),
                    iconPath: 'assets/images_buttons/img4.png',
                  ),
                  _buildSquareCard(
                    title: 'الدفعات المالية',
                    width: cardWidth,
                    color: const Color(0xFF536B9D),
                    iconPath: 'assets/images_buttons/img3.png',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSquareCard(
                    title: 'علامات الطالب',
                    width: cardWidth,
                    color: Colors.amber[700]!,
                    iconPath: 'assets/images_buttons/img1.png',
                  ),
                  _buildSquareCard(
                    title: 'ملاحظات المعلمين',
                    width: cardWidth,
                    color: Colors.green[700]!,
                    iconPath: 'assets/images_buttons/img2.png',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  child: _buildSquareCard(
                    title: 'تسجيل الخروج',
                    width: cardWidth,
                    color: Colors.red,
                    iconPath: 'assets/images_buttons/img.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareCard({
    required String title,
    required double width,
    required Color color,
    required String iconPath,
  }) {
    return Container(
      width: width,
      height: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Image.asset(
                iconPath,
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}