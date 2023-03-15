import 'package:flutter/material.dart';

class ReklamaWidget extends StatefulWidget {
  const ReklamaWidget({super.key});

  @override
  State<ReklamaWidget> createState() => _ReklamaWidgetState();
}

class _ReklamaWidgetState extends State<ReklamaWidget> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return FittedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 20),

              // ignore: prefer_const_constructors
              Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: Image.asset(
                      'img/1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Text(
                    'EXCLUSIVE MODERN\nDESIGNS',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 250,
                    height: 2,
                    color: Colors.amber,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'CURATED FURNITURE TO\nMATCH ANY LIFESTYLE',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const SizedBox(width: 30),

              // ignore: prefer_const_constructors
              Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: Image.asset(
                      'img/2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Text(
                    'NATIONWIDE FAST\nSHIPPING',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 250,
                    height: 2,
                    color: Colors.amber,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'NEED IT FAST?\nWE\'LL SHIP IT FAST',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const SizedBox(width: 30),

              // ignore: prefer_const_constructors
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 150,
                      child: Image.asset(
                        'img/3.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Text(
                      'IN-STORE & ONLINE\nEXPERIENCE',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 250,
                      height: 2,
                      color: Colors.amber,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'DESIGN CONSULTANTS\nAVAILABLE IN-STORE & ONLINE',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
