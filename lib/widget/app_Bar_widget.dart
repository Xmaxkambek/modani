// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:modani/services/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  int? catalogid;
  dynamic valueId;
  AppBarWidget({super.key, this.catalogid, this.valueId});

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
            print('object');
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
                        DropdownButton<dynamic>(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          value: '$valueId',
                          items: [
                            DropdownMenuItem(
                              child: FutureBuilder(
                                future: getSubCatalog(catalogid!),
                                builder: (context, snapshot) {
                                  print('object');
                                  valueId = snapshot.data![index]["id"]
                                      ["sub_category"][index]["names"];

                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return Center(
                                      child: SpinKitThreeBounce(
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    );
                                  } else if (snapshot.hasData) {
                                    return Text('$valueId');
                                  } else {
                                    return Center(
                                      child: Placeholder(),
                                    );
                                  }
                                },
                              ),
                              value: '$valueId',
                            ),
                          ],
                          onChanged: (value) {},
                        ),
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

//  FutureBuilder(
  //         future: getCatalog(),
  //         builder: (context, snapshot) {
  //           if (snapshot.hasData) {
  //             return SingleChildScrollView(
  //               scrollDirection: Axis.horizontal,
  //               child: Row(
  //                 children: List.generate(
  //                   snapshot.data!.length,
  //                   (index) => Row(
  //                     children: [
  //                       DropdownButton<String>(
  //                         icon: Icon(
  //                           Icons.arrow_drop_down,
  //                           color: Colors.white,
  //                         ),
  //                         value: '${snapshot.data![index]['name']}',
  //                         items: snapshot.data![index]["sub_category"]
  //                             .map<DropdownMenuItem<String>>((e) =>
  //                                 DropdownMenuItem<String>(
  //                                   child: e['name'],
  //                                   value: '${snapshot.data![index]['name']}',
  //                                 ))
  //                             .toList(),
  //                         onChanged: (value) {},
  //                       ),
  //                       SizedBox(
  //                         width: 50,
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             );
  //           } else if (snapshot.connectionState == ConnectionState.waiting) {
  //             return Center(
  //               child: SpinKitThreeBounce(
  //                 color: Colors.black,
  //                 size: 20.0,
  //               ),
  //             );
  //           } else {
  //             return Center(
  //               child: Text(snapshot.error.toString()),
  //             );
  //           }
  //         },
  //       )