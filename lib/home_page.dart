import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'reusable_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({String buttonName = "unnammed", int index = 10}) {
      return InkWell(
        onTap: () {
          setState(() {
            selected = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              buttonName,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight:
                      index == selected ? FontWeight.w500 : FontWeight.w300,
                  color: Color(0xff1D1E3C)),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    index == selected ? Color(0xffFE998D) : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'bg_color.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem(
                          buttonName: "Guides",
                          index: 0,
                        ),
                        SizedBox(width: 50),
                        navItem(
                          buttonName: "Pricing",
                          index: 1,
                        ),
                        SizedBox(width: 50),
                        navItem(
                          buttonName: "Team",
                          index: 2,
                        ),
                        SizedBox(width: 50),
                        navItem(
                          buttonName: "Stories",
                          index: 3,
                        )
                      ],
                    ),
                    Image.asset(
                      'account_button.png',
                      width: 163,
                      height: 53,
                    )
                  ],
                ),
                SizedBox(height: 76),
                Image.asset(
                  'illust.png',
                  width: 550,
                ),
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon_down_solid.png',
                      width: 24,
                    ),
                    SizedBox(width: 13),
                    Text(
                      "Scroll to learn more",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
