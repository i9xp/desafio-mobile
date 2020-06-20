import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testeapp/src/bloc/CarrinhoBloc.dart';
import 'package:testeapp/src/models/BottomNavItemModel.dart';
import 'package:testeapp/src/pages/cart/CartPageWidget.dart';
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/CustomBottomNavigation.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage>  with CartPageWidget {

  CarrinhoBloc carrinhoBloc;

  @override
  void didChangeDependencies() {
    carrinhoBloc = Provider.of<CarrinhoBloc>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.gray,
      body: Flex(
        direction: Axis.vertical,
        children: [
          SizedBox(height: 48,),
          rowWithActions(),
          rowWithTitle(),
          cartListItens(
            carrinhoBloc: carrinhoBloc
          ),
          cartSubtotal(
            context: context
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(
        itens:  [
          BottomNavItemModel(
              nome: "Home",
              icone: Icons.home
          ),
          BottomNavItemModel(
              nome: "Search",
              icone: Icons.search
          ),
          BottomNavItemModel(
              nome: "Cart",
              icone: Icons.add_shopping_cart
          ),
          BottomNavItemModel(
              nome: "Profile",
              icone: Icons.person_outline
          ),
          BottomNavItemModel(
              nome: "More",
              icone: Icons.menu
          ),

        ],
      )
    );
  }
}
