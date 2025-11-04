import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  final int index;
  const MyCustomWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<String> names = ["Smart Watch", "HeadPhones", "Laptop", "Camera", "SmartPhone", "Tablet"];
    List<double> prices = [1200, 700, 8000, 90000, 1000, 4500];
    List<IconData> icons = [
      Icons.watch,
      Icons.headphones,
      Icons.laptop,
      Icons.camera,
      Icons.phone_android,
      Icons.tablet
    ];
    List<double>Raiting = [1.1,2.2,3.3,4.4,5.5,6.6];

    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(name: names[index], price: prices[index],icon:icons[index],Raiting: Raiting[index],),
                ),
              );
            },
            child: Icon(icons[index], size: 40),
          ),
          SizedBox(height: 10),
          Text(names[index], style: TextStyle(fontWeight: FontWeight.bold)),
          Text("\$${prices[index]}", style: TextStyle(color: Colors.grey[700])),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final IconData icon;
  final String name;
  final double price;
  final double Raiting;
  

  const DetailPage({super.key, required this.name, required this.price, required this.Raiting, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: Center(
      
        child: 
        Card(
          elevation: 4,
          shape: Border.all(color: Colors.black,style: BorderStyle.solid),
          child: ListTile(
          
          shape:BeveledRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
          leading: Icon(icon),
          title: Text("$name"),
          subtitle: Text("$price"),
          trailing: Text("$Raiting"),
    
        )),
        
      ),
    );
  }
}
