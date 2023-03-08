// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

List<String> values = [
  'Sofas',
  'Coffee & Side Tables',
  'Lounge Chairs',
  'Benches,',
  'TV Stands',
  'Consoles & Libraries',
  'Lighting',
  'Rugs'
];

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  String? dropdownValue = values.first;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 90,
                  width: 200,
                  child: Image.asset('img/logo.png'),
                ),
                // const SizedBox(height: 50),
              ],
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(width: 20),
                  const Text(
                    'The',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    ' smarter ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const Text(
                    'way to buy furniture.',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_2_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(width: 30)
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        FittedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: [
                  DropdownButton(
                    isExpanded: false,
                    value: 'LIVING',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('LIVING'),
                        value: 'LIVING',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Sofas'),
                        value: 'Sofas',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Lounge Chairs'),
                        value: 'Lounge Chairs',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Benches,'),
                        value: 'Benches,',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('TV Stands'),
                        value: 'TV Stands',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Consoles & Libraries'),
                        value: 'Consoles & Libraries',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Lighting'),
                        value: 'Lighting',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Rugs'),
                        value: 'Rugs',
                      )
                    ],
                    onChanged: (value) {},
                  ),
                  DropdownButton(
                    isExpanded: false,
                    value: 'BEDROOM',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('BEDROOM'),
                        value: 'BEDROOM',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Beds'),
                        value: 'Beds',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Matteresses'),
                        value: 'Matteresses',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Dresses'),
                        value: 'Dresses',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Nightstands & Tables'),
                        value: 'Nightstands & Side Tables',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Lighting'),
                        value: 'Lighting',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Rugs'),
                        value: 'Rugs',
                      )
                    ],
                    onChanged: (value) {},
                  ),
                  DropdownButton(
                    isExpanded: false,
                    value: 'Dining',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('DINING'),
                        value: 'Dining',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Dining Tables'),
                        value: 'Dining tables',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Dining Chairs'),
                        value: 'Dining Chairs',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Counter & Bar Stools'),
                        value: 'Counter & Bar Stools',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Lighting'),
                        value: 'Lighting',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Buffets & Consoles'),
                        value: 'Buffets & Consoles',
                      )
                    ],
                    onChanged: (value) {},
                  ),
                  DropdownButton(
                    isExpanded: false,
                    value: 'OUTDOOR',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('OUTDOOR'),
                        value: 'OUTDOOR',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Outdoor Sofas &\nLounge Chairs'),
                        value: 'Outdoor Sofas',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Outdoor Loungers &\nCanopies'),
                        value: 'Lounge Canopies',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Outdoor Dining &\nBar'),
                        value: 'Outdoor dining',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Outdoor Coffee &\nSide Tables'),
                        value: 'Outdoor Coffee',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Outdoor Accessories &\nUmbrellas'),
                        value: 'Outdoor Accessories',
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  DropdownButton(
                    isExpanded: false,
                    value: 'OFFICE',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('OFFICE'),
                        value: 'OFFICE',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Office Desks'),
                        value: 'Office Desks',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Office Chairs'),
                        value: 'Office Chairs',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Office Accressories'),
                        value: 'Office Accressories',
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  DropdownButton(
                    isExpanded: false,
                    value: 'LIGHTING',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('LIGHTING'),
                        value: 'LIGHTING',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Table & Side Lamps '),
                        value: 'Table Lamps',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Ceiling Lamps'),
                        value: 'Ceiling Lamps',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Floor Lamps'),
                        value: 'Floor Lamps',
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  DropdownButton(
                    isExpanded: false,
                    value: 'HOME DECOR',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('HOME DECOR'),
                        value: 'HOME DECOR',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Accessories       '),
                        value: 'Accessories',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Tableware'),
                        value: 'Tableware',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Wall Art'),
                        value: 'Wall Art',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Mirrors'),
                        value: 'Mirrors',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Rugs'),
                        value: 'Rugs',
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  DropdownButton(
                    isExpanded: false,
                    value: 'SALE',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('SALE'),
                        value: 'SALE',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Lounge Chairs'),
                        value: 'Lounge Chairs',
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  DropdownButton(
                    isExpanded: false,
                    value: 'Sofas',
                    items: const [
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('LOCATIONS'),
                        value: 'Sofas',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Lounge Chairs'),
                        value: 'Lounge Chairs',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Benches,'),
                        value: 'Benches,',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('TV Stands'),
                        value: 'TV Stands',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Consoles & Libraries'),
                        value: 'Consoles & Libraries',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Lighting'),
                        value: 'Lighting',
                      ),
                      DropdownMenuItem(
                        // ignore: sort_child_properties_last
                        child: Text('Rugs'),
                        value: 'Rugs',
                      )
                    ],
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
