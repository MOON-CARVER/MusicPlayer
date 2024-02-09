import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: GNav(
        backgroundColor:  Colors.amberAccent,
        gap:8,
        padding: EdgeInsets.all(16),
        tabs: const [
          GButton(icon: Icons.home,
          text: 'Home',
          backgroundColor: Colors.white,),
          GButton(icon: Icons.search,
          text: 'search',
              backgroundColor: Colors.white),
          GButton(icon: Icons.library_books,
              text: 'playlist',
              backgroundColor: Colors.white),
          GButton(icon: Icons.settings,
          text: 'settings',
              backgroundColor: Colors.white)
          ,
        ],
      ),
    );
  }







  AppBar appBar() {
    return AppBar(
      title: Text(
        'Melophile',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.amberAccent,
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 5,
              width: 5,
            ),
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}