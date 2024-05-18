import 'package:flutter/material.dart';
import 'package:plant/pages/plant_description.dart';

class Plantcontainer extends StatelessWidget {
  final String plantImg;
  final String plantName;
  final String plantPrice;
  // final String description;

  const Plantcontainer({
    super.key,
    required this.plantImg,
    required this.plantName,
    required this.plantPrice,
    // required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlantDescription(
                        imgPath: plantImg,
                        plantName: plantName,
                        plantPrice: plantPrice,
                        // plantDescription: '',
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondary,
              borderRadius: BorderRadius.circular(9)),
          // height: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  plantImg,
                  height: 80,
                  width: 80,
                ),
                Row(
                  children: [
                    Text(
                      plantName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      plantPrice,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.green),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
