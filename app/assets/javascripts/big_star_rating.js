/*!
 * Based on jQuery Raty - A Star Rating Plugin - http://wbotelhos.com/raty - this function/class is.
 * ---------------------------------------------------------------------
 */

var rating_for_profile = $(function(profile_id, avg_rating) {
  $('.big_star_rating').raty({
    cancel:       false,
    half:         false,
    hintList:     ['I will NOT recommend', 'I am unlikely to recommend', 'OK', 'I might recommend', 'I will happily recommend to others'],
    size:         24,
    starOff:      'star-off-big.png',
    starOn:       'star-on-big.png',
    starHalf:     'star-half-big.png',
    start:        function() {
                    return $(this).attr('avg_rating');
                  },

    click: function(score, evt) {
      return(score); 
      // alert('score: ' + score + '\nevent: ' + evt + '\nID: ' + $(this).attr('id') + 
      //         '\nprofile: ' + $(this).attr('profile_id')  + '\navg_rating: ' + $(this).attr('avg_rating') );
    }
  });
});

var rating_for_profile = $(function(profile_id, avg_rating) {
  $('.big_star_rating_direct').raty({
    cancel:       false,
    half:         false,
    hintList:     ['I will NOT recommend', 'I am unlikely to recommend', 'OK', 'I might recommend', 'I will happily recommend to others'],
    size:         24,
    starOff:      'star-off-big.png',
    starOn:       'star-on-big.png',
    starHalf:     'star-half-big.png',
    start:        function() {
                    return $(this).attr('avg_rating');
                  },

    click: function(score, evt) {
      $.ajax({
        url: "/profiles/" + $(this).attr('profile_id') + "/profile_ratings/" + $(this).attr('pr_id') + '.js',
        type: 'put',
        data: {'score':score}
      });
    }
  });
});

$('.big_star_read_only').raty({
  cancel:       false,
  halfShow:     true,
  hintList:     ['I will NOT recommend', 'I am unlikely to recommend', 'OK', 'I might recommend', 'I will happily recommend to others'],
  size:         24,
  starOff:      'star-off-big.png',
  starOn:       'star-on-big.png',
  starHalf:     'star-half-big.png',
  start:        function() {
                  return $(this).attr('avg_rating');
                },
  readOnly:     true,
}); 