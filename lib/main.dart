import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicago, USA'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to USA, Georgina!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search places...',
                icon: Icon(Icons.search
                ),
              
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Favorite Places',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
             Container(child:Row( children: [
               Container(
              width: 200,
              height: 250,
      
              child :Container(width: 150,height: 100,
             child: Image.network('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQDbBV3V0DCBOLrR204OdYytUCoH2KdHLRpmzBoEGFtPvdHIfqEXTEPOIeozhpbG6-KKbBTzQ8sw08INpE35_g99wBVuq4ybGrCx-g5jELPm6aZ4Y_gj8iUdEWb4PfIz7tTPvSdWekI64zU35_7ioobblWRUiWR99_D0xgd1INa6i20kes8nE4rJdt2g/s1733/%D8%B5%D9%88%D8%B1-%D8%AE%D9%84%D9%81%D9%8A%D8%A7%D8%AA-%D9%84%D9%84%D8%AC%D9%88%D8%A7%D9%84-%D9%81%D8%AE%D9%85%D8%A9%20(1).jpg') ,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 169, 166, 211) )
              ),
              ),
             
              ),
             
             
          
             ],
        
             ),
          
            ),
            SizedBox(height: 50,),
            PlaceCard(
              name: 'Lincoln Park',
              address: '34 West 57th Street, PH',
              tag: 'Park',
              distance: 'N/A',
            ),
            PlaceCard(
              name: 'Rest & Beef',
              address: '11 North 315th St',
              tag: 'Restaurant',
              distance: '4.2 m',
            ),
            SizedBox(height: 16),
            Text(
              'Nearest Places',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },
      child: Icon(Icons.scanner),
      backgroundColor: Colors.blue,

      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String name;
  final String address;
  final String tag;
  final String distance;

  const PlaceCard({
    Key? key,
    required this.name,
    required this.address,
    required this.tag,
    required this.distance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(address),
            Text(tag),
          ],
        ),
        trailing: Text(distance),
        onTap: () {
          
        },
      ),
    );
  }
}

