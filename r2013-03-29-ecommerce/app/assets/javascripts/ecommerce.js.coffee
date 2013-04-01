window.app =
  map: null
  markers: []
  ready: ->
    $('#form').on('click', 'a[data-clear-form]', app.clear_form)
    $('#index').on('keyup', '#search', app.filter_products)
  display_map: (lat, lng, zoom) ->
    mapOptions =
      center: new google.maps.LatLng(lat, lng)
      zoom: zoom
      mapTypeId: google.maps.MapTypeId.ROADMAP
    canvas = $('#map_canvas')[0];
    app.map = new google.maps.Map(canvas, mapOptions);
  add_marker: (lat, lng, title) ->
    latlng = new google.maps.LatLng(lat, lng);
    marker = new google.maps.Marker({position: latlng, map: app.map, title: title});
    app.markers.push(marker);
  clear_markers: ->
    marker.setMap(null) for marker in app.markers
    app.markers = []
  clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()
  filter_products: (e) ->
    input = $('#search').val()
    settings=
      dataType: 'script'
      type: 'get'
      url: "/products/search?query=#{input}"
    $.ajax(settings)

$('#document').ready(app.ready)