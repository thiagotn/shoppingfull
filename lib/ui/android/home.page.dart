import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingfull/blocs/home.bloc.dart';
import 'package:shoppingfull/shared/widgets/category/category-list.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Categorias",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            CategoryList(
              categories: bloc.categories,
            ),
          ],
        ),
      ),
    );
  }
}
