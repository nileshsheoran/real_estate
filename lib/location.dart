import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/house_widget.dart';

class Location extends StatelessWidget {
  Location({super.key});

  List<String> propertyType = [
    'Home',
    'Flat',
    'Apartment',
    'Hotel',
  ];

  List<Icon> propertyIcons = [
    Icon(
      Icons.house_rounded,
      size: 40,
      color: Colors.lightBlue.shade400,
    ),
    Icon(
      Icons.business_outlined,
      size: 40,
      color: Colors.lightBlue.shade900,
    ),
    const Icon(
      Icons.apartment,
      size: 40,
      color: Colors.green,
    ),
    const Icon(Icons.home_work_outlined, size: 40, color: Colors.teal),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Location',
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.blue.shade700,
                          ),
                          const Text(
                            'Miami,',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Florida',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.notifications_active,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: InputBorder.none,
                    label: const Text('Search'),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(7),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.filter_list_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Find Properties',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.9,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(7),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          (propertyIcons[index]),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                propertyType[index],
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                '123 items ',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby to you',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See all'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              HouseWidget(),
            ],
          ),
        ),
        bottomNavigationBar: CircleNavBar(
          onTap: null,
          height: 60,
          circleWidth: 50,
          activeIndex: 2,
          circleColor: Colors.indigo,
          color: Colors.white,
          activeIcons: const [
            Icon(
              Icons.location_city_rounded,
              color: Colors.black54,
            ),
            Icon(
              Icons.compass_calibration,
              color: Colors.black54,
            ),
            Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            Icon(
              Icons.mail,
              color: Colors.black54,
            ),
            Icon(
              Icons.person,
              color: Colors.black54,
            ),
          ],
          inactiveIcons: const [
            Icon(
              Icons.location_city_rounded,
              color: Colors.black54,
            ),
            Icon(
              Icons.compass_calibration,
              color: Colors.black54,
            ),
            Icon(
              Icons.bookmark,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.mail,
              color: Colors.black54,
            ),
            Icon(
              Icons.person,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
