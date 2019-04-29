/*
Sound_01_Intro
Author: Alexandros Lotsos
Summary: A sketch that demonstrates how to the basics of working with sound files in p5.js. Covers the following:
    (1) Loading a sound file
    (2) Playing/Pausing/Stopping a sound file
    (3) Controlling the volume and playback rate of a sound file, as well as the audio panning.

This sketch will use some p5.dom methods to create a gui that will allow us to interact with our song.
*/

//container for our song
var file;

//sliders to control the volume, rate, and panning of our song
var ampSlider;
var rateSlider;
var panSlider;
//play/pause button, jump button
var playButton;

//use preload to make sure that large files like audio files have loaded
function preload() {
    //load our soundfile with loadSound
    file = loadSound("../Sounds/TheProcess.mp3");
}

function setup() {
    createCanvas(600, 600);
    background(0);
    noStroke();

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

    //draw the progress bar for the song
    rect(0, height - 50, map(file.currentTime(), 0, file.duration(), 0, width), 50);
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

