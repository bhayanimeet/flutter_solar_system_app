import 'package:flutter/material.dart';

import '../res/global.dart';

class Planet extends StatefulWidget {
  const Planet({Key? key}) : super(key: key);

  @override
  State<Planet> createState() => _PlanetState();
}

class _PlanetState extends State<Planet> with TickerProviderStateMixin {
  List<Map<String, dynamic>> planets = [
    {
      'name': 'Mercury',
      'image': 'assets/images/mercury.png',
      'detail':
      "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes. Like Venus, Mercury orbits the Sun within Earth's orbit as an inferior planet; its apparent distance from the Sun as viewed from Earth never exceeds 28°. This proximity to the Sun means the planet can only be seen near the western horizon after sunset or the eastern horizon before sunrise, usually in twilight. At this time, it may appear as a bright star-like object, but is more difficult to observe than Venus. From Earth, the planet telescopically displays the complete range of phases, similar to Venus and the Moon, which recurs over its synodic period of approximately 116 days. Due to its synodic proximity to Earth, Mercury is most often the closest planet to Earth, with Venus periodically taking this role.",
    },
    {
      'name': 'Venus',
      'image': 'assets/images/venus.png',
      'detail': '''Venus is the second planet from the Sun. It is sometimes called Earth's "sister" or "twin" planet as it is almost as large and has a similar composition. As an interior planet to Earth, Venus (like Mercury) appears in Earth's sky never far from the Sun, either as morning star or evening star. Aside from the Sun and Moon, Venus is the brightest natural object in Earth's sky, capable of casting visible shadows on Earth in dark conditions and being visible to the naked eye in broad daylight.Venus is the second largest terrestrial object of the Solar System. It has a surface gravity slightly lower than on Earth and has a weak induced magnetosphere. The atmosphere of Venus consists mainly of carbon dioxide, and, at the planet’s surface, is the densest and hottest of the atmospheres of the four terrestrial planets. With an atmospheric pressure at the planet's surface of about 92 times the sea level pressure of Earth and a mean temperature of 737 K (464 °C; 867 °F), the carbon dioxide gas at Venus's surface is in the supercritical phase of matter.''',
    },
    {
      'name': 'Earth',
      'image': 'assets/images/earth.png',
      'detail':
      "Earth is the third planet from the Sun and the only place known in the universe where life has originated and found habitability. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water. Approximately 70.8% of Earth's surface is made up of the ocean, dwarfing Earth's polar ice, lakes, and rivers. The remaining 29.2% of Earth's surface is land, consisting of continents and islands. Earth's surface layer is formed of several slowly moving tectonic plates, which interact to produce mountain ranges, volcanoes, and earthquakes. Earth's liquid outer core generates the magnetic field that shapes the magnetosphere of Earth, deflecting destructive solar winds.The atmosphere of Earth consists mostly of nitrogen and oxygen. Greenhouse gases in the atmosphere like carbon dioxide (CO2) trap a part of the energy from the Sun close to the surface. Water vapor is widely present in the atmosphere and forms clouds that cover most of the planet.",
    },
    {
      'name': 'Mars',
      'image': 'assets/images/mars.png',
      'detail':
      "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, larger only than Mercury. In the English language, Mars is named for the Roman god of war. Mars is a terrestrial planet with a thin atmosphere and has a crust primarily composed of elements similar to Earth's crust, as well as a core made of iron and nickel. Mars has surface features such as impact craters, valleys, dunes, and polar ice caps. Mars has two small, irregularly shaped moons, Phobos and Deimos.Some of the most notable surface features on Mars include Olympus Mons, the largest volcano and highest-known mountain in the Solar System, and Valles Marineris, one of the largest canyons in the Solar System. The Borealis basin in the Northern Hemisphere covers approximately 40% of the planet and may be a large impact feature. Days and seasons on Mars are comparable to those of Earth, as the planets have a similar rotation period and tilt of the rotational axis relative to the ecliptic plane. Liquid water on the surface of Mars cannot exist due to low atmospheric pressure.",
    },
    {
      'name': 'Jupiter',
      'image': 'assets/images/jupiter.png',
      'detail':
      "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, and slightly less than one one-thousandth the mass of the Sun. Jupiter is the third brightest natural object in the Earth's night sky after the Moon and Venus, and it has been observed since prehistoric times. It was named after Jupiter, the chief deity of ancient Roman religion.Jupiter is primarily composed of hydrogen, followed by helium, which constitutes a quarter of its mass and a tenth of its volume. The ongoing contraction of Jupiter's interior generates more heat than the planet receives from the Sun. Because of its rapid rotation rate of 1 rotation per 10 hours, the planet's shape is an oblate spheroid: it has a slight but noticeable bulge around the equator. The outer atmosphere is divided into a series of latitudinal bands, with turbulence and storms along their interacting boundaries.",
    },
    {
      'name': 'Saturn',
      'image': 'assets/images/saturn.png',
      'detail':
      "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth. It has only one-eighth the average density of Earth, but is over 95 times more massive. Saturn's interior is most likely composed of a rocky core, surrounded by a deep layer of metallic hydrogen, an intermediate layer of liquid hydrogen and liquid helium, and finally, a gaseous outer layer. Saturn has a pale yellow hue due to ammonia crystals in its upper atmosphere. An electrical current within the metallic hydrogen layer is thought to give rise to Saturn's planetary magnetic field, which is weaker than Earth's, but which has a magnetic moment 580 times that of Earth due to Saturn's larger size. Saturn's magnetic field strength is around one-twentieth of Jupiter's. The outer atmosphere is generally bland and lacking in contrast, although long-lived features can appear. Wind speeds on Saturn can reach 1,800 kilometres per hour , higher than on Jupiter but not as high as on Neptune.",
    },
    {
      'name': 'Uranus',
      'image': 'assets/images/uranus.png',
      'detail':
      '''Uranus is the seventh planet from the Sun. It is named after Greek sky deity Uranus (Caelus), who in Greek mythology is the father of Cronus (Saturn), a grandfather of Zeus (Jupiter) and great-grandfather of Ares (Mars). Uranus has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. The planet is similar in composition to Neptune, and both have bulk chemical compositions which differ from those of the other two giant planets, Jupiter and Saturn (the gas giants). For this reason, scientists often distinguish Uranus and Neptune as "ice giants".As with gas giants, ice giants lack a well-defined solid surface. Uranus's atmosphere is similar to Jupiter's and Saturn's in its primary composition of hydrogen and helium, but it contains more "ices" such as water, ammonia, and methane, along with traces of other hydrocarbons. It has the coldest planetary atmosphere in the Solar System, with a minimum temperature of 49 kelvins (−224 °C; −371 °F).''',
    },
    {
      'name': 'Neptune',
      'image': 'assets/images/neptune.png',
      'detail':
      "Neptune is the eighth planet from the Sun and the farthest known planet in the Solar System. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus. Neptune is denser and physically smaller than Uranus because its greater mass causes more gravitational compression of its atmosphere. Being composed primarily of gases and liquids, it has no well-defined solid surface. The planet orbits the Sun once every 164.8 years at an average distance of 30.1 astronomical units (4.5 billion kilometres; 2.8 billion miles). It is named after the Roman god of the sea and has the astronomical symbol ♆, representing Neptune's trident.[d] Neptune is not visible to the unaided eye and is the only planet in the Solar System found by mathematical prediction rather than by empirical observation.",
    },
    {
      'name': 'Pluto',
      'image': 'assets/images/pluto.png',
      'detail':
      "Pluto (minor-planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It is the ninth-largest and tenth-most-massive known object to directly orbit the Sun. It is the largest known trans-Neptunian object by volume, by a small margin, but is slightly less massive than Eris. Like other Kuiper belt objects, Pluto is made primarily of ice and rock and is much smaller than the inner planets. Pluto has only one sixth the mass of Earth's moon, and one third its volume.Pluto has a moderately eccentric and inclined orbit, ranging from 30 to 49 astronomical units (4.5 to 7.3 billion kilometers; 2.8 to 4.6 billion miles) from the Sun. Light from the Sun takes 5.5 hours to reach Pluto at its average distance (39.5 AU [5.91 billion km; 3.67 billion mi]). Pluto's eccentric orbit periodically brings it closer to the Sun than Neptune.",
    },
  ];

