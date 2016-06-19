1. route to events index
1. make sure to use redirect_to instead of render when the url should change
1. get events for a single game_type with query string; i.e. '?game_type=name'
1. make game_type names uniq; add_index
1. distinguish between past and future events in views
1. move game_type nav to nav_sidebar
1. remove all other nav links
