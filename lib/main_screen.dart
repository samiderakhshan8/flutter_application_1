import 'package:flutter/material.dart';
import 'package:flutter_application_1/imagePicker.dart';
import 'package:flutter_application_1/reservation.dart';

class MainScreenState extends StatefulWidget {
  const MainScreenState({super.key});

  @override
  State<MainScreenState> createState() => _MainScreenStateState();
}

class _MainScreenStateState extends State<MainScreenState> {
  int selectedBottomNavigationItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xff1C1F2E),
            currentIndex: selectedBottomNavigationItem,
            onTap: (int index) {
              setState(() {
                selectedBottomNavigationItem = index;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.white,
            unselectedIconTheme:
                const IconThemeData(size: 25, color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 55,
                    width: 55,
                    child: Image(
                      image: AssetImage('images/repair.png'),
                    ),
                  ),
                  activeIcon: SizedBox(
                    height: 55,
                    width: 55,
                    child: Image(
                      image: AssetImage('images/repairr.png'),
                    ),
                  ),
                  label: 'دیاگ'),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 55,
                    width: 55,
                    child: Image(
                      image: AssetImage('images/reserve.png'),
                    ),
                  ),
                  activeIcon: SizedBox(
                    height: 55,
                    width: 55,
                    child: Image(
                      image: AssetImage('images/reservee.png'),
                    ),
                  ),
                  label: 'پذیرش'),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 55,
                    width: 55,
                    child: Image(
                      image: AssetImage('images/warehouse.png'),
                    ),
                  ),
                  activeIcon: SizedBox(
                    height: 55,
                    width: 55,
                    child: Image(
                      image: AssetImage('images/warehousee.png'),
                    ),
                  ),
                  label: 'انبار'),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedBottomNavigationItem,
        children: getLayout(),
      ),
    );
  }
}

List<Widget> getLayout() {
  return <Widget>[
    Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/011.png'), fit: BoxFit.cover),
          ),
        ),
        const LoadCountentView(),
      ],
    ),
    Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/011.png'), fit: BoxFit.cover),
          ),
        ),
        const FirstScreen()
      ],
    ),
    Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/011.png'), fit: BoxFit.cover),
          ),
        ),
        Center(
          child: wareHouseMenu(), //anbar
        )
      ],
    ),
  ];
}

Widget wareHouseMenu() {
  //anbar
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
        height: 70,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5), // Shadow color with opacity
              spreadRadius: 5, // Spread value
              blurRadius: 10, // Blur value
              offset: const Offset(0, 0), // Offset (horizontal, vertical)
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "موجودی",
            style: TextStyle(fontSize: 45),
          ),
        ),
      ),
      const SizedBox(
        height: 45,
      ),
      Container(
        height: 70,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5), // Shadow color with opacity
              spreadRadius: 5, // Spread value
              blurRadius: 10, // Blur value
              offset: const Offset(0, 0), // Offset (horizontal, vertical)
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "ورودی",
            style: TextStyle(fontSize: 45),
          ),
        ),
      ),
      const SizedBox(
        height: 45,
      ),
      Container(
        height: 70,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5), // Shadow color with opacity
              spreadRadius: 5, // Spread value
              blurRadius: 10, // Blur value
              offset: const Offset(0, 0), // Offset (horizontal, vertical)
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "خروجی",
            style: TextStyle(fontSize: 45),
          ),
        ),
      ),
      const SizedBox(
        height: 45,
      ),
      Container(
        height: 70,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5), // Shadow color with opacity
              spreadRadius: 5, // Spread value
              blurRadius: 10, // Blur value
              offset: const Offset(0, 0), // Offset (horizontal, vertical)
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "امانت",
            style: TextStyle(fontSize: 45),
          ),
        ),
      )
    ],
  );
}
