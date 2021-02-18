import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingfull/ui/ios/pages/home.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Carrinho',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return HomePage();
                break;

              case 1:
                return Container(
                  color: Colors.red,
                );
                break;

              default:
                return Container(
                  color: Colors.green,
                );
                break;
            }
          },
        );
      },
    );
  }
}
