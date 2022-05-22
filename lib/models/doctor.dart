class Doctor {
  String id;
  String name;
  String speciality;
  String address;
  String rating;
  String shortDescription;
  String urlPhoto;


  Doctor(this.id, this.name, this.speciality, this.rating, this.address,
      this.shortDescription,this.urlPhoto);
}

List<Doctor> doctors=[
  Doctor('1', 'Dudung Sokmati', 'Eye Speciality', '4.9', '212 Brooklyn st', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, t. Ut enim ad minim veniam, quis nostrud exercitation ullamco','assets/images/1.jpg'),
  Doctor('2', 'Nunung Brandon', 'Eye Speciality', '4.2', '214 Baker st', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, t. Ut enim ad minim veniam, quis nostrud exercitation ullamco','assets/images/2.jpg'),
  Doctor('3', 'Udin Batakooran', 'Eye Speciality', '3.9', '212 Brooklyn st', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, t. Ut enim ad minim veniam, quis nostrud exercitation ullamco','assets/images/3.jpg'),
  Doctor('4', 'Cucup Joentravo', 'Eye Speciality', '3.1', '212 Brooklyn st', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, t. Ut enim ad minim veniam, quis nostrud exercitation ullamco','assets/images/4.jpg'),
  Doctor('5', 'Diding Sulidinger', 'Eye Speciality', '2.1', '212 Brooklyn st', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, t. Ut enim ad minim veniam, quis nostrud exercitation ullamco','assets/images/5.jpg'),



];