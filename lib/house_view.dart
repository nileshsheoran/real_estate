import 'package:flutter/material.dart';

class HouseView extends StatelessWidget {
  HouseView({super.key});

  List<String> locations = [
    'Richardson, California',
    'Los Angles, California',
    'Nairobi,UK',
  ];
  List<String> houseName = ['Summer House', 'Emerald Palace', 'Europe Palace',];
  List<String> houseImage = [
    'assets/image/home.jpg',
    'assets/image/home1.jpg',
    'assets/image/home2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.brown,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.brown.shade300,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/image/home1.jpg'),
                      ),
                    ),
                    Positioned(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Necray Elite House',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Necray Elite House is sweet place'),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '5 Bed',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                    Text(
                      '6 Bath',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                    Text(
                      '5,202 sqft ',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        '4517 Washington Ave.Manchester,Kentucky 45646',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '\$128/',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 23),
                            ),
                            Text('Monthly'),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo,
                      ),
                      child: const Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
