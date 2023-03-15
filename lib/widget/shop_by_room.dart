import 'package:flutter/material.dart';

class ShopByRoom extends StatefulWidget {
  const ShopByRoom({super.key});

  @override
  State<ShopByRoom> createState() => _ShopByRoomState();
}

class _ShopByRoomState extends State<ShopByRoom> {
  final List<String> _item = [
    'https://images.modani.com/modani/wysiwyg/every-room-2/living-room.jpg',
    'https://images.modani.com/modani/wysiwyg/every-room-2/bedroom.jpg',
    'https://images.modani.com/modani/wysiwyg/every-room-2/dining-room.jpg',
    'https://images.modani.com/modani/wysiwyg/every-room-2/outdoor.jpg',
    'https://images.modani.com/modani/wysiwyg/every-room-2/office.jpg',
    'https://images.modani.com/modani/wysiwyg/every-room-2/home-decor.jpg',
  ];
  List<String> item = [
    'living room ',
    'bedroom',
    'dining room',
    'out room',
    'office',
    'home decor ',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      color: Colors.grey,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 50),
          const Text(
            'SHOP BY ROOM',
            style: TextStyle(fontSize: 28),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 75,
            child: Divider(
              height: 2,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 30),
          GridView.builder(
            itemCount: _item.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.0,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 220,
                    width: 380,
                    child: Image.network(
                      _item[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    item[index].toUpperCase(),
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
