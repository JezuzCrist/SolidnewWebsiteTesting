(function() {
  $(document).ready(function() {
    var adddiv, i, left, maxWidth, top, _results;
    maxWidth = 500;
    _results = [];
    for (i = 0; i < 100; i++) {
      top = i * 5;
      left = Math.floor(Math.random() * maxWidth);
      adddiv = '<div class="partical" style="height:5px; width:20px; top:' + top + ';left:' + left + '; background-color:red;"  ></div>';
      _results.push($('#container').append(adddiv));
    }
    return _results;
  });
}).call(this);
