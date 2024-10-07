import 'package:flutter/material.dart';


void main() {
  runApp(const MyCart());
}

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State createState() => _MyCartState();
}

class _MyCartState extends State {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "My cart",
              style: TextStyle(
                fontSize: 28,
                color: Colors.deepPurple,
              ),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.arrow_back_ios,
            )),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,

          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            20.0), // Optional: for rounded corners
                        child: Container(
                          width: 120,
                          height: 120,
                          color: Colors.amber,
                          child: Image.asset(
                            "assets/footwear.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 65),
                              child: Text(
                                "Nike Shoes",
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 200,
                              height: 50,
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  "),
                            ),

                            Row(
                              children: [
                                const Text(
                                  "\$570.00",
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Icon(Icons.remove),
                                Container(
                                  width: 22,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                  child: const Text("  1"),
                                ),
                                const Icon(Icons.add),
                              ],
                            ), //inner row
                          ],
                        ), //inner column
                      )
                    ],
                  ),
                ), //outer row
              ),


              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            20.0), // Optional: for rounded corners
                        child: Container(
                          width: 120,
                          height: 120,
                          color: Colors.amber,
                          child: Image.asset(
                            "assets/footwear.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 65),
                              child: Text(
                                "Nike Shoes",
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 200,
                              height: 50,
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  "),
                            ),

                            Row(
                              children: [
                                const Text(
                                  "\$570.00",
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Icon(Icons.remove),
                                Container(
                                  width: 22,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                  child: const Text("  1"),
                                ),
                                const Icon(Icons.add),
                              ],
                            ), //inner row
                          ],
                        ), //inner column
                      )
                    ],
                  ),
                ), //outer row
              ),

             

              Container(
                height: 230,
                // color: Colors.amber,
              ),

               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Column(
                  children: [ 
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(  
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Text(
                            "Subtotal:",
                            style: TextStyle(  
                              fontSize: 20,color: Colors.grey,
                            ),),
                          Text(
                            "\$800.00", 
                            style: TextStyle( 
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ]
                      ),
                    ), 
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(  
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Text(
                            "Delivery Fees:",
                            style: TextStyle(  
                              fontSize: 20,color: Colors.grey,
                            ),),
                          Text(
                            "\$5.00", 
                            style: TextStyle( 
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ]
                      ),
                    ), 
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Row(  
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Text(
                            "Discount:",
                            style: TextStyle(  
                              fontSize: 20,color: Colors.grey,
                            ),),
                          Text(
                            "40%", 
                            style: TextStyle( 
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ]
                      ),
                    ), 
                    
                    Center( 
                      child: Container(
                        width:340 ,
                        height: 60,
                        child: ElevatedButton( 
                          onPressed: () {
                            
                          },
                          style:const ButtonStyle( 
                            backgroundColor: WidgetStatePropertyAll(Colors.deepPurple)
                          ),
                          child: const Text( 
                            "Checkedout for 480.00",
                            style: TextStyle( 
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ) 
                 
                  ],
                               ),
               ),
            ],
          ), //outer column
        ),
      ),
    );
  }
}