  @override
  void dispose() {
    super.dispose();
    Global.animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    Global.animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      upperBound: Global.end,
      lowerBound: Global.begin,
    );

    Global.animationController.forward();

    Global.animationController.addStatusListener((status){
      if(AnimationStatus.completed==status){
        Global.animationController.reverse();
      }
      else if(AnimationStatus.dismissed==status){
        Global.animationController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Galaxy Planets",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: planets
                .map(
                  (e) =>
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'detail', arguments: e);
                        });
                      },
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          TweenAnimationBuilder(
                              duration: const Duration(seconds: 2),
                              tween: ColorTween(
                                  begin: Colors.black,
                                  end: Colors.grey.shade300),
                              curve: Curves.easeInOut,
                              builder: (context, val, child) {
                                return ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                      val!, BlendMode.modulate),
                                  child: Container(
                                    height: 140,
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width,
                                    decoration: BoxDecoration(
                                      color: val,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                );
                              }),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.only(left: 10),
                                  child: AnimatedBuilder(
                                    animation: Global.animationController,
                                    builder: (context, widget) =>
                                        Transform.rotate(
                                          angle: Global.animationController.value,
                                          child: TweenAnimationBuilder(
                                              duration: const Duration(
                                                  seconds: 2),
                                              tween: Tween<double>(begin: -200, end: 0),
                                              curve: Curves.easeInOut,
                                              builder: (context, val, child) {
                                                return Transform.translate(
                                                  offset: Offset(val, 0),
                                                  child: Image.asset(
                                                    e['image'],
                                                    height: 130,
                                                  ),
                                                );
                                              }),
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: TweenAnimationBuilder(
                                    duration: const Duration(seconds: 2),
                                    curve: Curves.easeInOut,
                                    tween: Tween<double>(begin: 300, end: 0),
                                    builder: (context, val, child) {
                                      return Transform.translate(
                                        offset: Offset(val, 0),
                                        child: Container(
                                          padding:
                                          const EdgeInsets.only(left: 15),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            e['name'],
                                            style: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
            )
                .toList(),
          ),
        ),
      ),
    );
  }
}
