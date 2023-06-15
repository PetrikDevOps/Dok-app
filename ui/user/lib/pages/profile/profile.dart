import 'package:flutter/cupertino.dart';
import 'package:user/pages/profile/tasks.dart';

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
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Profile'),
          ),
        ],
        body: CupertinoListSection.insetGrouped(
          header: const Text('Quick Actions'),
          children: [
            CupertinoListTile.notched(
              onTap: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => const Tasks())),
              trailing: const CupertinoListTileChevron(),
              title: const Text('tasks'),
              leading: const Icon(CupertinoIcons.check_mark_circled),
            ),
            const CupertinoListTile.notched(
              title: Text('logout'),
              leading: Icon(
                CupertinoIcons.arrow_left,
                color: CupertinoColors.systemRed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
