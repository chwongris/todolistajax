var map;

function initMap() {
 var myLatlng = new google.maps.LatLng(40.7509915, -73.9888797);

 var mapOptions = {
  center: myLatlng,
  zoom: 12,
  mapTypeControlOptions: {
    mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
  }
};


var styles = [
{
  stylers: [
  { hue: "#00ffe6" },
  { saturation: -20 }
  ]
},{
  featureType: "road",
  elementType: "geometry",
  stylers: [
  { lightness: 100 },
  { visibility: "simplified" }
  ]
},{
  featureType: "road",
  elementType: "labels",
  stylers: [
  { visibility: "off" }
  ]
}
];

var styledMap = new google.maps.StyledMapType(styles,
  {name: "Styled Map"});

map = new google.maps.Map($("#map-canvas")[0],
  mapOptions);

map.mapTypes.set('map_style', styledMap);
map.setMapTypeId('map_style');



};

function addMarker(latitude, longitude, title) {
  
  var markerLatlng = new google.maps.LatLng(latitude, longitude);
  var marker = new google.maps.Marker({
    position: markerLatlng,
    map: map,
    title: title
  
  });
};


