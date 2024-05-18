import 'package:flutter/material.dart';
import 'package:plant/components/my_drawer.dart';
import 'package:plant/components/plantcontainer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lets Find your\nplants!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Your Fav Plants',
                    hintStyle: const TextStyle(fontSize: 13),
                    fillColor: Theme.of(context).colorScheme.onSecondary,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryChip('Recommand'),
                    _buildCategoryChip('Top'),
                    _buildCategoryChip('Indoor'),
                    _buildCategoryChip('Outdoor'),
                    // Add more category chips as needed
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Plantcontainer(
                      plantImg: 'assets/plant1.png',
                      plantName: 'Snake PLant',
                      plantPrice: 'Rs 50'),
                  Plantcontainer(
                      plantImg: 'assets/plant1.png',
                      plantName: 'Malaai ',
                      plantPrice: 'Rs 50'),
                  // Plantcontainer(
                  //     plantImg: 'assets/plant3.png',
                  //     plantName: 'Hgjh',
                  //     plantPrice: 'Rs 200'),
                  Plantcontainer(
                      plantImg: 'assets/plant3.png',
                      plantName: 'Malaai Tha xoina',
                      plantPrice: 'Rs 50')
                ],
              ),
            ),
            Text(
              "Recently View",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Plantcontainer(
                plantImg: 'assets/p1.png',
                plantName: 'helloPlant',
                plantPrice: "Rs 1")
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        label: Text(
          category,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
      ),
    );
  }
}
