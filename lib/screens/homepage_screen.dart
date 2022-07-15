import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../data/data.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/following_user.dart';
import '../widgets/post_carousel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageContrroller;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    _pageContrroller = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Text(
          "FRENZY",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
            letterSpacing: 10.0,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).colorScheme.primary,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 18,
          ),
          tabs: const [
            Tab(
              text: "Trending",
            ),
            Tab(
              text: "Latest",
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          FollowingUser(),
          PostCarousel(
            pageController: _pageContrroller,
            title: "Post",
            posts: posts,
          )
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
