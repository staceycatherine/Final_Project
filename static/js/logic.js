//  Add consol.log to check to see if our code is working
console.log("working");

// Create the map object with a center and zoom level
let map = L.map('mapid').setView([40.7, -94.5], 4);

// Alternate create method
// let map = L.map("mapid", {
    // center: [
        // 40.7, -94.5
        // ],
        // zoom: 4
// });

// We create the tile layer that will be the background of our map.
let streets = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    accessToken: API_KEY
});
//d3.json("Resources/people_loc.json").then(function(data){
  //  L.geoJSON(data).addTo(map);
//})

// Then we add our 'graymap' tile layer to the map.
streets.addTo(map);