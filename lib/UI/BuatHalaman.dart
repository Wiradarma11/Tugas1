import 'package:flutter/material.dart';
// ignore: unused_import
import './Detailproduk.dart';

// ignore: camel_case_types
class BuatHalaman extends StatelessWidget {
  const BuatHalaman({superkey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      
      
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const Detailproduk(
                  name: "NIKE",
                  description: "Sepatu Nike Air Max ",
                  price: 1000,
                  image: "nike.jpg",
                  star: 1,
                ),
              ));
            },

            
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "NIKE",
              description: "Sepatu Nike Air Max",
              price: 1000,
              image: "nike.jpg",
              star: 1,
            ),
            
          ),
          
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Patrobas",
                      description: " SEPATU PATROBAS IVAN LOW CUT BLACK WHITE ",
                      price: 800,
                      image: "patrobas.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "Patrobas",
                description: " SEPATU PATROBAS IVAN LOW CUT BLACK WHITE ",
                price: 800,
                image: "patrobas.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Ventela",
                      description: "Ventela adalah sepatu brand lokal buatan bandung",
                      price: 2000,
                      image: "ventela.jpg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name: "Ventela",
                description: "Ventela adalah sepatu brand lokal buatan bandung",
                price: 2000,
                image: "ventela.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "Compass",
                      description:
                          "Compass Gazelle Hi White/Blue",
                      price: 1500,
                      image: "compas.jpg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name: "Compass",
                description:
                    "Compass Gazelle Hi White/Blue",
                price: 1500,
                image: "compas.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Detailproduk(
                      name: "New Balance",
                      description: "New Balance 237 Men's Sneakers - Marblehead",
                      price: 100,
                      image: "newbalance.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "New Balance",
                description: "New Balance 237 Men's Sneakers - Marblehead",
                price: 100,
                image: "newbalance.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}


// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {superkey,
      required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}