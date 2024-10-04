import 'package:flutter/material.dart';
import 'daftar_barang_dummy.dart';

class homePage extends StatelessWidget {
  const homePage({super.key, required String user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Halaman Utama'),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue[200],
        ),
        body: Container(
            padding: EdgeInsets.all(20), child: _ListBarang(context)));
  }

  Widget _ListBarang(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: supermarketItemList.length,
      itemBuilder: (context, index) {
        final SupermarketItem barang = supermarketItemList[index];
        return Card(
          color: Colors.blue[100],
          child: Column(
            children: [
              Image.network(
                barang.imageUrls[0],
                width: 100,
                height: 150,
              ),
              SizedBox(),
              Text(barang.name),
              Text(barang.price),
            ],
          ),
        );
      },
    );
  }

  Widget _Welcome() {
    return Center(
      child: Text('Selamat Datang Admin'),
    );
  }
}
