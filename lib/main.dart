import 'package:flutter/material.dart';

void main() {
  runApp(const Shboul());
}

class Shboul extends StatelessWidget {
  const Shboul({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List myProduct = [
    "Iphone 12",
    "Iphone 12 pro",
    " s22 Ultra",
    "Iphone 13 pro max"
  ];
  List myPrice = ["550", "600", "790", "1025"];
  List mypriceWithDiscoun = ["490", "530", "700", "960"];

  List networkimage = [
    NetworkImage(
        "https://th.bing.com/th/id/OIP.ibQfthUyrA53uPISjzZ8CwHaHa?w=209&h=209&c=7&r=0&o=5&pid=1.7"),
    NetworkImage(
        "https://th.bing.com/th/id/OIP.bymqXS6LVweIIDgXfHQVvQHaHa?w=166&h=180&c=7&r=0&o=5&pid=1.7"),
    NetworkImage(
        "https://th.bing.com/th/id/OIP.KR7cGGQpUm12V4q2LmJMxgHaFZ?w=237&h=180&c=7&r=0&o=5&pid=1.7"),
    NetworkImage(
        "https://th.bing.com/th/id/OIP.SIlqrPXqd1EXFISH0j414AHaJx?w=138&h=183&c=7&r=0&o=5&pid=1.7")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.grey, Colors.white, Colors.pink])),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int i) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                        icon: Icon(
                          Icons.add,
                        ),
                        label: Text(
                          "add to cart",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          setState(() {
                            myProduct[i] += "  Add to cart";
                          });
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      isThreeLine: true,
                      title: Text(
                        "${myProduct[i]}",
                        style: TextStyle(color: Colors.purple, fontSize: 30),
                      ),
                      subtitle: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "${myPrice[i]}",
                                  style: TextStyle(
                                      fontSize: 25,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${mypriceWithDiscoun[i]}",
                                  style: TextStyle(
                                    fontSize: 37,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      leading: Image(image: networkimage[i]),
                      trailing: MaterialButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            myProduct[i] += "add to favorite ";
                          });
                        },
                        child: Icon(Icons.favorite),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
