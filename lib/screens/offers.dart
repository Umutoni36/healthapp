import 'package:flutter/material.dart';
import '../widgets/offersCard.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "Special Offer's",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            )),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "offer 1",
                rating: 4.9,
                designation: "Senior Surgeon",
                fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image: const AssetImage("assets/images/doctor2.jpg"),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "offer 1",
                rating: 4.9,
                designation: "Senior Surgeon",
                fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image: const AssetImage("assets/images/doctor2.jpg"),
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Daily Offers",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "offer 1",
                rating: 4.9,
                designation: "Senior Surgeon",
                fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image: const AssetImage("assets/images/doctor2.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "offer 1",
                rating: 4.9,
                designation: "Senior Surgeon",
                fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image: const AssetImage("assets/images/doctor2.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "offer 1",
                rating: 4.9,
                designation: "Senior Surgeon",
                fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image: const AssetImage("assets/images/doctor2.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
