// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Coffee Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String total = "0";
  int _rating = 0;
  Order order = orders.first;
  void updatename(Order c) {
    setState(() {
      order = c;
      total = order.getTotalPrice();
    });
  }

  @override
  void initState() {
    super.initState();
    total = order.getTotalPrice();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.local_cafe,
          size: 25,
          color: Color.fromARGB(255, 245, 238, 226),
        ),
        backgroundColor: Color.fromARGB(255, 159, 125, 113),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Color.fromARGB(255, 245, 238, 226),
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Menu',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              
            ],
          ),
          // Latte
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 238, 226),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/latte.jpg'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Latte',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Creamy espresso with milk',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "3.5\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Cappuccino
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 238, 226),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/capp.jpg'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cappuccino',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Espresso with steamed milk and thick froth.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "2.5\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Mocha
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 238, 226),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/mocha.jpg'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mocha',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Espresso mixed with hot chocolate and steamed milk.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "3\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Americano
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 238, 226),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/americano.jpg'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Americano',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Espresso diluted with hot water for a milder coffee flavor.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "2\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Turkish Coffee
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 238, 226),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/turkish.jpg'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Turkish Coffee',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Finely ground coffee brewed with sugar and spice.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "3\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // cold brew
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 238, 226),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/ice.jpg'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cold Brew',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Smooth coffee brewed slowly with cold water.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "1.5\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          // Order
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 159, 125, 113),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Now",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 245, 238, 226),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Select Item",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: 300,
                  child: DropdownMenu(
                    onSelected: (item) {
                      updatename(item!);
                    },
                    initialSelection: orders[0],
                    dropdownMenuEntries: orders
                        .map<DropdownMenuEntry<Order>>((Order choosenorder) {
                      return DropdownMenuEntry(
                        value: choosenorder,
                        label: choosenorder.toString(),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Quantity",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Quantity',
                    ),
                    onChanged: (value) {
                      setState(() {
                        order.quantity = double.tryParse(value) ?? 0;
                        total = order.getTotalPrice();
                      });
                    },
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      "Delivery",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Checkbox(
                      value: order.delivery,
                      onChanged: (bool? value) {
                        setState(() {
                          order.delivery = value ?? false;
                          total = order.getTotalPrice();
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Total Price: \$ $total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Order Confirmation"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Type: ${order.name}"),
                                Text("Quantity: ${order.quantity}"),
                                Text("Price: \$${order.getTotalPrice()}"),
                                SizedBox(height: 16),
                                Text(
                                  "Thank you for your order!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("Place Order"),
                  ),
                ),
              ],
            ),
          ),
          // rating
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Average Rating:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 13),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: Icon(
                        index < _rating ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                        size: 30,
                      ),
                      onPressed: () {
                        setState(() {
                          _rating = index + 1;
                        });
                      },
                    );
                  }),
                ),
                SizedBox(width: 13),
                Text(
                  " $_rating",
                ),
              ],
            ),
          ),
          // facts
          Text(
            'Interesting Facts',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 159, 125, 113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Boosts Mood and Creativity :",
                        style: TextStyle(
                          color: Color.fromARGB(255, 245, 238, 226),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                          height: 10), // Add spacing between title and content
                      Text(
                        'Coffee contains caffeine, which boosts dopamine levels, improving mood and enhancing creativity. A cup before a creative session can help you think more innovatively.',
                        style: TextStyle(fontSize: 16), // Increase font size
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 159, 125, 113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "May Extend Lifespan :",
                        style: TextStyle(
                          color: Color.fromARGB(255, 245, 238, 226),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Studies have shown that regular coffee consumption is associated with a reduced risk of chronic diseases like diabetes and heart disease, which could contribute to a longer life.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 159, 125, 113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Improve fitness:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color.fromARGB(255, 245, 238, 226),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Drinking coffee before exercise can enhance physical performance by improving endurance and reducing feelings of fatigue during workouts.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 159, 125, 113),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Improves Memory :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color.fromARGB(255, 245, 238, 226),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Coffee enhances cognitive performance and improves short-term memory. If you are studying or preparing for a task that requires focus, a cup of coffee can be your perfect ally!',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          //footer
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 159, 125, 113),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Follow us on Social Media",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 245, 238, 226),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.facebook,
                                  color: Color.fromARGB(255, 245, 238, 226)),
                              SizedBox(width: 10),
                              Icon(Icons.link,
                                  color: Color.fromARGB(255, 245, 238, 226)),
                              SizedBox(width: 10),
                              Icon(Icons.email,
                                  color: Color.fromARGB(255, 245, 238, 226)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 245, 238, 226),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Lebanon',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 245, 238, 226)
                                  .withOpacity(0.7),
                            ),
                          ),
                          Text(
                            'Phone: +961 123456',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 245, 238, 226)
                                  .withOpacity(0.7),
                            ),
                          ),
                          Text(
                            'Email: info@example.com',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 245, 238, 226)
                                  .withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                    color: Color.fromARGB(255, 245, 238, 226).withOpacity(0.5)),
                Center(
                  child: Text(
                    '© 2024 Your Company Name. All rights reserved.',
                    style: TextStyle(
                      color:
                          Color.fromARGB(255, 245, 238, 226).withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
