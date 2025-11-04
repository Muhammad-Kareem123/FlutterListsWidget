  import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int counter  = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.white,
      body: 
      
      Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Counter: $counter"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                 ElevatedButton(onPressed: (){
                  setState(() {
                    counter++;
                  });
                }, child: Icon(Icons.add), )
               ,
               SizedBox(width: 10,),

                               ElevatedButton(onPressed: (){
                  setState(() {
                    if (counter > 0) {
                      counter--;
                    }
                    else if(counter == 0){
                      return;
                    }
                  });
                },  child: Icon(Icons.remove),)
              ],
            ),
            Switch(value: true, onChanged: (value) {
              if (value == true) {
                
              }
            },)
          ],
         ),
        
      ),
      
    );
  }
}