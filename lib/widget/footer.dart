import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
      child: Row(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            width: 30,
          ),
          // ignore: prefer_const_constructors
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'About Us',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Store Locations',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Carrers',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Contacts Us',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Report a Claim',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Financing',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(width: 100),
          // ignore: prefer_const_constructors
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Accessibility',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Shipping/Returns',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Sales & Promotins',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Privacy Plicy',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Company Policy',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'FAQ s',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(width: 100),
          // ignore: prefer_const_constructors
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Terms & Conditions',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Designer Consultation',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Room Planner',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Trade Program',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Virtual Design',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Product Care',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'The latest from Modani:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 35,
                  width: 350,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Follow us:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.drawPolygon,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.pinterest,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 70,
          )
        ],
      ),
    );
  }
}
