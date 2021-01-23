import 'package:flutter/material.dart';
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

  double totalCash;
  int totalBiscuit, totalChips, totalOreo, totalTango, totalChocolate;

  @override
  void initState() {
    totalCash = 0;
    totalBiscuit = 5; totalChips = 5; totalOreo = 5; totalTango = 5; totalChocolate = 5;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 15,
              top: 35,
              right: 20,
              left: 20
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20
                  ),
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
                        child: Text(
                          ':  ' + Functions.showAmountStr(totalCash.toStringAsFixed(0)),
                          style: Theme.of(context).textTheme.headline6,
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
                                      onPressed: () => buyProduct(Constants.biscuit),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price + StrRes.sixThousands,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            StrRes.stock + totalBiscuit.toString(),
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
                                      onPressed: () => buyProduct(Constants.chips),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price + StrRes.eightThousands,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            StrRes.stock + totalChips.toString(),
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
                                      onPressed: () => buyProduct(Constants.oreo),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price + StrRes.tenThousands,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            StrRes.stock + totalOreo.toString(),
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
                                      onPressed: () => buyProduct(Constants.tango),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price + StrRes.twelveThousands,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            StrRes.stock + totalTango.toString(),
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
                                      onPressed: () => buyProduct(Constants.chocolate),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            StrRes.price + StrRes.fifteenThousands,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            StrRes.stock + totalChocolate.toString(),
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
                                  onPressed: () => takeChange(),
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
                  margin: EdgeInsets.only(
                    top: 25
                  ),
                  child: RaisedButton(
                    child: Text(StrRes.addStocks),
                    elevation: 5,
                    onPressed: () async{
                      await addStocks(context);
                      setState(() {});
                    }
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void buyProduct(int product){
    if(product == Constants.biscuit){
      if(totalCash < Constants.priceBiscuit){
        showingDialog(context, StrRes.buyFailed, StrRes.insufficientBalance);
      }else{
        if(totalBiscuit == 0){
          showingDialog(context, StrRes.buyFailed, StrRes.emptyProduct);
        }else{
          totalCash = totalCash - Constants.priceBiscuit;
          totalBiscuit --;
          setState(() {});
          showingDialog(context, StrRes.buySuccess, StrRes.takeProduct);
        }
      }
    }
    else if(product == Constants.chips){
      if(totalCash < Constants.priceChips){
        showingDialog(context, StrRes.buyFailed, StrRes.insufficientBalance);
      }else{
        if(totalChips == 0){
          showingDialog(context, StrRes.buyFailed, StrRes.emptyProduct);
        }else{
          totalCash = totalCash - Constants.priceChips;
          totalChips --;
          setState(() {});
          showingDialog(context, StrRes.buySuccess, StrRes.takeProduct);
        }
      }
    }
    else if(product == Constants.oreo){
      if(totalCash < Constants.priceOreo){
        showingDialog(context, StrRes.buyFailed, StrRes.insufficientBalance);
      }else{
        if(totalOreo == 0){
          showingDialog(context, StrRes.buyFailed, StrRes.emptyProduct);
        }else{
          totalCash = totalCash - Constants.priceOreo;
          totalOreo --;
          setState(() {});
          showingDialog(context, StrRes.buySuccess, StrRes.takeProduct);
        }
      }
    }
    else if(product == Constants.tango){
      if(totalCash < Constants.priceTango){
        showingDialog(context, StrRes.buyFailed, StrRes.insufficientBalance);
      }else{
        if(totalTango == 0){
          showingDialog(context, StrRes.buyFailed, StrRes.emptyProduct);
        }else{
          totalCash = totalCash - Constants.priceTango;
          totalTango --;
          setState(() {});
          showingDialog(context, StrRes.buySuccess, StrRes.takeProduct);
        }
      }
    }
    else if(product == Constants.chocolate){
      if(totalCash < Constants.priceChocolate){
        showingDialog(context, StrRes.buyFailed, StrRes.insufficientBalance);
      }else{
        if(totalChocolate == 0){
          showingDialog(context, StrRes.buyFailed, StrRes.emptyProduct);
        }else{
          totalCash = totalCash - Constants.priceChocolate;
          totalChocolate --;
          setState(() {});
          showingDialog(context, StrRes.buySuccess, StrRes.takeProduct);
        }
      }
    }
  }

  void chooseCash(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(StrRes.chooseCash) ,
          content: Container(
            height: 250,
            child: Column(
              children: [
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.twoThousands),
                    elevation: 5,
                    onPressed: () => addCash(Constants.twoThousand),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.fiveThousands),
                    elevation: 5,
                    onPressed: () => addCash(Constants.fiveThousand),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.tenThousands),
                    elevation: 5,
                    onPressed: () => addCash(Constants.tenThousand),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.twentyThousands),
                    elevation: 5,
                    onPressed: () => addCash(Constants.twentyThousand),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text(StrRes.fiftyThousands),
                    elevation: 5,
                    onPressed: () => addCash(Constants.fiftyThousand),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void addCash(double cash){
    totalCash = totalCash + cash;
    setState(() {});
    Navigator.pop(context);
  }

  void takeChange(){
    if(totalCash == 0){
      showingDialog(context, StrRes.error, StrRes.zeroBalance);
    }else{
      showingDialog(context, StrRes.takeChange, StrRes.takeChangeDesc + Functions.showAmountStr(totalCash.toStringAsFixed(0)));
      totalCash = 0;
      setState(() {});
    }
  }

  Future addStocks(BuildContext context) async {
    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (context, setState){
              return AlertDialog(
                title: Text(StrRes.addStocks) ,
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
                                  onTap: (){
                                    if(totalBiscuit > 0) totalBiscuit--;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.remove)
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, right: 5
                                  ),
                                  child: Text(
                                    totalBiscuit.toString(),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    totalBiscuit++;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.add)
                                      )
                                  ),
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
                                  onTap: (){
                                    if(totalChips > 0) totalChips--;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.remove)
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, right: 5
                                  ),
                                  child: Text(
                                    totalChips.toString(),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    totalChips++;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.add)
                                      )
                                  ),
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
                                  onTap: (){
                                    if(totalOreo > 0) totalOreo--;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.remove)
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, right: 5
                                  ),
                                  child: Text(
                                    totalOreo.toString(),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    totalOreo++;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.add)
                                      )
                                  ),
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
                                  onTap: (){
                                    if(totalTango > 0) totalTango--;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.remove)
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, right: 5
                                  ),
                                  child: Text(
                                    totalTango.toString(),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    totalTango++;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.add)
                                      )
                                  ),
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
                                  onTap: (){
                                    if(totalChocolate > 0) totalChocolate--;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.remove)
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, right: 5
                                  ),
                                  child: Text(
                                    totalChocolate.toString(),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    totalChocolate++;
                                    setState(() {});
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(Icons.add)
                                      )
                                  ),
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
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
        });
      },
    );
  }

  void showingDialog(BuildContext context, String titleText, String contentText, {Function btnPressed}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titleText),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Center(child: Text(contentText)),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(StrRes.ok),
              onPressed: (){
                Navigator.pop(context);
                if (btnPressed != null){
                  btnPressed();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
