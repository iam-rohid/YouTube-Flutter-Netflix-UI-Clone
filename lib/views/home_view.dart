import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/widgets/cw_movie_card.dart';
import 'package:netflix_clone/widgets/featured_movie.dart';
import 'package:netflix_clone/widgets/movie_card.dart';
import 'package:netflix_clone/widgets/top_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _showTobBar = true, _flag = true;
  ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        _flag = _scrollController.position.userScrollDirection ==
            ScrollDirection.forward;
        if (_showTobBar != _flag) setState(() {});
        _showTobBar = _flag;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeaturedMovie(
                  image: "assets/images/movies/movie17.jpg",
                ),
                SizedBox(height: 10),
                loadPopularOnNetflix(),
                SizedBox(height: 10),
                loadTrendingNow(),
                SizedBox(height: 10),
                loadContinueWatching(),
                SizedBox(height: 10),
                loadNewReleases(),
                SizedBox(height: 10),
              ],
            ),
          ),
          AnimatedPositioned(
            top: _showTobBar ? 0 : -80,
            duration: Duration(milliseconds: 300),
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _showTobBar ? 1 : 0,
              child: IgnorePointer(
                ignoring: !_showTobBar,
                child: TopBar(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loadPopularOnNetflix() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Popular on Netflix",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("assets/images/movies/movie12.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie3.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie2.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie14.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie13.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie10.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie18.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie8.jpg"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget loadTrendingNow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Trending Now",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("assets/images/movies/movie17.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie7.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie5.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie17.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie18.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie11.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie13.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie20.jpg"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget loadNewReleases() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "New Releases",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("assets/images/movies/movie3.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie19.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie17.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie20.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie14.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie10.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie6.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/movie8.jpg"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget loadContinueWatching() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Continue Watching",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              CWMovieCard(
                image: AssetImage("assets/images/movies/movie3.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              CWMovieCard(
                image: AssetImage("assets/images/movies/movie19.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              CWMovieCard(
                image: AssetImage("assets/images/movies/movie17.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              CWMovieCard(
                image: AssetImage("assets/images/movies/movie20.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              CWMovieCard(
                image: AssetImage("assets/images/movies/movie14.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              CWMovieCard(
                image: AssetImage("assets/images/movies/movie10.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              CWMovieCard(
                image: AssetImage("assets/images/movies/movie6.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              CWMovieCard(
                image: AssetImage("assets/images/movies/movie8.jpg"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
