import 'package:flutter/material.dart';
import 'package:weather_app/Widgets/weatherInfoCard.dart';
import 'package:weather_app/Widgets/weeklyCard.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today_rounded,
              color: Colors.white,
            ),
            SizedBox(width: 5),
            Text(
              " Weather App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              Image.asset('assets/sunny.png', height: 150),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tomorrow",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  RichText(
                      text: const TextSpan(
                          text: '25',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 60,
                              fontWeight: FontWeight.w600),
                          children: [
                        TextSpan(
                          text: '/17°',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )
                      ])),
                  const Text(
                    "Rainy - Cloudy",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          const Divider(),
          const WeatherInfoCard(),
          const SizedBox(height: 20),
          const Center(child: Text('Weather Forecast Prediction', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)),
          const SizedBox(height: 15,),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return WeeklyCard(
                  week: weekDays[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: 7)
        ],
      ),
    );
  }

  List<String> weekDays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
}




