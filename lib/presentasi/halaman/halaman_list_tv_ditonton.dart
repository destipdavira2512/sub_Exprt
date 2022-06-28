import 'package:cinta_film/common/state_enum.dart';
import 'package:cinta_film/common/utils.dart';
import 'package:cinta_film/presentasi/provider/tvls/watchlist_tvls_notifier.dart';
import 'package:cinta_film/presentasi/widgets/tvls_card_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class watchlistTvlsPage extends StatefulWidget {
  static const ROUTE_NAME = '/watchlist-tv';

  @override
  _watchlistTvPageState createState() => _watchlistTvPageState();
}

class _watchlistTvPageState extends State<watchlistTvlsPage> with RouteAware {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<watchlistTvlsNotifier>(context, listen: false)
            .fetchwatchlistTv());
  }

  void didPopNext() {
    Provider.of<watchlistTvlsNotifier>(context, listen: false)
        .fetchwatchlistTv();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Tonnton TV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<watchlistTvlsNotifier>(
          builder: (context, data, child) {
            switch (data.watchlistTvState) {
              case RequestState.Loading:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case RequestState.Loaded:
                return ListView.builder(
                  itemBuilder: (context, index) {
                    final tv = data.watchlistTv[index];
                    return TvlsCard(tv);
                  },
                  itemCount: data.watchlistTv.length,
                );
              default:
                return Center(
                  key: Key('error_message'),
                  child: Text(data.message),
                );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}
