/*
Sound_02_AmplitudeAnalysis
Author: Alexandros Lotsos
Summary: An extension of Sound_01 that also includes a visual indicator of the volume of the song at any given time.
Uses the p5.Amplitude object to keep track of the volume in the tab. Will draw an ellipse in the center of the window that changes radius based on volume
and a graph of the volume of the song across time
*/

//container for our song
var file;

//sliders to control the volume, rate, and panning of our song
var ampSlider;
var rateSlider;
var panSlider;
//play/pause button, jump button
var playButton;

//container for our amplitude object
var amp;

//array container for our volume graph
var graph = [];

//use preload to make sure that large files like audio files have loaded
function preload() {
    //load our soundfile with loadSound
    file = loadSound("../Sounds/TheProcess.mp3");
}

function setup() {
    createCanvas(600, 600);
    background(0);
    stroke(255);

    //create our p5.Amplitude object
    amp = new p5.Amplitude();
    //set smoothness of the amplitude
    amp.smooth(0.8);

    /*create the UI*/
    //sliders -> syntax: createSlider(min, max, initialValue, stepSize);
    ampSlider = createSlider(0, 1, 0.5, 0.01);
    rateSlider = createSlider(0, 5, 1, 0.1);
    panSlider = createSlider(-1.0, 1.0, 0, 0.01);
    //buttons -> syntax: createButton(buttonText);
    playButton = createButton("Pause");

    //attach callback functions to our buttons
    playButton.mousePressed(toggleSong);

    //play the file
    file.play();
}

function draw() {
    background(0);

    //check ampSlider value to adjust the song's volume
    file.setVolume(ampSlider.value());
    file.rate(rateSlider.value());
    file.pan(panSlider.value());

    //use the getLevel() method to get the current volume of the song
    var vol = amp.getLevel();

    //push it to the volumes array
    graph.push(vol);

    //draw the amplitude graph based on the values in volumes
    noFill();
    beginShape();
    for(var i = 0; i < graph.length; i++){
        vertex(i, graph[i] * 600);
    }
    endShape();

    //use volume to draw a circle of such radius
    fill(255);
    circle(width/2, 3*height/4, vol*400);

    //if we have more than width values then delete the first one
    if(graph.length > width){
        graph.splice(0,1);
    }

}

//function to be called by the play/pause button will play/pause the song depending on isPlaying()
function toggleSong(){
    if(!file.isPlaying()){ //if the song isn't playing 
        file.play();
        playButton.html("Pause");
    }else{ //if the song is already playing
        file.pause();
        playButton.html("Play");
    }
}