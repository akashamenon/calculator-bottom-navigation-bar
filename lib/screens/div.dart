import 'package:flutter/material.dart';

void main()=>runApp(Div());

class Div extends StatefulWidget {
  @override
  _DivState createState() => _DivState();
}

class _DivState extends State<Div> {
  @override

  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();

  double _Div=0;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("DIVISION"),
          ),
          body:
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    controller: num1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.confirmation_num,color: Colors.lightBlue,size: 20,),
                      labelText: "TextBox 1",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: num2,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.confirmation_num,color: Colors.lightBlue,size: 20,),
                      labelText: "TextBox 2",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: (){
                        var getTextBox1=double.parse(num1.text);
                        var getTextBox2=double.parse(num2.text);

                        setState(() {

                          _Div=getTextBox1/getTextBox2;

                        });

                        print(_Div);
                      },
                      child: Text("DIVISION",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  Text(_Div.toString(),style: TextStyle(fontSize: 20),),

                ],
              ),
            ),
          )
      ),
    );
  }
}
