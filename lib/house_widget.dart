import 'package:flutter/material.dart';
import 'package:real_estate/house_view.dart';

class HouseWidget extends StatelessWidget {
  HouseWidget({super.key});

  List<String> locations = [
    'Richardson, California',
    'Los Angles, California',
    'Nairobi,UK',
  ];
  List<String> houseName = ['Summer House', 'Emerald Palace', 'Europe Palace'];
  List<String> houseImage = [
    'assets/image/home.jpg',
    'assets/image/home1.jpg',
    'assets/image/home2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 3; i++)
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(8),
              height: 250,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 140,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HouseView();
                            }));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(houseImage[i]),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red.shade300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    houseName[i],
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on_rounded),
                      Text(
                        locations[i],
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const Text(
                    '5 Bed - 4 Bath - 3,235 Sqft',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
