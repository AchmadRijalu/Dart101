import "dart:io";

bool check = true;
var shopcart = new Map();
void main(List<String> args) {
  while (check) {
    stdout.writeln("===================");
    stdout.writeln("Point of Sales (PoS)");
    stdout.writeln("===================");

    stdout.writeln("Options:");
    print("[1] Buy Food");
    print("[2] Shopping cart");
    print("[3] Exit");

    stdout.writeln("Your choice?");
    var choice = num.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Hi, we have 5 food & Beverage options for you!");
      print("==================================================");

      print("[F03] Gado-Gado");
      print("[F02] Chicken Satay");
      print("[F01] Nasi Padang");
      print("[B02] Mineral Water");
      print("[B01] Ice Tea");
      print("[Q] Back to Main menu");

      stdout.writeln("Your F&B Choice?");
      var userchoice = stdin.readLineSync()!.toUpperCase();

      if (userchoice == "F03") {
        String item = "Gado-Gado";
        stdout.writeln("How many \"Gado-Gado\" you want to buy? ");
        var count = num.parse(stdin.readLineSync()!);

        if (shopcart.containsKey(item)) {
          shopcart[item] += count;
        } else {
          shopcart[item] = count;
          print("Your shopping cart :");

          for (var i in shopcart.entries) {
            var key = i.key;
            var value = i.value;
            print("$value $key");
          }
        }
      } else if (userchoice == "F02") {
        String item = "Chicken Satay";
        stdout.writeln("How many \"Chicken Satay\" you want to buy? ");
        var count = num.parse(stdin.readLineSync()!);

        if (shopcart.containsKey(item)) {
          shopcart[item] += count;
        } else {
          shopcart[item] = count;
          print("Your shopping cart :");

          for (var i in shopcart.entries) {
            var key = i.key;
            var value = i.value;
            print("$value $key");
          }
        }
      } else if (userchoice == "F01") {
        String item = "Nasi Padang";
        stdout.writeln("How many \"Nasi Padang\" you want to buy? ");
        var count = num.parse(stdin.readLineSync()!);

        if (shopcart.containsKey(item)) {
          shopcart[item] += count;
        } else {
          shopcart[item] = count;
          print("Your shopping cart :");

          for (var i in shopcart.entries) {
            var key = i.key;
            var value = i.value;
            print("$value $key");
          }
        }
      } else if (userchoice == "B02") {
        String item = "Mineral Water";
        stdout.writeln("How many \"Mineral Water\" you want to buy? ");
        var count = num.parse(stdin.readLineSync()!);

        if (shopcart.containsKey(item)) {
          shopcart[item] += count;
        } else {
          shopcart[item] = count;
          print("Your shopping cart :");

          for (var i in shopcart.entries) {
            var key = i.key;
            var value = i.value;
            print("$value $key");
          }
        }
      } else if (userchoice == "B01") {
        String item = "Ice Tea";
        stdout.writeln("How many \"Ice Tea\" you want to buy? ");
        var count = num.parse(stdin.readLineSync()!);

        if (shopcart.containsKey(item)) {
          shopcart[item] += count;
        } else {
          shopcart[item] = count;
          print("Your shopping cart :");

          for (var i in shopcart.entries) {
            var key = i.key;
            var value = i.value;
            print("$value $key");
          }
        }
      } else if (userchoice == "Q") {
        print("Kembali");
      } else {
        print("Tidak ada dalam daftar");
      }
    } else if (choice == 2) {
      print("Your shopping Cart : ");
      if (shopcart.isEmpty) {
        print("Your cart is empty");
      } else {
        for (var i in shopcart.entries) {
          var key = i.key;
          var value = i.value;
          print("$value $key");
        }
      }
    } else if (choice == 3) {
      print("Terima Kasih dan Sampai Jumpa!");
      break;
    }
  }
}
