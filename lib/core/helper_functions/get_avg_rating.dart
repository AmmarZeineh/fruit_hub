getAvgRating(json) {
  var totalRating = 0.0;
  var ratingCount = 0;
  for (var i = 0; i < json.length; i++) {
    totalRating += json[i]['rating'];
    ratingCount++;
  }
  return totalRating / ratingCount;
}
