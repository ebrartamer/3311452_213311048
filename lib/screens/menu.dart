import 'package:aroma_coffee/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../NavigateToShopping.dart';
import '../utils/navigateToHome.dart';
import '../utils/navigateToLoginPage.dart';

class Menu extends StatelessWidget {
  final List<Map<dynamic, dynamic>> items = [
    {
      'image': AssetImage('images/item-1.jpeg'),
      'category': 'breakfast',
      'title': 'Buttermilk Pancakes / €15.99',
      'text':
          "I'm baby woke mlkshk wolf bitters live-edge blue bottle, hammock freegan copper mug whatever cold-pressed. ",
    },
    {
      'image': AssetImage('images/item-2.jpeg'),
      'category': 'lunch',
      'title': 'Diner Double / €13.99',
      'text':
          "Vaporware iPhone mumblecore selvage raw denim slow-carb leggings gochujang helvetica man braid jianbing. Marfa thundercats. ",
    },
    {
      'image': AssetImage('images/item-3.jpeg'),
      'category': 'shakes',
      'title': 'Godzilla Milkshake / €6.99',
      'text':
          "Ombucha chillwave fanny pack 3 wolf moon street art photo booth before they sold out organic viral.",
    },
    {
      'image': AssetImage('images/item-4.jpeg'),
      'category': 'breakfast',
      'title': 'Country Delight / €20.99',
      'text':
          "Franzen vegan pabst bicycle rights kickstarter pinterest meditation farm-to-table 90's pop-up.",
    },
    {
      'image': AssetImage('images/item-5.jpeg'),
      'category': 'lunch',
      'title': 'Egg Attack / €22.99',
      'text':
          "Ombucha chillwave fanny pack 3 wolf moon street art photo booth before they sold out organic viral.",
    },
    
    {
      'image': AssetImage('images/item-7.jpeg'),
      'category': 'breakfast',
      'title': 'Bacon Overflow / €8.99',
      'text':
          "Carry jianbing normcore freegan. Viral single-origin coffee live-edge, pork belly cloud bread iceland put a bird. ",
    },
    {
      'image': AssetImage('images/item-8.jpeg'),
      'category': 'lunch',
      'title': 'American Classic/ €12.99',
      'text':
          "On it tumblr kickstarter thundercats migas everyday carry squid palo santo leggings. Food truck truffaut.",
    },
    {
      'image': AssetImage('images/item-9.jpeg'),
      'category': 'shakes',
      'title': 'Quarantine Buddy / €16.99',
      'text':
          "Skateboard fam synth authentic semiotics. Live-edge lyft af, edison bulb yuccie crucifix microdosing.",
    },
    {
      'image': AssetImage('images/item-10.jpeg'),
      'category': 'dinner',
      'title': 'Bison Steak / €22.99',
      'text':
          "Skateboard fam synth authentic semiotics. Live-edge lyft af, edison bulb yuccie crucifix microdosing.",
    },
    {
      'image': AssetImage('images/item-6.jpeg'),
      'category': 'shakes',
      'title': 'Oreo Dream / €18.99',
      'text':
          "Portland chicharrones ethical edison bulb, palo santo craft beer chia heirloom iPhone everyday.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          drawer: mainDrawer(context),
          appBar: AppBar(
            centerTitle: true,
            title: GestureDetector(
              onTap: () {
                navigateToHome(context);
              },
              child: SvgPicture.asset(
                'logo.svg',
                height: 50,
              ),
            ),
            actions: [
              IconButton(onPressed: () {navigateToShopping(context);}, icon: Icon(Icons.shopping_basket)),
              IconButton(
                  onPressed: () {
                    navigateToLoginPage(context);
                  },
                  icon: Icon(Icons.person))
            ],
            bottom: TabBar(
              isScrollable:
                  true, // sekmelerin yatay olarak kaydırılmasını sağlar
              indicator: BoxDecoration(
                //tabbarın indicator özelliğini kullanabiliyoruz
                borderRadius: BorderRadius.circular(
                    25), // sekmelerin kenarlarını yuvarlar
                color: Colors.lightGreen[
                    400], // sekmelerin altındaki gösterge çizgisinin rengi
              ),
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Breakfast'),
                Tab(text: 'Branch'),
                Tab(text: 'Dinner'),
                Tab(text: 'Shakes'),
              ],
            ),
          ),
          body: TabBarView(
            //tabbardakileri gösteren kısım
            children: [
              allPage(),
              breakfastPage(),
              branchPage(),
              dinnerPage(),
              shakesPage(),
            ],
          ),
        ));
  }

  buildItems(items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.only(bottom: 20),
          elevation: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: items[index]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(items[index]['title'],
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child:
                    Text(items[index]['text'], style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        );
      },
    );
  }

  allPage() {
    return Column(
      children: [
        Expanded(
          child: buildItems(items),
        ),
      ],
    );
  }

  breakfastPage() {
    List<Map?> Items = List.generate(
            items.length,
            (index) =>
                items[index]['category'] == 'breakfast' ? items[index] : null)
        .where((element) => element != null)
        .toList();

    return Column(
      children: [
        Expanded(
          child: buildItems(Items),
        ),
      ],
    );
  }

  branchPage() {
    List<Map?> Items = List.generate(
            items.length,
            (index) =>
                items[index]['category'] == 'lunch' ? items[index] : null)
        .where((element) => element != null)
        .toList();

    return Column(
      children: [
        Expanded(
          child: buildItems(Items),
        ),
      ],
    );
  }

  dinnerPage() {
    List<Map?> Items = List.generate(
            items.length,
            (index) =>
                items[index]['category'] == 'dinner' ? items[index] : null)
        .where((element) => element != null)
        .toList();

    return Column(
      children: [
        Expanded(
          child: buildItems(Items),
        ),
      ],
    );
  }

  shakesPage() {
    List<Map?> Items = List.generate(
            items.length,
            (index) =>
                items[index]['category'] == 'shakes' ? items[index] : null)
        .where((element) => element != null)
        .toList();

    return Column(
      children: [
        Expanded(
          child: buildItems(Items),
        ),
      ],
    );
  }
}
