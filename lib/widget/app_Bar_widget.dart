// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:modani/services/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatefulWidget {
  int id;
  AppBarWidget({super.key, this.id = 0});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
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
        FutureBuilder(
          future: getCatalog(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: SpinKitThreeBounce(
                  color: Colors.black,
                  size: 20.0,
                ),
              );
            } else if (snapshot.hasData) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    snapshot.data!.length,
                    (index) => Row(
                      children: [
                        DropdownButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          value: '${snapshot.data![index]['name']}',
                          items: [
                            DropdownMenuItem(
                              child: FutureBuilder(
                                future: getSubCatalog(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return Center(child: Text(''));
                                  } else if (snapshot.hasData) {
                                    return ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: snapshot.data!.length,
                                      itemBuilder: (context, index) {
                                        return Text(
                                          '${snapshot.data![index]['name']}',
                                        );
                                      },
                                    );
                                  } else {
                                    return Center(
                                      child: Text('Error'),
                                    );
                                  }
                                },
                              ),
                              value: '${snapshot.data![index]['name']}',
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          width: 50,
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: Text('Error'),
              );
            }
          },
        )
      ],
    );
  }
}
