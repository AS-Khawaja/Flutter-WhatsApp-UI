import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(value: '1', child: Text('New Group')),
                      PopupMenuItem(value: '2', child: Text('Settings')),
                      PopupMenuItem(value: '3', child: Text('Logout')),
                    ]),
            SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/17211439/pexels-photo-17211439/free-photo-of-turkish-flag-on-the-flagpost.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    title: Text('AS Khawaja'),
                    subtitle: Text('Pakistan Wins WC23'),
                    trailing: Text('9:00 PM'),
                  );
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/17211439/pexels-photo-17211439/free-photo-of-turkish-flag-on-the-flagpost.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                  ),
                  title: Text('My Status'),
                  subtitle: Text('Tap to add status update'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.camera_alt)),
                      // IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
                const Row(
                  children:  [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Recent Updates'),
                  ],
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 3),
                    ),
                    child:const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/en/3/34/Jimmy_McGill_BCS_S3.png?20200925011722'),
                    ),
                  ),
                  title: Text('Saul Goodman'),
                  subtitle: Text('1 hour ago'),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 3),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/en/0/03/Walter_White_S5B.png?20201021064948'),
                    ),
                  ),
                  title: Text('Walter H.White '),
                  subtitle: Text('2 hour ago'),
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Viewed Status'),
                  ],
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 3),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://static.wikia.nocookie.net/breakingbad/images/7/7b/Hank_S5b.jpg/revision/latest/scale-to-width-down/700?cb=20130717044210'),
                    ),
                  ),
                  title: Text('Hank Schrader'),
                  subtitle: Text('10 hours ago'),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 3),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://static.wikia.nocookie.net/breakingbad/images/5/5e/Gus_Fring_2002.jpg/revision/latest/scale-to-width-down/666?cb=20210608130942'),
                    ),
                  ),
                  title: Text('Gustavo Fring '),
                  subtitle: Text('13 hours ago'),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 3),
                    ),
                    child:const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://static.wikia.nocookie.net/breakingbad/images/c/ca/Jesse_Season_5B.jpg/revision/latest/scale-to-width-down/700?cb=20220611094739'),
                    ),
                  ),
                  title: Text('Jesse Pinkman '),
                  subtitle: Text('17 hours ago'),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? ListTile(
                          leading:const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://static.wikia.nocookie.net/breakingbad/images/b/bd/Cast_bb_800x600_jane-margolis.jpg/revision/latest?cb=20200722114556'),
                          ),
                          title: Text('Jane'),
                          subtitle: (index % 2 == 0)
                              ?const Row(
                                  children: [
                                    Icon(Icons.arrow_outward_sharp),
                                    Text('27/07/23'),
                                  ],
                                )
                              :const Row(
                                  children: [
                                    Icon(Icons.subdirectory_arrow_left),
                                    Text('Yestarday 3:05 pm'),
                                  ],
                                ),
                          trailing: Icon(
                              index / 2 == 0 ? Icons.phone : Icons.video_call),
                        )
                      :  ListTile(
                          leading:const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://d1qxviojg2h5lt.cloudfront.net/images/01G5MK4HSQ298Y153RGB590N77/rhea-seehorn.webp'),
                          ),
                          title: Text('Kim Wexler'),
                          subtitle: (index % 2 == 0)
                              ?const Row(
                                  children: [
                                    Icon(Icons.arrow_outward_sharp),
                                    Text('27/07/23'),
                                  ],
                                )
                              :const Row(
                                  children: [
                                    Icon(Icons.subdirectory_arrow_left),
                                    Text('Yestarday 3:05 pm'),
                                  ],
                                ),
                          trailing: Icon(
                              index % 2 == 0 ? Icons.phone : Icons.video_call),
                        );
                }),
          ],
        ),
      ),
    );
  }
}
