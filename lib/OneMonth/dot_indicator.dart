// >>>>>>>>>>>>>>>>>>>>>>>>>>DOT INDECATOR START<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// .
// .
// .
// .
// .
// .
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class DotIndicatorView extends StatefulWidget {
//   const DotIndicatorView({super.key});

//   @override
//   State<DotIndicatorView> createState() => _DotIndicatorViewState();
// }

// class _DotIndicatorViewState extends State<DotIndicatorView> {
//   final controller = PageController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[200],
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           SizedBox(
//             height: 500,
//             child: PageView(
//               controller: controller,
//               children: const [
//                 FirstView(),
//                 SecondView(),
//                 ThirdView(),
//                 FourthView(),
//               ],
//             ),
//           ),
//           SmoothPageIndicator(
//             controller: controller,
//             count: 4,
//             effect: const JumpingDotEffect(
//                 dotColor: Colors.black,
//                 activeDotColor: Colors.deepPurple,
//                 dotWidth: 30,
//                 dotHeight: 30,
//                 spacing: 16,
//                 verticalOffset: 30),
//           ),
//         ],
//       ),
//     );
//   }
// }
// .
// .
// .
// .
// .
// .
// >>>>>>>>>>>>>>>>>>>>>>>>>>DOT INDECATOR End<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// .
// .
// .
// .
// .
// .
// >>>>>>>>>>>>>>>>>>>>>>>>>>First_VIEW START<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// .
// .
// .
// .
// .
// .
// class FirstView extends StatelessWidget {
//   const FirstView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Padding(
//         padding: const EdgeInsets.all(40.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Container(
//             color: Colors.deepPurple[400],
//           ),
//         ),
//       ),
//     );
//   }
// }
// .
// .
// .
// .
// .
// .
// >>>>>>>>>>>>>>>>>>>>>>>>>>First_VIEW END<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// .
// .
// .
// .
// .
// .