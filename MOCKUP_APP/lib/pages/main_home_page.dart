import 'package:flutter/material.dart';
import 'package:mockup/controllers/controller_dark.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Color(0xFF121517),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            Row(
              children: [
                Image.asset('assets/logo_flutterando.png'),
                const SizedBox(
                  width: 5,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Atividades',
                      style: TextStyle(
                        color: Color(0xFFEDF4F8),
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Flutterando MasterClass',
                      style: TextStyle(
                        color: Color(0xFFEDF4F8),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                InkWell(
                    onTap: DarkController.instance.darkclicked,
                    child: Image.asset('assets/Icon_white_moon.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Scaffold(
//       appBar: AppBar(
//         title: const Text('Tela 1'),
//         actions: [
//           Switch(
//               value: DarkController.instance.isdark,
//               onChanged: (value) {
//                 DarkController.instance.darkclicked();
//               })
//         ],
//       ),
//     )




