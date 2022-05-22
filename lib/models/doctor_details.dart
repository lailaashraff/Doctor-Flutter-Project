import 'dart:ui';

import 'package:doctortask/models/doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctortask/screens/doctor_list.dart';
class DoctorDetails extends StatelessWidget {

  Doctor doctor;
  DoctorDetails(this.doctor);
  int _selecteditem=3;

  @override
  Widget build(BuildContext context) {
    Size s=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff07da5f),
        title: Text('Doctor Details'),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(_) => DoctorList()));
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_horiz,color: Colors.white),
          )
        ],
      ),
      bottomNavigationBar:BottomNavBar(),
      body:ListView(


        children: [
          Row(
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
                  Text(doctor.name,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                  Text(doctor.speciality,
                    style: TextStyle(
                        color: Color(0xff07da5f),
                        fontSize: 18,
                        fontStyle: FontStyle.italic
                    ),),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Icon(Icons.star_rounded,color: Color(0xffffd500)),
                      Icon(Icons.star_rounded,color: Color(0xffffd500)),
                      Icon(Icons.star_rounded,color: Color(0xffffd500)),
                      Icon(Icons.star_rounded,color: Color(0xffffd500)),
                      Icon(Icons.star_rounded,color: Color(0xffffd500)),
                      
                      Text(doctor.rating,
                        style: TextStyle(
                        fontSize:20,
                          color: Color(0x770000000)
                      ),)
                    ],
                  ),
                ],
              )
            ],
          ),
          Divider(
            color: Color((0xffeceff1)),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Short Description',
            textAlign: TextAlign.left,
            style:TextStyle(
            fontSize: 25,
              fontWeight: FontWeight.bold,

            )
            ),

          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Text(doctor.shortDescription,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1,
              wordSpacing: 1,
              color: Colors.grey
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,25,0,0),
            child: Text('Location',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold),
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25,10,0,10),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text(doctor.address,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0x770000000)
                ),),
              ],
            ),
          ),
          Image.asset('assets/images/location.jpg'),
          ButtonBar(

            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 50,
                width: s.width/1.2,
                child: ElevatedButton(


                  onPressed: null,
                  child: const Text('Request',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),),

                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff07da5f)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)

                        )
                      )



                    )


                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
  Widget BottomNavBar(){
    return BottomNavigationBar(
      currentIndex: _selecteditem,
      selectedItemColor:Color(0xff07da5f) ,
      onTap:(index){

          _selecteditem=index;

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
}
