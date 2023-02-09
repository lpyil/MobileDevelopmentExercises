// import 'package:app11_first_real/model/burc_detay.dart';
import 'package:flutter/material.dart';

import 'burc.dart';

class BurcItem extends StatelessWidget {
  final Burc currentBurc;
  const BurcItem({required this.currentBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    String tempPath = "images/" "${currentBurc.burcSmallResim}";

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        color: Colors.blue.shade100,
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/burcDetay", arguments: currentBurc);
            },
            leading: Image.asset(
              tempPath,
            ),
            title: Text(
              currentBurc.burcName,
              style: myTextStyle.titleMedium,
            ),
            subtitle: Text(
              currentBurc.burcTarih,
              style: myTextStyle.titleSmall,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
