import 'package:coozin/ui/home.dart';
import 'package:coozin/ui/login/profileListTab.dart';
import 'package:coozin/ui/login/recieptListTab.dart';
import 'package:coozin/ui/login/refreshLIstTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class CoozinTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Asosiy menyu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.folder_solid),
            title: Text('Retseptlar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.refresh),
            title: Text('Refresh'),
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              title: Text('Mening Profilim')),
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: HomeListTab(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: RecieptListTab(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: RefreshListTab(),
              );
            });
            break;
          case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ProfileListTab(),
              );
            });
            break;
        }
        return returnValue;
      },
    );
  }
}
