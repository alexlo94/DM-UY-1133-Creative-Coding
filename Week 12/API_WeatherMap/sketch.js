
//this is our url, remember to include http(s):// in the beggining
var url = "http://api.openweathermap.org/data/2.5/box/city?bbox=19,34,28,41,10&appid=a48d054a73253d53c6b8336fd3c7ba6c";

/*
var urlBase = "https://api.openweather.map.org/data/2.5/weather?";
var urlQuery = "q=London";
var urlAppID = ""
*/

//define a container for our results
var results;

//boolean to make sure that we have our data before we do anything
var loaded = false;


//preload runs before setup
//use it to load stuff like data/images/sounds/etc.
//we're gonna use this to ping openweather and have our data ready for the sketch
function preload(){
    //use httpGet to query openWeather
    results = httpGet(url, 'json', false, function(response){
        results = response.list;
        console.log(results);
        //set loaded to true
        loaded = true;
    });

}

function setup(){
    //canvas paramters
    createCanvas(600, 600);
    background(150);
    colorMode(HSB, 100, 100, 100);
}

function draw(){
    //if we don't have our data yet, then return from the function
    //don't do anything
    if(!loaded){
        return;
    }
    //console.log(results);
    //noLoop();

    for(let i = 0; i < results.length; i++){
        //get the current city
        let currCity = results[i];
        //map east/west(long) to x
        let x = map(currCity.coord.Lon, 19, 28, 0, width);
        //map norht/south(lat) to y
        let y = map(currCity.coord.Lat, 34, 41, height, 0);
        fill(map(currCity.main.temp, 0, 40, 0, 100), 100, currCity.clouds.today);
        //draw the circle at x,y
        circle(x, y, 5);
        //console.log(results[i].name);
    }

}
