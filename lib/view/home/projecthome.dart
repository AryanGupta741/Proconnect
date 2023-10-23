import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({super.key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  final List<CardData> cardDataList = [
    CardData('Card 1', 'Subtitle 1'),
    CardData('Card 2', 'Subtitle 2'),
    CardData('Card 3', 'Subtitle 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        title: const Center(child: Text('ProConnect')),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: cardDataList.length,
        itemBuilder: (context, index) {
          // card created for project view
          return Card(
            // shape of the corner
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  12.0), // Adjust the border radius as needed
              side: const BorderSide(
                  color: Colors.black,
                  width: 1.0), // Adjust the border color and width
            ),
            // card inside color
            color: Colors.white70,
            shadowColor: Colors.grey,
            elevation: 3,
            // sizedBox is used to fixed size of the card
            child: SizedBox(
              height: 450,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                // Column is used to alignment of content in vertical
                child: Column(
                  children: [
                    //ListTile manage the upper part of the card
                    uppercontent(),
                    // ======= project image======
                    Image.asset('assets/images/project1.png'),
                    const SizedBox(
                      height: 14,
                    ),
                    // the Row and column manage the bottom part of card
                    lowercontent(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      // these is the bottomNavigation of the screen
      
    );
  }

  Row lowercontent() {
    return const Row(
      children: [
        Column(
          children: [
            Icon(
              FontAwesomeIcons.heart,
            ),
            Text(
              "Like",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.comment,
            ),
            Text(
              "Comment",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.paperPlane,
            ),
            Text(
              "Share",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
            ),
          ],
        ),
        SizedBox(
          width: 70,
        ),
        Column(
          children: [
            Icon(
              FontAwesomeIcons.bookmark,
            ),
            Text(
              "Bookmark",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
            ),
          ],
        ),
      ],
    );
  }

  ListTile uppercontent() {
    return const ListTile(
      // cicleAvatar for profile
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile1.jpg'),
        radius: 35,
      ),
      title: Text("Aryan Gupta"),
      subtitle: Text(
          " Hi everyone! I've just hit over 10K subscribers on YouTube. I am really grateful to everyone who supported me throughout my journey so far. Honestly speaking,"),
    );
  }
}

class CardData {
  final String title;
  final String subtitle;
  CardData(this.title, this.subtitle);
}
