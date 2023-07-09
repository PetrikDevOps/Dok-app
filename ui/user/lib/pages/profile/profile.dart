import 'package:flutter/cupertino.dart';
import 'package:user/auth.dart';
import 'package:user/pages/profile/settings.dart';
import 'package:user/pages/profile/tasks.dart';
import 'package:user/profile.dart';
import 'package:user/glob.dart' as glob;

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
        body: Column(
          children: [
            const ProfilePic(),
            FutureBuilder(
              future: getSession(glob.cookieManager),
              builder: (context, snapshot) => FutureBuilder(future: getUserData(snapshot.data!), builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!['givenName']);
                } else {
                  return Text('loading');
                }
              }),
            ),
            CupertinoListSection.insetGrouped(
              header: const Text('Quick Actions'),
              children: [
                CupertinoListTile.notched(
                  onTap: () => Navigator.push(
                      context, CupertinoPageRoute(builder: (context) => const Tasks())),
                  trailing: const CupertinoListTileChevron(),
                  title: const Text('tasks'),
                  leading: const Icon(CupertinoIcons.check_mark_circled),
                ),
                CupertinoListTile.notched(
                  onTap: () => Navigator.push(
                      context, CupertinoPageRoute(builder: (context) => const Settings())),
                  trailing: const CupertinoListTileChevron(),
                  title: const Text('help'),
                  leading: const Icon(CupertinoIcons.headphones , color: CupertinoColors.systemYellow,),
                ),
                CupertinoListTile.notched(
                  onTap: () => Navigator.push(
                      context, CupertinoPageRoute(builder: (context) => const Settings())),
                  trailing: const CupertinoListTileChevron(),
                  title: const Text('settings'),
                  leading: const Icon(CupertinoIcons.gear, color: CupertinoColors.systemGrey4,),
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
          ],
        ),
      ),
    );
  }
}
