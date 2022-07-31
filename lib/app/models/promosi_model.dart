import 'package:equatable/equatable.dart';

class Promosi extends Equatable {
  final String name;
  final String imageUrl;
  final String snk;

  const Promosi(
      {required this.name, required this.imageUrl, required this.snk});

  @override
  List<Object?> get props => [name, imageUrl, snk];

  static List<Promosi> promosis = [
    Promosi(
        name: 'Buy 1 Get 1',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/manu-app-4ee32.appspot.com/o/menu%2Fespandan.JPG?alt=media&token=c2217f06-1931-4f0f-b2ad-b15a6ec6a632',
        snk: 'Beli Manu Spice gratis 1 Es Manu Kopi'),
    Promosi(
        name: 'Discount 50%',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/manu-app-4ee32.appspot.com/o/promosi%2Fdiskon50.png?alt=media&token=95f5be7e-2ab8-49cc-b4ed-b1c6e1c58291',
        snk: '1. Minimal order Rp 35.000\n 2. Maksimal diskon 10.000'),
    // Category(
    //   name: 'Water',
    //   imageUrl:
    //       'https://images.unsplash.com/photo-1559839914-17aae19cec71?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/7Zlds3gm7NU
    // ),
  ];
}
