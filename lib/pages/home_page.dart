import 'package:coffee_app_ui/util/coffee_names.dart';
import 'package:coffee_app_ui/util/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of coffee types
  // [coffee type, isSelected]
  final List coffeeType = [
    ['Cappuccino', true],
    ['Latte', false],
    ['Black', false]
  ];

  // user tapped on coffee names
  void coffeeTypeSelected(int index) {
    setState(() {
      //this for loop makes every selection
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Icon(Icons.menu),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('Encontre o melhor café para você',
                style: GoogleFonts.bebasNeue(fontSize: 48)),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Encontre seu café...',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),

          //horizontal listview of coffee
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeName(
                    name: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    });
              },
            ),
          ),

          //horizontal listview of coffee tiles
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CoffeeTile(
                  coffeeImg: 'images/coffee1.jpg',
                  coffeeDescription: 'Cremosíssimo Delicioso',
                  coffeeName: 'Cappuccino',
                  coffeePrice: 'R\$ 16,00'),
              CoffeeTile(
                  coffeeImg: 'images/coffee2.jpg',
                  coffeeDescription: 'Na medida certa',
                  coffeeName: 'Latte',
                  coffeePrice: 'R\$ 14,00'),
              CoffeeTile(
                  coffeeImg: 'images/coffee3.jpg',
                  coffeeDescription: 'Espresso Cream',
                  coffeeName: 'Latte',
                  coffeePrice: 'R\$ 16,00'),
            ],
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
    );
  }
}
