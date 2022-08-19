import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String img;

  const CoffeeTile(this.img, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, bottom: 24),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //coffee image
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(img)),

            //coffee name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Latte',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Com leite maltado',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  // price
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('R\$ 16,00'),
                        Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(Icons.add))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
