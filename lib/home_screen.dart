import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController  _formData =TextEditingController();
  String textValue = "";
  List todoList =[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.grey.shade300,
body:SafeArea(
  child: SingleChildScrollView(child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(children: [
     Padding(
       padding: const EdgeInsets.all(20.0),
       child: Text(" Good Afternoon,Anupa",
       style: TextStyle(
        fontSize:24,
       )),
     ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text("It's Tuesday,28th march",
       style: TextStyle(
        fontSize:24,
       )),
     ),
     TextFormField(
      controller: _formData,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText:"Enter your to do task" ,
        
        prefixIcon:Icon(Icons.airplane_ticket),
      ),
     ),
     TextButton(onPressed: (){
      textValue=_formData.text;
      todoList.add(_formData.text);
      _formData.text="";
      print(_formData.text);
      setState(() {
        
      });
     }, child: Text("Add")),

ListView.builder(
  physics: NeverScrollableScrollPhysics(),
  shrinkWrap: true,
  itemCount: todoList.length,
itemBuilder:  (context, index) 
 {
  var item = todoList[index];
  return Container(
    padding:const EdgeInsets.symmetric(
       vertical: 10.0,
        horizontal:6.0,
      ),
      margin:EdgeInsets.only(top:20.0),
      decoration: BoxDecoration(
        color:Color.fromRGBO(255, 255, 255, 1),
    borderRadius: BorderRadius.circular(10.0),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
        Text(item),
        Icon(Icons.home),
      ],),
     );
 }
  

),


    //  if(textValue!="")
    //  Container(
    //   padding:const EdgeInsets.symmetric(
    //     vertical: 10.0,
    //     horizontal:6.0,
    //   ),
    //   margin:EdgeInsets.only(top:20.0),
    //   decoration: BoxDecoration(
    //     color:Color.fromRGBO(255, 255, 255, 1),
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   child:Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //     Text(textValue),
    //     Icon(Icons.home),
    //   ],)
    //  )
  
    ]),
  ),
  
  )
  ),
    );
  }
}



