import 'package:flutter/material.dart';

class BirinchiBarak extends StatefulWidget {
  const BirinchiBarak({super.key});

  @override
  State<BirinchiBarak> createState() => _BirinchiBarakState();
}

class _BirinchiBarakState extends State<BirinchiBarak> {
  int san = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff18dcff),
              borderRadius: BorderRadius.all(Radius.circular(12)),

              // misal kaalagan burchtu ozgort

              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(25),
              //     bottomRight: Radius.circular(15)),
            ),
            height: 50,
            width: 240,
            child: Center(
              child: Text(
                'сан: $san',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 53),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.remove,
                  size: 38,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff7d5fff),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
              const SizedBox(width: 21),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  size: 38,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffff4d4d),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
