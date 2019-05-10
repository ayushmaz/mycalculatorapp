import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      color: Colors.green[600],
      home: new CalculatorPage()
    );
  }
}


class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  var num1 = 0 , num2= 0 , sum = 0;
  
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  
  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }


  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1-num2;
    });
  }

  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1*num2;
    });
  }

  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1~/num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Center(child: Text("CALCULATOR" , style: TextStyle(color: Colors.lime[100],
          fontSize: 30.0 ,
           fontFamily: 'CinzelDecorative'),
        )),
        backgroundColor: Colors.deepPurpleAccent,


        
      ),
      body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(image: AssetImage("assets/maths.jpg"),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,),
            Container(
              padding: EdgeInsets.all(16.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: new Text("OUTPUT : $sum "  , style: TextStyle(color: Colors.lightGreenAccent,fontSize: 25.0 , fontWeight: FontWeight.bold),),
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    controller: t1,
                    style: TextStyle(fontSize: 25.0 , color: Colors.white),
                    decoration: InputDecoration(
                        labelText: "Enter number 1",labelStyle: TextStyle(fontSize: 25.0,color: Colors.yellow[500]),
                        hintText: "0",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: new TextField(
                      keyboardType: TextInputType.number,
                      controller: t2,
                      style: TextStyle(fontSize: 25.0 , color: Colors.white),

                      decoration: InputDecoration(
                          labelText: "Enter number 2",labelStyle: TextStyle(fontSize: 25.0,color: Colors.yellow[500]),
                          hintText: "0",

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          )

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:40.0,right:40.0),
                          child: RaisedButton(
                            onPressed: doAddition,
                            color: Colors.yellow[500],
                            child: Icon(Icons.add, size: 30.0,),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            child: Icon(Icons.remove, size: 30.0,),
                            color: Colors.yellow[500],
                            textColor: Colors.black,
                            splashColor: Colors.blue,
                            onPressed: doSub,
                          ),
                        ),




                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:40.0,right: 40.0),
                          child: RaisedButton(onPressed: doMul,
                            child: Icon(Icons.cancel),
                            color: Colors.yellow[500],
                            textColor: Colors.black,
                            splashColor: Colors.blue,

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: RaisedButton(onPressed: doDiv,
                            child: Center(child: Text("/" , style: TextStyle(fontSize: 25.0),)),
                            color: Colors.yellow[500],
                            textColor: Colors.black,
                            splashColor: Colors.blue,

                          ),
                        )
                      ],
                    ),
                  ),


                ],

              ),

            ),
          ],

        ),
      



    );
  }
}

