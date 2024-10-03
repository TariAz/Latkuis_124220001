import 'package:flutter/material.dart';
import 'package:sekian/vehicle_data.dart';

class Page2 extends StatelessWidget {
  final String username;
  Page2({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Log Out")),
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: const Color.fromARGB(255, 191, 154, 198),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selamat Datang"),
            Text("Halo $username !"),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.6),
                  itemCount: vehicleList.length,
                  itemBuilder: (context, index) {
                    final Vehicle place = vehicleList[index];
                    return Card(
                      child: Column(
                        children: [
                          Image.network(place.imageUrls[0]),
                          Text(place.name),
                          Text(place.type),
                          Text(place.description),
                          Text(place.engine),
                          Text(place.fuelType),
                          Text(place.price)
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
