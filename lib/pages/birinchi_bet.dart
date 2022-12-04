import 'dart:developer';

import 'package:counter_ap/pages/ekinchi_bet.dart';
import 'package:flutter/material.dart';

class BirinchiBet extends StatefulWidget {
  const BirinchiBet({super.key});

  @override
  State<BirinchiBet> createState() => _BirinchiBetState();
}

class _BirinchiBetState extends State<BirinchiBet> {
  int esep = 0;

  kemituu() {
    setState(() {});
    esep--;
    log('kemituu ====>>> $esep');
  }

  koshuu() {
    setState(() {});
    esep = esep + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Тапшырма 1',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
        ),
        elevation: 0,
        // centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50.0,
            width: 300.0,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                'сан: $esep',

                /// + esep.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // setState(() {});
                  // esep--;
                  // log('esep===>>> $esep');
                  kemituu();
                },
                child: Container(
                  height: 40,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.remove,
                    size: 30,
                    color: Colors.white,
                  ),
                ),

                // esep = esep - 1;
                // // esep--;
                // log('esep====> $esep');
              ),
              const SizedBox(
                width: 25,
              ),
              ElevatedButton(
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: koshuu,
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(70, 40),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            child: Icon(
              Icons.arrow_forward,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => EkinchiBet(
                        kelgenSan: esep.toString(),
                      )));
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(70, 40),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
