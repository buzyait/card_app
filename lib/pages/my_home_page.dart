import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  required this.name,
  required this.kesibi,
  required this.phone,
  required this.gmail,
  }
  );

  final String name;
  final String kesibi;
  final String phone;
  final String gmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        
        title: const Text(
          'Тапшырма 4',
          style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
    ),
  
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
 Text(
  name,
  style: TextStyle(
    color: Colors.white70,
    fontSize: 45,
    fontFamily: 'Pacifico'
  ),
),

 Text(
  '$kesibi Devoloper',
style: TextStyle(
  fontFamily: 'Pacifico',
  color: Colors.white70,
  fontSize: 30,
  ),
), 
const Divider(
  color: Colors.white70,
  thickness: 1.5,
  indent: 70,
  endIndent: 70,

),
const SizedBox(height: 10),
Container(
  width: double.infinity,
  height: 50,
  color: Colors.white,
  child: Row(
    children:  [
      const
SizedBox(width: 26),
 Icon(
  Icons.phone_outlined,size: 28,color:Colors.green[700]),
  const SizedBox(width: 26),
 Text(
  '+7 9 $phone',
style: const TextStyle(
  fontSize: 18,
  color: Color(0xff056C5C),  
),
),
  ],
  ),
),
  const SizedBox(
    height: 20),
  Container(
    width: double.infinity,
    height: 50,
    color: Colors.white,
    child: Row(
      children: [
       const SizedBox(width: 26),

const Icon(
  Icons.email_outlined,
  size:28,
  color:Color(0xff056C5C),
), 

const SizedBox(width: 26),
  
  Text(
    gmail,
  style: const TextStyle(
    fontSize: 18,
    color: Color(0xff056C5C),
  ),
  ),
    ],
    ),
  ),  
    ],
  
      ),
      ),
    );

  }
 }
  
  
      