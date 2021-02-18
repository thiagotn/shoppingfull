import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingfull/blocs/user.bloc.dart';
import 'package:shoppingfull/ui/android/pages/settings.page.dart';
import 'package:shoppingfull/ui/shared/widgets/account/authenticated-user-card.widget.dart';
import 'package:shoppingfull/ui/shared/widgets/account/unauthenticated-user-card.widget.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: bloc.user == null || bloc.user.email == null
          ? UnauthenticatedUserCard()
          : AuthenticatedUserCard(),
    );
  }
}
