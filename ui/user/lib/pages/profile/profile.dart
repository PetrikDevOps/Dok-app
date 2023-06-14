import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Profile'),
          ),
        ],
        body: CupertinoListSection.insetGrouped(
          header: const Text('Quick Actions'),
          children: const [
            CupertinoListTile.notched(
                trailing: CupertinoListTileChevron(),
                title: Text('tasks'),
                leading: Icon(CupertinoIcons.checkmark_alt_circle)),
            CupertinoListTile.notched(
              title: Text('logout'),
              leading: Icon(
                CupertinoIcons.arrow_left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
