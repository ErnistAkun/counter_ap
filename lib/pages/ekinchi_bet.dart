import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  const EkinchiBet({this.kelgenSan, super.key});
  final String? kelgenSan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Тапшырма 2',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 50.0,
          width: 300.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Colors.grey,
          ),
          child: Center(
            child: Text(
              'сан: $kelgenSan',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
