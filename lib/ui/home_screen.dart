import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vending_machine/cubit/vending_cubit.dart';
import 'package:vending_machine/utils/constant.dart';
import 'package:vending_machine/utils/function.dart';
import 'package:vending_machine/utils/str_resource.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15, top: 35, right: 20, left: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          StrRes.balance,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      Container(
                        child: BlocBuilder<VendingCubit, VendingState>(
                          builder: (context, state) {
                            return Text(
                              Functions.showAmountStr(
                                  state.balance.toStringAsFixed(0)),
                              style: Theme.of(context).textTheme.headline6,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: RaisedButton(
                                      child: Text(StrRes.biscuit),
                                      elevation: 5,
                                      onPressed: () => onPressedBuyProduct(
                                          Constants.biscuit),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price + StrRes.sixThousands,
                                          ),
                                        ),
                                        Container(
                                          child: BlocBuilder<VendingCubit,
                                              VendingState>(
                                            builder: (context, state) {
                                              return Text(
                                                StrRes.stock +
                                                    state.totalBiscuit
                                                        .toString(),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: RaisedButton(
                                      child: Text(StrRes.chips),
                                      elevation: 5,
                                      onPressed: () =>
                                          onPressedBuyProduct(Constants.chips),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price +
                                                StrRes.eightThousands,
                                          ),
                                        ),
                                        Container(
                                          child: BlocBuilder<VendingCubit,
                                              VendingState>(
                                            builder: (context, state) {
                                              return Text(
                                                StrRes.stock +
                                                    state.totalChips.toString(),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: RaisedButton(
                                      child: Text(StrRes.oreo),
                                      elevation: 5,
                                      onPressed: () =>
                                          onPressedBuyProduct(Constants.oreo),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price + StrRes.tenThousands,
                                          ),
                                        ),
                                        Container(
                                          child: BlocBuilder<VendingCubit,
                                              VendingState>(
                                            builder: (context, state) {
                                              return Text(
                                                StrRes.stock +
                                                    state.totalOreo.toString(),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: RaisedButton(
                                      child: Text(StrRes.tango),
                                      elevation: 5,
                                      onPressed: () =>
                                          onPressedBuyProduct(Constants.tango),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price +
                                                StrRes.twelveThousands,
                                          ),
                                        ),
                                        Container(
                                          child: BlocBuilder<VendingCubit,
                                              VendingState>(
                                            builder: (context, state) {
                                              return Text(
                                                StrRes.stock +
                                                    state.totalTango.toString(),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: RaisedButton(
                                      child: Text(StrRes.chocolate),
                                      elevation: 5,
                                      onPressed: () => onPressedBuyProduct(
                                          Constants.chocolate),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price +
                                                StrRes.fifteenThousands,
                                          ),
                                        ),
                                        Container(
                                          child: BlocBuilder<VendingCubit,
                                              VendingState>(
                                            builder: (context, state) {
                                              return Text(
                                                StrRes.stock +
                                                    state.totalChocolate
                                                        .toString(),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: RaisedButton(
                                  child: Text(StrRes.enterCash),
                                  elevation: 5,
                                  onPressed: () => chooseCash(context),
                                ),
                              ),
                              Container(
                                child: RaisedButton(
                                  child: Text(StrRes.takeChange),
                                  elevation: 5,
                                  onPressed: () => onPressedTakeChange(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: RaisedButton(
                      child: Text(StrRes.addStocks),
                      elevation: 5,
                      onPressed: () async {
                        await onPressedAddStocks(context);
                        setState(() {});
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onPressedBuyProduct(int product) {
    if (product == Constants.biscuit) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: BlocBuilder<VendingCubit, VendingState>(
              builder: (context, state) {
                if (state.balance < Constants.priceBiscuit ||
                    state.totalBiscuit == 0)
                  return Text(StrRes.buyFailed);
                else
                  return Text(StrRes.buySuccess);
              },
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Center(child: BlocBuilder<VendingCubit, VendingState>(
                    builder: (context, state) {
                      if (state.balance < Constants.priceBiscuit)
                        return Text(StrRes.insufficientBalance);
                      else if (state.totalBiscuit == 0)
                        return Text(StrRes.emptyProduct);
                      else
                        return Text(StrRes.takeProduct);
                    },
                  )),
                ],
              ),
            ),
            actions: <Widget>[
              BlocBuilder<VendingCubit, VendingState>(
                builder: (context, state) {
                  if (state.balance < Constants.priceBiscuit ||
                      state.totalBiscuit == 0)
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                  else
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        BlocProvider.of<VendingCubit>(context)
                            .substractBalance(Constants.biscuit);
                        BlocProvider.of<VendingCubit>(context)
                            .substractStock(Constants.biscuit);
                        Navigator.pop(context);
                      },
                    );
                },
              ),
            ],
          );
        },
      );
    } else if (product == Constants.chips) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: BlocBuilder<VendingCubit, VendingState>(
              builder: (context, state) {
                if (state.balance < Constants.priceChips ||
                    state.totalChips == 0)
                  return Text(StrRes.buyFailed);
                else
                  return Text(StrRes.buySuccess);
              },
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Center(child: BlocBuilder<VendingCubit, VendingState>(
                    builder: (context, state) {
                      if (state.balance < Constants.priceChips)
                        return Text(StrRes.insufficientBalance);
                      else if (state.totalChips == 0)
                        return Text(StrRes.emptyProduct);
                      else
                        return Text(StrRes.takeProduct);
                    },
                  )),
                ],
              ),
            ),
            actions: <Widget>[
              BlocBuilder<VendingCubit, VendingState>(
                builder: (context, state) {
                  if (state.balance < Constants.priceChips ||
                      state.totalChips == 0)
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                  else
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        BlocProvider.of<VendingCubit>(context)
                            .substractBalance(Constants.chips);
                        BlocProvider.of<VendingCubit>(context)
                            .substractStock(Constants.chips);
                        Navigator.pop(context);
                      },
                    );
                },
              ),
            ],
          );
        },
      );
    } else if (product == Constants.oreo) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: BlocBuilder<VendingCubit, VendingState>(
              builder: (context, state) {
                if (state.balance < Constants.priceOreo || state.totalOreo == 0)
                  return Text(StrRes.buyFailed);
                else
                  return Text(StrRes.buySuccess);
              },
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Center(child: BlocBuilder<VendingCubit, VendingState>(
                    builder: (context, state) {
                      if (state.balance < Constants.priceOreo)
                        return Text(StrRes.insufficientBalance);
                      else if (state.totalOreo == 0)
                        return Text(StrRes.emptyProduct);
                      else
                        return Text(StrRes.takeProduct);
                    },
                  )),
                ],
              ),
            ),
            actions: <Widget>[
              BlocBuilder<VendingCubit, VendingState>(
                builder: (context, state) {
                  if (state.balance < Constants.priceOreo ||
                      state.totalOreo == 0)
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                  else
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        BlocProvider.of<VendingCubit>(context)
                            .substractBalance(Constants.oreo);
                        BlocProvider.of<VendingCubit>(context)
                            .substractStock(Constants.oreo);
                        Navigator.pop(context);
                      },
                    );
                },
              ),
            ],
          );
        },
      );
    } else if (product == Constants.tango) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: BlocBuilder<VendingCubit, VendingState>(
              builder: (context, state) {
                if (state.balance < Constants.priceTango ||
                    state.totalTango == 0)
                  return Text(StrRes.buyFailed);
                else
                  return Text(StrRes.buySuccess);
              },
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Center(child: BlocBuilder<VendingCubit, VendingState>(
                    builder: (context, state) {
                      if (state.balance < Constants.priceTango)
                        return Text(StrRes.insufficientBalance);
                      else if (state.totalTango == 0)
                        return Text(StrRes.emptyProduct);
                      else
                        return Text(StrRes.takeProduct);
                    },
                  )),
                ],
              ),
            ),
            actions: <Widget>[
              BlocBuilder<VendingCubit, VendingState>(
                builder: (context, state) {
                  if (state.balance < Constants.priceTango ||
                      state.totalTango == 0)
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                  else
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        BlocProvider.of<VendingCubit>(context)
                            .substractBalance(Constants.tango);
                        BlocProvider.of<VendingCubit>(context)
                            .substractStock(Constants.tango);
                        Navigator.pop(context);
                      },
                    );
                },
              ),
            ],
          );
        },
      );
    } else if (product == Constants.chocolate) {
      showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: BlocBuilder<VendingCubit, VendingState>(
              builder: (context, state) {
                if (state.balance < Constants.priceChocolate ||
                    state.totalChocolate == 0)
                  return Text(StrRes.buyFailed);
                else
                  return Text(StrRes.buySuccess);
              },
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Center(child: BlocBuilder<VendingCubit, VendingState>(
                    builder: (context, state) {
                      if (state.balance < Constants.priceChocolate)
                        return Text(StrRes.insufficientBalance);
                      else if (state.totalChocolate == 0)
                        return Text(StrRes.emptyProduct);
                      else
                        return Text(StrRes.takeProduct);
                    },
                  )),
                ],
              ),
            ),
            actions: <Widget>[
              BlocBuilder<VendingCubit, VendingState>(
                builder: (context, state) {
                  if (state.balance < Constants.priceChocolate ||
                      state.totalChocolate == 0)
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                  else
                    return FlatButton(
                      child: Text(StrRes.ok),
                      onPressed: () {
                        BlocProvider.of<VendingCubit>(context)
                            .substractBalance(Constants.chocolate);
                        BlocProvider.of<VendingCubit>(context)
                            .substractStock(Constants.chocolate);
                        Navigator.pop(context);
                      },
                    );
                },
              ),
            ],
          );
        },
      );
    }
  }

  void chooseCash(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(StrRes.chooseCash),
          content: Container(
            height: 250,
            child: Column(
              children: [
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.twoThousands),
                    elevation: 5,
                    onPressed: () => onPressedAddCash(Constants.twoThousand),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.fiveThousands),
                    elevation: 5,
                    onPressed: () => onPressedAddCash(Constants.fiveThousand),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.tenThousands),
                    elevation: 5,
                    onPressed: () => onPressedAddCash(Constants.tenThousand),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.twentyThousands),
                    elevation: 5,
                    onPressed: () => onPressedAddCash(Constants.twentyThousand),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.fiftyThousands),
                    elevation: 5,
                    onPressed: () => onPressedAddCash(Constants.fiftyThousand),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void onPressedAddCash(double cash) {
    BlocProvider.of<VendingCubit>(context).addBalance(cash);
    // totalCash = totalCash + cash;
    // setState(() {});
    Navigator.pop(context);
  }

  void onPressedTakeChange() {
    showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(StrRes.takeChange),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Center(child: BlocBuilder<VendingCubit, VendingState>(
                    builder: (context, state) {
                      if (state.zeroBalance)
                        return Text(StrRes.zeroBalance);
                      else
                        return Text(
                          StrRes.takeChangeDesc +
                              Functions.showAmountStr(
                                  state.balance.toStringAsFixed(0)),
                        );
                    },
                  )),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text(StrRes.ok),
                onPressed: () {
                  BlocProvider.of<VendingCubit>(context).takeBalance();
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
    // if (totalCash == 0) {
    //   showingDialog(context, StrRes.error, StrRes.zeroBalance);
    // } else {
    //   showingDialog(
    //       context,
    //       StrRes.takeChange,
    //       StrRes.takeChangeDesc +
    //           Functions.showAmountStr(totalCash.toStringAsFixed(0)));
    //   totalCash = 0;
    //   setState(() {});
    // }
  }

  Future onPressedAddStocks(BuildContext context) async {
    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(StrRes.addStocks),
          content: Container(
            height: 170,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(StrRes.biscuit + ': '),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // if (totalBiscuit > 0) totalBiscuit--;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .substractStock(Constants.biscuit);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.remove))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: BlocBuilder<VendingCubit, VendingState>(
                              builder: (context, state) {
                                return Text(
                                  state.totalBiscuit.toString(),
                                );
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // totalBiscuit++;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.biscuit);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.add))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(StrRes.chips + ': '),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // if (totalChips > 0) totalChips--;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.chips);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.remove))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: BlocBuilder<VendingCubit, VendingState>(
                              builder: (context, state) {
                                return Text(
                                  state.totalChips.toString(),
                                );
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // totalChips++;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.chips);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.add))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(StrRes.oreo + ': '),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // if (totalOreo > 0) totalOreo--;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.oreo);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.remove))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: BlocBuilder<VendingCubit, VendingState>(
                              builder: (context, state) {
                                return Text(
                                  state.totalOreo.toString(),
                                );
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // totalOreo++;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.oreo);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.add))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(StrRes.tango + ': '),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // if (totalTango > 0) totalTango--;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.tango);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.remove))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: BlocBuilder<VendingCubit, VendingState>(
                              builder: (context, state) {
                                return Text(
                                  state.totalTango.toString(),
                                );
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // totalTango++;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.tango);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.add))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(StrRes.chocolate + ': '),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // if (totalChocolate > 0) totalChocolate--;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.chocolate);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.remove))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: BlocBuilder<VendingCubit, VendingState>(
                              builder: (context, state) {
                                return Text(
                                  state.totalChocolate.toString(),
                                );
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // totalChocolate++;
                              // setState(() {});
                              BlocProvider.of<VendingCubit>(context)
                                  .addStock(Constants.chocolate);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.add))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(StrRes.done),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
