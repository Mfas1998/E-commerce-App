
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  int index = 0;
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showUnselectedLabels: true,
      // backgroundColor: Colors.red,
      selectedItemColor: Color(0xff40BFFF),
      unselectedItemColor: Color(0xff9098B1),
      onTap: (value) {
        setState(() {
          
        });
        index = value;
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
              ),
            ),
            child: InkWell(
              // onTap: (() => {}),
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer_outlined),
          label: 'Offer',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity_outlined),
          label: 'Account',
        ),
      ],
    );
;
  }
}
// class BottomBar extends StatelessWidget {
//   const BottomBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       // currentIndex: 1,
//       showUnselectedLabels: true,
//       // backgroundColor: Colors.red,
//       selectedItemColor: Color(0xff40BFFF),
//       unselectedItemColor: Color(0xff9098B1),
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.search),
//           label: 'Explore',
//         ),
//         BottomNavigationBarItem(
//           icon: Badge(
//             badgeContent: Text(
//               '3',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 9,
//               ),
//             ),
//             child: InkWell(
//               onTap: (() => {}),
//               child: Icon(Icons.shopping_cart_outlined),
//             ),
//           ),
//           label: 'Cart',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.local_offer_outlined),
//           label: 'Offer',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.perm_identity_outlined),
//           label: 'Account',
//         ),
//       ],
//     );
//   }
// }
