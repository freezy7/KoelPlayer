import 'dart:ui';

import 'package:app/models/models.dart';
import 'package:app/providers/providers.dart';
import 'package:app/ui/widgets/app_bar.dart';
import 'package:app/ui/widgets/bottom_space.dart';
import 'package:app/ui/widgets/pull_to_refresh.dart';
import 'package:app/ui/widgets/song_list_buttons.dart';
import 'package:app/ui/widgets/song_row.dart';
import 'package:app/ui/widgets/sortable_song_list.dart';
import 'package:app/ui/widgets/spinner.dart';
import 'package:flutter/material.dart' hide AppBar;
import 'package:provider/provider.dart';

SortField _currentSortOrder = SortField.title;

class ArtistDetailsScreen extends StatefulWidget {
  static const routeName = '/artist';

  const ArtistDetailsScreen({Key? key}) : super(key: key);

  @override
  _ArtistDetailsScreenState createState() => _ArtistDetailsScreenState();
}

class _ArtistDetailsScreenState extends State<ArtistDetailsScreen> {
  SortField _sortOrder = _currentSortOrder;

  Future<List<Object>> buildRequest(int artistId, {bool forceRefresh = false}) {
    return Future.wait([
      context
          .read<ArtistProvider>()
          .resolve(artistId, forceRefresh: forceRefresh),
      context
          .read<SongProvider>()
          .fetchForArtist(artistId, forceRefresh: forceRefresh),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    int artistId = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body: FutureBuilder(
        future: buildRequest(artistId),
        builder: (_, AsyncSnapshot<List<dynamic>> snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return const Center(child: const Spinner());
          }

          var artist = snapshot.data![0] as Artist;
          var songs = sortSongs(
            snapshot.data![1] as List<Song>,
            orderBy: _sortOrder,
          );

          return PullToRefresh(
            onRefresh: () => buildRequest(artistId, forceRefresh: true),
            child: CustomScrollView(
              slivers: <Widget>[
                AppBar(
                  headingText: artist.name,
                  actions: [
                    SortButton(
                      options: {
                        SortField.title: 'Song title',
                        SortField.album: 'Album',
                        SortField.recentlyAdded: 'Recently added',
                      },
                      currentSortField: _sortOrder,
                      onActionSheetActionPressed: (SortField order) {
                        _currentSortOrder = order;
                        setState(() => _sortOrder = order);
                      },
                    ),
                  ],
                  backgroundImage: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: artist.image,
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                  coverImage: Hero(
                    tag: "artist-hero-${artist.id}",
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: artist.image,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        boxShadow: const <BoxShadow>[
                          const BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10.0,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (songs.isNotEmpty)
                  SliverToBoxAdapter(child: SongListButtons(songs: songs)),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, int index) => SongRow(
                      song: songs[index],
                      listContext: SongListContext.artist,
                    ),
                    childCount: songs.length,
                  ),
                ),
                const BottomSpace(),
              ],
            ),
          );
        },
      ),
    );
  }
}
