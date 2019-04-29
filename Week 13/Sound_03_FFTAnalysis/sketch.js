/*
Sound_03_FFTAnalysis
Author: Alexandros Lotsos
Summary: A sketch that shows how to create a music visualizer based on the amplitudes in the different frequency bands using the p5.FFT object.
Using the p5.FFT analyze method we can get distinct volumes over time in the high/mid/low frequencies of a sound to create interesting visuals.
To learn more about the audio spectrum check out: https://en.wikipedia.org/wiki/Audio_frequency
*/

//file container for our song
var file;

//sliders to control volume, play rate and panning
var ampSlider;
var rateSlider;
var panSlider;

//button to play/pause the song
var playButton;

//our FFT object that will do the analysis
var fft;

//preload our song
function preload(){
    file = loadSound("../Sounds/TheProcess.mp3");
}

function setup(){
    createCanvas(600, 600);
    background(0);
    stroke(255);

    //define sliders
    ampSlider = createSlider(0, 1, 0.5, 0.01);
    rateSlider = createSlider(0.2, 5, 1, 0.1);
    panSlider = createSlider(-0.5, 0.5, 0, 0.01);

    //define the button and attach an event handler to it
    playButton = createButton("Pause");
    playButton.mousePressed(songToggle);

    //define our FFT object using the new keyword
    fft = new p5.FFT();

    //Play the song
    file.play();
}

function draw(){
    //query the sliders for values
    file.amp(ampSlider.value());
    file.rate(rateSlider.value());
    file.pan(panSlider.value());

    //get the audio spectrum values for a given frame.
    //Returns an array of amplitudes accross different frequencies.
    //The default sampling rate is 1024. Pass in another power of two to change the rate.
    var spectrum = fft.analyze(512);

    //use getEnergy to get the average amplitude in a given frequency range (bass, mid, treble etc.)
    colorMode(RGB, 255);
    var bass = fft.getEnergy("bass");
    var mid = fft.getEnergy("mid");
    var treble = fft.getEnergy("treble");

    background(bass, mid, treble);

    colorMode(HSB, 512, 100, 100);
    //draw a line of varying height for each sample in the spectrum
    for(var i = 0; i < spectrum.length; i++){
        if(spectrum[i] === 0){
            continue;
        }
        stroke(i, 100, 100);
        line(30 + i, height - 50, 30 + i, height - 50 - spectrum[i]);
    }

    //if the song is SUPER slow, invert the colors
    if(rateSlider.value() < 0.3){
        filter(INVERT);
    }

}

//function to be attached to playButton. Will start/stop the song depending on if it's playing
function songToggle(){
    if(file.isPlaying()){
        file.pause();
        playButton.html("Play");
    }else{
        file.play();
        playButton.html("Pause");
    }
}