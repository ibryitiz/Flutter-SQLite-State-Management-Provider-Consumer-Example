import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/burgers/burger2.jpg", 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/burgers/burger2.jpg", 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/burgers/burger2.jpg", 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    //SALAD
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink1.jpg", 
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink2.jpg", 
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink3.jpg", 
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    

    // pizzas
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink1.jpg", 
      price: 0.99, 
      category: FoodCategory.pizzas, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink2.jpg", 
      price: 0.99, 
      category: FoodCategory.pizzas, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink3.jpg", 
      price: 0.99, 
      category: FoodCategory.pizzas, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
   
    //  DESSERT
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink1.jpg", 
      price: 0.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink2.jpg", 
      price: 0.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
   
    // DRİNKS
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink1.jpg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink2.jpg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink3.jpg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink4.jpg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger", 
      description: " A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
      imagePath: "assets/drinks/drink5.jpg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),

];

  /*

    G E T T E R S

  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
 

   /*
    O P E R A T I O N S
  */

  // user cart
 final List<CartItem> _cart = [];


  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons){
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null){
      cartItem.quantity++;
    } else{
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();

  }

  // remove from card

  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }


  // get total price of cart
  double gettotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }


  // get total number of items in cart

  int getTotalItemCount(){
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }


  /*

     H E L P E R S

  */


  // generate a receipt
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
     String formattedDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

     receipt.writeln(formattedDate);
     receipt.writeln();
     receipt.writeln("-----------------");

     for (final cartItem in _cart) {
       receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

       if (cartItem.selectedAddons.isNotEmpty) {
         receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
       }
       receipt.writeln();
     }

    receipt.writeln("-----------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(gettotalPrice())}");


    return receipt.toString();
  }


  // format double value into money
  String _formatPrice(double price){
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => 
      "${addon.name} (${_formatPrice(addon.price)})").join(", ");
  }
}