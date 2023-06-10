import 'package:flaxen_infosoft/ScreenTwo.dart';
import 'package:flaxen_infosoft/Screenfour.dart';
import 'package:flaxen_infosoft/Screenone.dart';
import 'package:flaxen_infosoft/Screenthree.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'package:flutter/material.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller =
        PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [PageOne(), ScreenTwo(), Pagethree(), Pagefour()];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_outlined),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.search_outlined),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.music_note_outlined),
          inactiveColorPrimary: Colors.grey,
          activeColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person),
          inactiveColorPrimary: Colors.grey,
          activeColorPrimary: Colors.white,
        ),
      ];
    }

    return Scaffold(
        backgroundColor: Color.fromARGB(190, 255, 255, 255),
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Color(0Xff353542), 
          handleAndroidBackButtonPress: true, 
          resizeToAvoidBottomInset:
              true, 
          stateManagement: true, 
          hideNavigationBarWhenKeyboardShows:
              true,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties(
            
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style13, 
        ));
  }
}
