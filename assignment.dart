// total price of items


void main(){
  List<double> prices = [10.99, 5.49, 3.75, 12.00, 7.25];

  double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
    double subtotal = prices.reduce((sum, price) => sum + price);
    return subtotal + (subtotal * taxRate);

  }

  print("Subtotal: \$${calculateTotal(prices).toStringAsFixed(2)}");
  print("Total with tax: \$${calculateTotal(prices, taxRate: 0.15).toStringAsFixed(2)}");


  // anonymous function to filter prices under $10
  var filteredPrices = prices.where((price) => price < 10).toList();
  print("Filtered prices (under \$10): ${filteredPrices}");

  // discount function
  double discount() => 0.1; // 10% discount

  double applyDiscount(List<double> prices, double discount()) {
    double subtotal = prices.reduce((sum, price) => sum + price);
    return subtotal - (subtotal * discount());
  }

  print("Total after discount: \$${applyDiscount(prices, discount).toStringAsFixed(2)}");

  // recursive Function to calculate factorial discount
  double calculateFactorialDiscount(int n) {
    if (n <= 1) return 1.0;
    return n * calculateFactorialDiscount(n - 1);
  }


  //applying recursive factorial discount
  double subtotal = prices.reduce((sum, price) => sum + price);  // recalculating subtotal

  int itemCount = prices.length;
  double factorialDiscount = calculateFactorialDiscount(itemCount);
  double finalTotal = subtotal - (subtotal * factorialDiscount / 100);
  

  print("\nSpecial discount based on $itemCount items (${factorialDiscount.toStringAsFixed(2)}%)");
  print("Final total: \$${finalTotal.toStringAsFixed(2)}");


}