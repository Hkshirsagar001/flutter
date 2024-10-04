import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  int quantityCount = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Shoes",
            style: TextStyle(
              color: Colors.purple[900],
            ),
          ),
          actions: [
            Icon(
              Icons.shopping_cart,
              color: Colors.purple[900],
            ),
            const Padding(padding: EdgeInsets.only(right: 20))
          ],
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9bpbRQu_RMP1O6NUDAxCEHypMv1vhdxJx-A&s",
                    fit: BoxFit.fill),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      child: Text(
                        "Nike Air Force 1'07 ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3)),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:WidgetStatePropertyAll(Colors.purple[900]),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "SHOES",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10)),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.purple[900]),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "FOOTWEAR",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: SizedBox(
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20)),
                      const Text(
                        "  Quantity",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            if (quantityCount > 1) {
                              setState(() {
                                quantityCount--;
                              });
                            }
                          },
                          child: const SizedBox(
                            width: 30,
                            height: 30,
                            child: Icon(Icons.remove),
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Center(
                          child: Text(
                            "$quantityCount",
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              quantityCount++;
                            });
                          },
                          child: const SizedBox(
                            width: 30,
                            height: 30,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 30),
                    child: SizedBox(
                      width: 340,
                      height: 60,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.purple[900]),
                        ),
                        onPressed: () {
                          // Add your purchase logic here
                        },
                        child: const Text(
                          "PURCHASE",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
