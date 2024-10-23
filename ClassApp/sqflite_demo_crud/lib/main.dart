import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'zomato_modal.dart';


dynamic globalDatabase;
dynamic dataEntryID;  

void main()async{  

  // DATABASE CONFIGURATION  -- DATABASE CREATION
  WidgetsFlutterBinding.ensureInitialized();
  globalDatabase = await openDatabase( 
   join(await getDatabasesPath(),"zomatoDB.db"),
   version: 1,
   onCreate: (db, version) {
     db.execute( 
      ''' 
        CREATE TABLE food( 

          orderNo INT PRIMARY KEY, 
          custName TEXT,
          hotelName TEXT,
          food TEXT,
          bill REAL
        )
      '''
     );
   }
  ); 

  // print("globalDatabase : $globalDatabase"); 


  // INSERT DATA IN DATABASE

  void insertOrderData(Zomato obj) async{  

    Database localDB = await globalDatabase; 
    // print(" localDB : $localDB"); 

    dataEntryID = await localDB.insert( 
      
      "food",  
      obj.zomatoMap(), 
      conflictAlgorithm: ConflictAlgorithm.replace
    );

    print("Data insertated sucesfully ----------------------- -----------------------");
    print("ID :$dataEntryID");
  }    


  // SHOW DATA IN DATABASE 

  Future<List<Map<String, dynamic>>> getOrderData()async{  

      Database localDB = await globalDatabase; 

     List<Map<String, dynamic>> orderMap = await localDB.query("food");
     
     return orderMap;
  }


  // UPDATE DATA IN DATABASE
  void updateOrder(Zomato obj)async{ 
    
    Database localDB = await globalDatabase;

    dataEntryID= await localDB.update( 
    "food", 
     obj.zomatoMap(), 
     where: "orderNo = ?",
     whereArgs: [obj.orderNO] 
    ); 

    print("data updated sucesfully ----------------------- -----------------------");
  }
  // DELETE DATA IN DATABASE

  deleteOrderData(Zomato obj )async{ 

      Database localDB = await globalDatabase;

      localDB.delete(  

        "food",
        where: "orderNo = ?", 
        whereArgs: [obj.orderNO]
      );

      print("order deleted sucesfully ----------------------- -----------------------"); 
  }
 

  // ORDER DATA ENTERY

  Zomato order1 = Zomato( 
    orderNO: 100, 
    custName: "ROhit", 
    hotelName: "Dominos", 
    food: "Panner tikka pizza, chicken BBQ pizza, D cheese Volcano Pizza", 
     bill: 98.30
    
  ); 

  Zomato order2 = Zomato( 
    orderNO: 120, 
    custName: "Mahadev", 
    hotelName: "Maratha hotel", 
    food: "Kaju Paneer, tandori Butter Nan", 
     bill: 228.73
    
  ) ;

  // CALLING INSERT FUNCTION 

  insertOrderData(order1); 
  insertOrderData(order2);    


 print(await getOrderData());


  //CALLING UPDATE FUNCTION  

  order1 = Zomato( 
    orderNO: 100, 
    custName: "ROhit", 
    hotelName: "Dominos", 
    food: "${order1.food} ,coldrink, Red velvet Cake", 
     bill: 98.30 +110
    
  ); 
   updateOrder(order1);
   print(await getOrderData()); 


  // CALLING DELETE FUNCTION

  deleteOrderData(order1);
  print(await getOrderData());

}