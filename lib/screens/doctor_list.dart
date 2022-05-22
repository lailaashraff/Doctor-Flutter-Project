import 'package:doctortask/models/doctor_details.dart';
import 'package:flutter/material.dart';

import '../models/doctor.dart';
class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  int _selecteditem=0;
  @override
  Widget build(BuildContext context) {
    Size s=MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        child: Icon(Icons.add),
        backgroundColor:Color(0xff07da5f),

      ),
      appBar: AppBar(
        backgroundColor: Color(0xff07da5f),
        title: Text('Doctor List'),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back,color: Colors.white)
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_horiz,color: Colors.white),
          )
        ],
      ),
      bottomNavigationBar:BottomNavBar(),
      body: ListView(
        children: doctors.map((e) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: s.width,
                height: s.height/5,
                child: doctorcard(e)
            ),
          );
        }).toList(),
      ),
    );
  }
  Widget BottomNavBar(){
    return BottomNavigationBar(
      currentIndex: _selecteditem,
      selectedItemColor:Color(0xff07da5f) ,
      onTap:(index){
        setState(() {
          _selecteditem=index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_sharp),
            label: 'Notifications'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Schedule'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile')
      ],
    );
  }

  Widget doctorcard(Doctor doctor){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(_) => DoctorDetails(doctor)));
      },
      child: Card(
        child: Row(
          children: [
            // Image.asset('assets/images/1.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(doctor.urlPhoto),
                radius: 45,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(doctor.name,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Icon(Icons.star_rounded,color: Color(0xffffd500),),
                    Text(doctor.rating,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0x770000000)
                      ),
                    )

                  ],
                ),

                Text(doctor.speciality,
                  style: TextStyle(
                      color: Color(0xff07da5f),
                      fontSize: 18,
                      fontStyle: FontStyle.italic
                  ),),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(doctor.address,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0x770000000)
                      ),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }


  }




