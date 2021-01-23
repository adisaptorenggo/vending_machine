part of 'vending_cubit.dart';

class VendingState {
  double balance;
  bool zeroBalance;
  int totalBiscuit;
  int totalChips;
  int totalOreo;
  int totalTango;
  int totalChocolate;

  VendingState({
    this.balance,
    this.zeroBalance,
    this.totalBiscuit,
    this.totalChips,
    this.totalOreo,
    this.totalTango,
    this.totalChocolate,
  });
}
