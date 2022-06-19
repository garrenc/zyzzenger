import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/aboutscreen';
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('о приложении'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              width: 400,
              child: Image.network(
                  'https://www.tiktok.com/api/img/?itemId=7019688948607864069&location=0&aid=1988'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'By Ruslik69rus© (for Lev)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
