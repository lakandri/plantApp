import 'package:flutter/material.dart';

class PlantDescription extends StatefulWidget {
  final String imgPath;
  final String plantName;
  final String plantPrice;
  // final String plantDescription;
  // final IconData icon;
  const PlantDescription({
    super.key,
    required this.imgPath,
    required this.plantName,
    required this.plantPrice,
    // required this.plantDescription,
  });

  @override
  State<PlantDescription> createState() => _PlantDescriptionState();
}

class _PlantDescriptionState extends State<PlantDescription> {
  int _plantCount = 1;

  void _incrementCount() {
    setState(() {
      _plantCount++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (_plantCount > 1) {
        _plantCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      body: Column(
        // alignment: Alignment.topCenter,
        children: [
          // color: Theme.of(context).colorScheme.onSecondary,
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              widget.imgPath,
              height: 290,
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(39), topRight: Radius.circular(39)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.plantName,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 19, 86, 21)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.plantPrice,
                      style: const TextStyle(color: Colors.green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'About',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    const Text(
                        'A rose is either a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars'),
                    // Container(
                    //   height: 40,
                    //   width: 120,
                    //   decoration: BoxDecoration(
                    //     color: Theme.of(context).colorScheme.primary,
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       IconButton(
                    //           onPressed: _decreaseCount,
                    //           icon: const Icon(Icons.remove)),
                    //       Text(
                    //         'Count',
                    //         style: TextStyle(
                    //             color: Theme.of(context).colorScheme.primary),
                    //       ),
                    //       IconButton(
                    //           onPressed: _increaseCount,
                    //           icon: const Icon(Icons.add)),
                    //     ],
                    //   ),
                    // )

                    const SizedBox(height: 20),
                    const Text(
                      'Count',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        IconButton(
                          onPressed: _decrementCount,
                          icon: const Icon(Icons.remove),
                          color: Colors.green,
                        ),
                        Text(
                          '$_plantCount',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: _incrementCount,
                          icon: const Icon(Icons.add),
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ]),

              // height: MediaQuery.of(context).size.height / ,
            ),
          )),
        ],
      ),
    );
  }
}
