class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;


  PlanetInfo(
      this.position, {
        this.name,
        this.iconImage,
      });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Mercury',
      iconImage: 'assets/mercury.png',

      ),
  PlanetInfo(2,
      name: 'Venus',
      iconImage: 'assets/venus.png',
     ),
  PlanetInfo(3,
      name: 'Earth',
      iconImage: 'assets/earth.png',

     ),
  PlanetInfo(4,
      name: 'Mars',
      iconImage: 'assets/mars.png',
      ),
  PlanetInfo(5,
      name: 'Jupiter',
      iconImage: 'assets/jupiter.png',
      ),
  PlanetInfo(6,
      name: 'Saturn',
      iconImage: 'assets/saturn.png',
     ),
  PlanetInfo(7,
      name: 'Uranus',
      iconImage: 'assets/uranus.png',
     ),
  PlanetInfo(8,
      name: 'Neptune',
      iconImage: 'assets/neptune.png',
     ),
];