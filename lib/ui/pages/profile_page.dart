import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14))),
              padding: const EdgeInsets.all(8),
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: const TextStyle(
                        fontFamily: 'GTWalsheimPro',
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  // const Icon(
                  //   Icons.calendar_today_rounded,
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
