import 'package:digbank/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cards/views/cards_page.dart';
import '../home/views/home_page.dart';
import '../message/views/message_page.dart';
import '../more/views/more_page.dart';

class DashboardNavbarPage extends StatefulWidget {
  const DashboardNavbarPage({Key? key}) : super(key: key);

  @override
  State<DashboardNavbarPage> createState() => _DashboardNavbarPageState();
}

class _DashboardNavbarPageState extends State<DashboardNavbarPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOption = <Widget>[
    const HomePage(),
    const CardPage(),
    const MessagePage(),
    const MorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 82.h,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            backgroundColor: greenColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/svg/home.svg',
                  color: const Color(0xffB2DAAC),
                ),
                icon: SvgPicture.asset('assets/svg/home.svg'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/svg/card.svg',
                    color: const Color(0xffB2DAAC),
                  ),
                  icon: SvgPicture.asset('assets/svg/card.svg'),
                  label: 'Cards'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/svg/message.svg',
                    color: const Color(0xffB2DAAC),
                  ),
                  icon: SvgPicture.asset('assets/svg/message.svg'),
                  label: 'Messaging'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset('assets/svg/more.svg',
                      color: whiteColor),
                  icon: SvgPicture.asset('assets/svg/more.svg'),
                  label: 'More'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xffB2DAAC),
            unselectedLabelStyle: const TextStyle(color: Color(0xffFFFFFF)),
            selectedLabelStyle: const TextStyle(color: whiteColor),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
