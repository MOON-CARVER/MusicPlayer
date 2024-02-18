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
        backgroundColor:  Color.fromRGBO(9, 18, 39, 1),
        color: Colors.white,
        activeColor: Colors.white,
        gap:8,
        onTabChange: (index) {
          print(index);
        },
        padding: EdgeInsets.all(16),
        tabs: const [
          GButton(icon: Icons.home,
          text: 'Home',
          backgroundColor: Color.fromRGBO(22, 40, 50, 1)),
          GButton(icon: Icons.search,
          text: 'search',
              backgroundColor: Color.fromRGBO(22, 40, 50, 1)),
          GButton(icon: Icons.library_books,
              text: 'playlist',
              backgroundColor: Color.fromRGBO(22, 40, 50, 1)),
          GButton(icon: Icons.settings,
          text: 'settings',
              backgroundColor: Color.fromRGBO(22, 40, 50, 1))
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
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color.fromRGBO(9, 18, 39, 1),
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
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