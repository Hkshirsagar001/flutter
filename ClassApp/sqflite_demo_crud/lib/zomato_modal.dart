

class Zomato{ 

  final int orderNO ;
  final String custName; 
  final String hotelName; 
  final String food; 
  final double bill; 

  Zomato({ 
    required this.orderNO,
    required this.custName,
    required this.hotelName, 
    required this.food,
    required this.bill
   }); 


   // Function to return the key-value pair (Map)
  Map<String, dynamic> zomatoMap() {
    return {
      'orderNo': orderNO,
      'custName': custName,
      'hotelName': hotelName,
      'food': food,
      'bill': bill,
    };
  }
}