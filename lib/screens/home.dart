import 'package:arts/Controller/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myhomepage extends StatelessWidget {
  const myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active),
            )
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan, Colors.indigo, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 239, 196, 247),
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                child: Text('Drawer Header'),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  // do something
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  // do something
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                height: 60,
                decoration: const BoxDecoration(),
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 227, 226, 226)),
                      ),
                      onPressed: () {
                        showSearch(
                            context: context,
                            // delegate to customize the search bar
                            delegate: CustomSearchDelegate());
                      },
                      child: const Text(
                        'Search...',
                        style: TextStyle(fontSize: 17, color: Colors.black45),
                      ),
                    )),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        showSearch(
                            context: context,
                            // delegate to customize the search bar
                            delegate: CustomSearchDelegate());
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 163,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      border: Border.all(
                          color: const Color.fromARGB(255, 243, 242, 242),
                          width: 3.0,
                          style: BorderStyle.solid),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          offset: Offset(
                            5.0,
                            10.0,
                          ),
                          blurRadius: 30.0,
                          spreadRadius: 0.5,
                        ),
                      ]),
                  child: Image.asset(
                    'assets/images/Logo.jpg',
                    height: 164,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                          onPressed: () {
                            Get.toNamed(Routes.PAGES);
                          },
                          child: const Text(
                            'Recommended',
                            style: TextStyle(color: Colors.black54),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            'Recommended',
                            style: TextStyle(color: Colors.black54),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            'Recommended',
                            style: TextStyle(color: Colors.black54),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            'Recommended',
                            style: TextStyle(color: Colors.black54),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'assets/images/4.jpg',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'assets/images/4.jpg',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(),
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/images/4.jpg',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/images/4.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(),
                    width: 200,
                    height: 200,
                    child: Image.network(
                      'assets/images/4.jpg',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/images/4.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(),
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/images/4.jpg',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/images/4.jpg',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
