import 'package:flutter/material.dart';

class TylerScreen extends StatefulWidget {
  TylerScreen({Key? key}) : super(key: key);

  @override
  _TylerScreenState createState() => _TylerScreenState();
}

class _TylerScreenState extends State<TylerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('философия тайлера'),
      ),
    );
  }
}
