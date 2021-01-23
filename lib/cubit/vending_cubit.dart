import 'package:bloc/bloc.dart';
import 'package:vending_machine/utils/constant.dart';

part 'vending_state.dart';

class VendingCubit extends Cubit<VendingState> {
  VendingCubit()
      : super(VendingState(
          balance: 0,
          zeroBalance: true,
          totalBiscuit: 5,
          totalChips: 5,
          totalOreo: 5,
          totalTango: 5,
          totalChocolate: 5,
        ));

  void addBalance(double cash) => emit(VendingState(
        balance: state.balance + cash,
        zeroBalance: false,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));

  void takeBalance() => emit(VendingState(
        balance: 0,
        zeroBalance: true,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));

  void addStock(int product) {
    if (product == Constants.biscuit)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit + 1,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.chips)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips + 1,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.oreo)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo + 1,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.tango)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango + 1,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.chocolate)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate + 1,
      ));
  }

  void substractStock(int product) {
    if (product == Constants.biscuit) if (state.totalBiscuit != 0)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit - 1,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.chips) if (state.totalChips != 0)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips - 1,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.oreo) if (state.totalOreo != 0)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo - 1,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.tango) if (state.totalTango != 0)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango - 1,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.chocolate) if (state.totalChocolate != 0)
      emit(VendingState(
        balance: state.balance,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate - 1,
      ));
  }

  void substractBalance(int product) {
    if (product == Constants.biscuit)
      emit(VendingState(
        balance: state.balance - Constants.priceBiscuit,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.chips)
      emit(VendingState(
        balance: state.balance - Constants.priceChips,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.oreo)
      emit(VendingState(
        balance: state.balance - -Constants.priceOreo,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.tango)
      emit(VendingState(
        balance: state.balance - -Constants.priceTango,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
    else if (product == Constants.chocolate)
      emit(VendingState(
        balance: state.balance - Constants.priceChocolate,
        zeroBalance: state.zeroBalance,
        totalBiscuit: state.totalBiscuit,
        totalChips: state.totalChips,
        totalOreo: state.totalOreo,
        totalTango: state.totalTango,
        totalChocolate: state.totalChocolate,
      ));
  }
}
