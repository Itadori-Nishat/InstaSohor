// import 'package:flutter/material.dart';
//
// class Highlight {
//   final String title;
//   final String iconUrl;
//   final List<Story> stories;
//
//   Highlight({required this.title, required this.iconUrl, required this.stories});
// }
//
// class Story {
//   final String imageUrl;
//   final String caption;
//
//   Story({required this.imageUrl, required this.caption});
// }
//
// class HighlightScreen extends StatefulWidget {
//   @override
//   _HighlightScreenState createState() => _HighlightScreenState();
// }
//
// class _HighlightScreenState extends State<HighlightScreen> {
//   final List<Highlight> highlights = [
//     Highlight(
//       title: 'Travel',
//       iconUrl: 'https://unsplash.com/photos/VUWEvNateeM',
//       stories: [
//         Story(
//           imageUrl: 'https://unsplash.com/photos/FVxkTX-Ejec',
//           caption: 'Beautiful scenery in Italy!',
//         ),
//         Story(
//           imageUrl: 'https://unsplash.com/photos/iqMnIdaG5Zg',
//           caption: 'Hiking in the mountains!',
//         ),
//         // Add more stories as needed
//       ],
//     ),
//     Highlight(
//       title: 'Food',
//       iconUrl: 'https://unsplash.com/photos/iqMnIdaG5Zg',
//       stories: [
//         Story(
//           imageUrl: 'https://unsplash.com/photos/VUWEvNateeM',
//           caption: 'Trying out new recipes!',
//         ),
//         Story(
//           imageUrl: 'https://unsplash.com/photos/iqMnIdaG5Zg',
//           caption: 'Visiting local restaurants!',
//         ),
//         // Add more stories as needed
//       ],
//     ),
//     // Add more highlights as needed
//   ];
//
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             child: PageView.builder(
//               itemCount: highlights.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final highlight = highlights[index];
//                 return ListView.builder(
//                   itemCount: highlight.stories.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     final story = highlight.stories[index];
//                     return Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Image.network(story.imageUrl),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(story.caption),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               onPageChanged: (int page) {
//                 setState(() {
//                   _currentPage = page;
//                 });
//               },
//             ),
//
//
//           ),
//           Container(
//             height: 100,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 for (int i = 0; i < highlights.length; i++)
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           _currentPage = i;
//                         });
//                       },
//                       child: Column(
//                         children: [
//                           CircleAvatar(
//                             backgroundImage: NetworkImage(highlights[i].iconUrl),
//                           ),
//                           SizedBox(height: 8),
//                           Text(highlights[i].title),
//                           SizedBox(height: 4),
//                           Container(
//                             width: 8,
//                             height: 8,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: _currentPage == i ? Colors.blue : Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
