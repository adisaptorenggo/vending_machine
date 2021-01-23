class Functions {
  static String showAmountStr(String amount) {
    return Functions.getDisplayAmountFormat('Rp', amount, ',', false, 2);
  }

  static String getDisplayAmountFormat(String currencySymbol, String amount,
      String separatorSymbol, bool useDecimal, int exponent) {
    //Handling Leading Zeros
    amount = amount.replaceFirst("^0+", "");

    String decimalGroupSymbol = (separatorSymbol == ",") ? "." : ",";
    // Format Input : 100000
    StringBuffer result = new StringBuffer();
    for (int i = 0; i < amount.length; i++) {
      result.write(amount[i]);
      if (((amount.length - i) % 3 == 1) && (i != (amount.length - 1))) {
        result.write(decimalGroupSymbol);
      }
    }

    String endResult = currencySymbol + " " + result.toString();
    if (useDecimal) {
      endResult += separatorSymbol + "".padLeft(exponent, '0');
    }
    return endResult;
  }
}
