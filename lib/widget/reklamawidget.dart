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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 30),

            // ignore: prefer_const_constructors
            Column(
              children: [
                const Text(
                  'EXCLUSIVE MODERN\nDESIGNS',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 150,
                  height: 3,
                  color: Colors.amber,
                ),
                const SizedBox(height: 10),
                const Text(
                  'CURATED FURNITURE TO\nMATCH ANY LIFESTYLE',
                  textAlign: TextAlign.center,
                )
              ],
            ),
            // ignore: prefer_const_constructors
            Column(
              children: [
                const Text(
                  'NATIONWIDE FAST\nSHIPPING',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 150,
                  height: 3,
                  color: Colors.amber,
                ),
                const SizedBox(height: 10),
                const Text(
                  'NEED IT FAST?\nWE\'LL SHIP IT FAST',
                  textAlign: TextAlign.center,
                )
              ],
            ),
            // ignore: prefer_const_constructors
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  const Text(
                    'IN-STORE & ONLINE\nEXPERIENCE',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 150,
                    height: 3,
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
            const SizedBox(width: 30),
          ],
        ),
      ],
    );
  }
}
