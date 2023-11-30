/*
* Copyright © 2021 - 2023 Joe Smullen
*
* This Source Code Form is subject to the terms of the Mozilla Public
* License, v. 2.0. If a copy of the MPL was not distributed with this
* file, You can obtain one at https://mozilla.org/MPL/2.0/.
*/

import ddf.minim.*;

Minim minim;
AudioPlayer anthem;
AudioPlayer hello;

PImage globe, flag;

// variable to keep track of which screen the user is on - ranges from 0 to 20
int screen = 0; 

void setup() {
    size(800, 800);
    screen = 0;
    globe = loadImage("flags/globe.jpg");
    background(globe);  
    minim = new Minim(this);
}

void draw() {      
    textSize(30);
    strokeWeight(2);
    
    // box containing relevant info at the top of the screen
    // text changes depending on value of the "screen" variable
    fill(#EAE3CD); // box colour
    rect(220,5,350,50,5);
    fill(0); // text colour
    
    switch (screen) {
        case 0:
            text("Choose a continent", 275, 40);
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            text("Choose a country", 290, 40);
            break;
        case 5:
            text("Kenya", 355, 40);
            break;
        case 6:
            text("Morocco", 340, 40);
            break;
        case 7:
            text("Nigeria", 350, 40);
            break;
        case 8:
            text("Uganda", 345, 40);
            break;
        case 9:
            text("Brazil", 350, 40);
            break;
        case 10:
            text("Canada", 345, 40);
            break;
        case 11:
            text("Mexico", 345, 40);
            break;
        case 12:
            text("USA", 360, 40);
            break;
        case 13:
            text("China", 350, 40);
            break;
        case 14:
            text("Japan", 360, 40);
            break;
        case 15:
            text("South Korea", 310, 40);
            break;
        case 16:
            text("Taiwan", 350, 40);
            break;
        case 17:
            text("France", 350, 40);
            break;
        case 18:
            text("Germany", 330, 40);
            break;
        case 19:
            text("Ireland", 350, 40);
            break;
        case 20:
            text("Russia", 350, 40);
            break;
    }

    // box at the bottom of the screen explaining the controls
    fill(#EAE3CD);
    rect(140, 745, 530, 50, 5);
    fill(0);
    text("Press [R] to restart, [B] to go back", 200, 780);
    
    //////////////////////////////////////////////////////////////
    
    // box 1
    if (screen == 0) {
        fill(#009933);
    } else if (screen < 5) {
        fill(0,255,0);
    } else {
        // draw the flag in the rectangle's place
        // technically the rectangle is still there for some reason but it adds borders around the
        // flag so that's cool
        switch (screen) {
            case 5:
                flag = loadImage("flags/kenya.jpg");
                break;
            case 6:
                flag = loadImage("flags/morocco.jpg");
                break;
            case 7:
                flag = loadImage("flags/nigeria.jpg");
                break;
            case 8:
                flag = loadImage("flags/uganda.jpg");
                break;
            case 9:
                flag = loadImage("flags/brazil.png");
                break;
            case 10:
                flag = loadImage("flags/canada.png");
                break;
            case 11:
                flag = loadImage("flags/mexico.png");
                break;
            case 12:
                flag = loadImage("flags/usa.png");
                break;
            case 13:
                flag = loadImage("flags/china.png");
                break;
            case 14:
                flag = loadImage("flags/japan.png");
                break;
            case 15:
                flag = loadImage("flags/southkorea.png");
                break;
            case 16:
                flag = loadImage("flags/taiwan.png");
                break;
            case 17:
                flag = loadImage("flags/france.png");
                break;
            case 18:
                flag = loadImage("flags/germany.jpg");
                break;
            case 19:
                flag = loadImage("flags/ireland.jpg");
                break;
            case 20:
                flag = loadImage("flags/russia.jpg");
                break;
        }

        // the coordinates are "staggered" (for lack of a better term) slightly so there can be a
        // black border around the flag
        image(flag, 41, 151, 299, 199);
    }

    if (screen < 5) {
        rect(40, 150, 300, 200);
        textSize(50);
        fill(0);
          
        switch (screen) {
            case 0:
                text("Africa", 130, 260);
                break;
            case 1:
                text("Kenya", 120, 260);
                break;
            case 2:
                text("Brazil", 125, 260);
                break;
            case 3:
                text("China", 125, 260);
                break;
            case 4:
                text("France", 120, 260);
                break;
        }
    }
    
    //////////////////////////////////////////////  

    // box 2
    if (screen == 0) {
        fill(#1682E2);
    } else if (screen < 5) {
        fill(255,0,0);
    } else {
        fill(#FF9900); // orange
    }

    rect(450, 150, 300, 200);
    textSize(50);
    fill(0);

    switch (screen) {
        case 0:
            text("America", 515, 260);
            break;
        case 1:
            text("Morocco", 510, 260);
            break;
        case 2:
            text("Canada", 520, 260);
            break;
        case 3:
            text("Japan", 540, 260);
            break;
        case 4:
            text("Germany", 505, 260);
            break;
    }

    if (screen > 4) {
        textSize(30);
        fill(255,0,0);
        text("Capital City:", 525, 225);

        // change font size to make capital city larger
        textSize(35); 
        fill(0);

        // display the capital city of the selected country
        // clicking on the box at this point does nothing
        switch (screen) {
            case 5:
                text("Nairobi", 540, 280);
                break;
            case 6:
                text("Rabat", 555, 280);
                break;
            case 7:
                text("Abuja", 555, 280);
                break;
            case 8:
                text("Kampala", 530, 280);
                break;
            case 9:
                text("Brasília", 540, 280);
                break;
            case 10:
                text("Ottawa", 545, 280);
                break;
            case 11:
                text("Mexico City", 515, 280);
                break;
            case 12:
                text("Washington DC", 490, 280);
                break;
            case 13:
                text("Beijing", 545, 280);
                break;
            case 14:
                text("Tokyo", 550, 280);
                break;
            case 15:
                text("Seoul", 555, 280);
                break;
            case 16:
                text("Taipei", 550, 280);
                break;
            case 17:
                text("Paris", 560, 280);
                break;
            case 18:
                text("Berlin", 555, 280);
                break;
            case 19:
                text("Dublin", 550, 280);
                break;
            case 20:
                text("Moscow", 540, 280);
                break;
        }
    }
    
    //////////////////////////////////////////////

    // box 3
    if (screen == 0) {
        fill(#E80C0C);
    } else if (screen < 5) {
        fill(0,120,240);
    } else {
        fill(#00FFFF); // light blue
    }

    rect(40, 450, 300, 200);
    textSize(50);
    fill(0);

    switch (screen) {
        case 0:
            text("Asia", 145, 560);
            break;
        case 1:
            text("Nigeria", 110, 560);
            break;
        case 2:
            text("Mexico", 115, 560);
            break;
        case 3:
            text("S. Korea", 100, 560);
            break;
        case 4:
            text("Ireland", 115, 560);
            break;
    }

    // when clicked, this box plays the national anthem
    // known issue: if clicked several times, one anthem plays over another
    if (screen > 4) {
        textSize(30);
        fill(0,0,255);
        text("National Anthem", 80, 550);
    }

    //////////////////////////////////////////////

    // box 4
    if (screen == 0) {
        fill(#EAEC3D);
    } else if (screen < 5) {
        fill(0,125,125);
    } else {
        fill(#00FFFF); // same light blue as box 3 - to indicate both are clickable
    }

    rect(450, 450, 300, 200);
    textSize(50);
    fill(0);

    switch (screen) {
        case 0:
            text("Europe", 525, 560);
            break;
        case 1:
            text("Uganda", 515, 560);
            break;
        case 2:
            text("USA", 550, 560);
            break;
        case 3:
            text("Taiwan", 520, 560);
            break;
        case 4:
            text("Russia", 525, 560);
            break;
    }

    if (screen >= 5) {
        textSize(30);
        fill(255,0,0);
        text("Hello!", 560, 500);
        fill(0);

        // play "hello" in one of the country's main languages, and also display it in text form
        // (some of these are just general greetings rather than literal translations of "hello")
        //
        // chinese/japanese/korean/arabic characters couldn't display right so i put their latin
        // forms in instead (russian/cyrillic worked though)
        switch (screen) {
            case 5:
                text("Habari!", 550, 550);
                text("Language: Swahili", 485, 600);
                break;
            case 6:
                text("Marhaban!", 530, 550);
                text("Language: Arabic", 490, 600);
                break;
            case 7:
                text("Báwo ni?", 540, 550);
                text("Language: Yoruba", 490, 600);
                break;
            case 8:
                text("Habari!", 550, 550);
                text("Language: Swahili", 485, 600);
                break;
            case 9:
                text("Olá!", 570, 550);
                text("Language: Portuguese", 460, 600);
                break;
            case 10:
                text("Hello!", 560, 550);
                text("Language: English", 485, 600);
                break;
            case 11:
                text("Hola!", 560, 550);
                text("Language: Spanish", 480, 600);
                break;
            case 12:
                text("Hello!", 560, 550);
                text("Language: English", 485, 600);      
                break;
            case 13:
                text("Ni hao!", 555, 550);
                text("Language: Chinese", 480, 600);
                break;
            case 14:
                text("Konnichiwa!", 520, 550);
                text("Language: Japanese", 475, 600);
                break;
            case 15:
                text("Annyeonghaseyo!", 485, 550);
                text("Language: Korean", 485, 600);
                break;
            case 16:
                text("Ni hao!", 555, 550);
                text("Language: Chinese", 480, 600);
                break;
            case 17:
                text("Bonjour!", 540, 550);
                text("Language: French", 485, 600);
                break;
            case 18:
                text("Hallo!", 560, 550);
                text("Language: German", 480, 600);
                break;
            case 19:
                text("Dia dhuit!", 540, 550);
                text("Language: Irish", 500, 600);
                break;
            case 20:
                text("Привет!", 550, 550);
                text("Language: Russian", 480, 600);
                break;
        }
    }
}

void mousePressed() {
    if (mousePressed) {
        // the initial screen
        if (screen == 0) {            
            // africa
            if (mouseX > 40 && mouseX < 340 && mouseY > 150 && mouseY < 350) {
                screen = 1;
            }
            // america
            if (mouseX > 450 && mouseX < 750 && mouseY > 150 && mouseY < 350) {
                screen = 2;
            }
            // asia
            if (mouseX > 40 && mouseX < 340 && mouseY > 450 && mouseY < 650) {
                screen = 3;
            }
            // europe
            if (mouseX > 450 && mouseX < 750 && mouseY > 450 && mouseY < 650) {
                screen = 4;
            }
        } else if (screen == 1) {  
            // african countries
            // kenya
            if (mouseX > 40 && mouseX < 340 && mouseY > 150 && mouseY < 350) {
                screen = 5;
            }
            // morocco
            if (mouseX > 450 && mouseX < 750 && mouseY > 150 && mouseY < 350) {
                screen = 6;
            }
            // nigeria
            if (mouseX > 40 && mouseX < 340 && mouseY > 450 && mouseY < 650) {
                screen = 7;
            }
            // uganda
            if (mouseX > 450 && mouseX < 750 && mouseY > 450 && mouseY < 650) {
                screen = 8;
            }
        } else if (screen == 2) {  
            // american countries
            // brazil
            if (mouseX > 40 && mouseX < 340 && mouseY > 150 && mouseY < 350) {
                screen = 9;
            }
            // canada
            if (mouseX > 450 && mouseX < 750 && mouseY > 150 && mouseY < 350) {
                screen = 10;
            }
            // mexico
            if (mouseX > 40 && mouseX < 340 && mouseY > 450 && mouseY < 650) {
                screen = 11;
            }
            // usa
            if (mouseX > 450 && mouseX < 750 && mouseY > 450 && mouseY < 650) {
                screen = 12;
            }
        } else if (screen == 3) {  
            // asian countries
            // china
            if (mouseX > 40 && mouseX < 340 && mouseY > 150 && mouseY < 350) {
                screen = 13;
            }
            // japan
            if (mouseX > 450 && mouseX < 750 && mouseY > 150 && mouseY < 350) {
                screen = 14;
            }
            // south korea
            if (mouseX > 40 && mouseX < 340 && mouseY > 450 && mouseY < 650) {
                screen = 15;
            }
            // taiwan
            if (mouseX > 450 && mouseX < 750 && mouseY > 450 && mouseY < 650) {
                screen = 16;
            }
        } else if (screen == 4) {  
            // european countries
            // france
            if (mouseX > 40 && mouseX < 340 && mouseY > 150 && mouseY < 350) {
                screen = 17;
            }
            // germany
            if (mouseX > 450 && mouseX < 750 && mouseY > 150 && mouseY < 350) {
                screen = 18;
            }
            // ireland
            if (mouseX > 40 && mouseX < 340 && mouseY > 450 && mouseY < 650) {
                screen = 19;
            }
            // russia
            if (mouseX > 450 && mouseX < 750 && mouseY > 450 && mouseY < 650) {
                screen = 20;
            }
        } else {
            // play the national anthem - box 3 (bottom left)
            // or play the hello - box 4 (bottom right)
            if (mouseX > 40 && mouseX < 340 && mouseY > 450 && mouseY < 650) {
                playAnthem();
            } else if (mouseX > 450 && mouseX < 750 && mouseY > 450 && mouseY < 650) {
                playHello();
            }
        }
    }
}

void keyPressed() {
    // press r to restart at any time, case insensitive
    if (key == 'r' || key == 'R') {
        setup();
    }

    // press b to go back to the previous screen
    if (key == 'b' || key == 'B') {
        // if on any of the "choose a country" screens, go back to the initial screen
        if (screen > 0 && screen < 5) {
            screen = 0;
        } else if (screen >= 5 && screen < 9) {
            // go back to choosing african countries
            screen = 1;
        } else if (screen >= 9 && screen < 13) {
            // american countries
            screen = 2;
        } else if (screen >= 13 && screen < 17) {
            // asian countries
            screen = 3;
        } else if (screen >= 17 && screen < 21) {
            // european countries
            screen = 4;
        }
    }

    // press p to pause the audio - doesn't work without throwing exceptions

    /*
    if (key == 'p' || key == 'P') {
        if (anthem.isPlaying()) {
            anthem.pause();
        }
        
        if (hello.isPlaying()) {
            hello.pause();
        }
    }
    */
}

void playAnthem() {
    // play the national anthem of the selected country for a few seconds
    switch (screen) {
        case 5:
            anthem = minim.loadFile("anthems/kenya.mp3");
            break;
        case 6:
            anthem = minim.loadFile("anthems/morocco.mp3");
            break;
        case 7:
            anthem = minim.loadFile("anthems/nigeria.mp3");
            break;
        case 8:
            anthem = minim.loadFile("anthems/uganda.mp3");
            break;
        case 9:
            anthem = minim.loadFile("anthems/brazil.mp3");
            break;
        case 10:
            anthem = minim.loadFile("anthems/canada.mp3");
            break;
        case 11:
            anthem = minim.loadFile("anthems/mexico.mp3");
            break;
        case 12:
            anthem = minim.loadFile("anthems/usa.mp3");
            break;
        case 13:
            anthem = minim.loadFile("anthems/china.mp3");
            break;
        case 14:
            anthem = minim.loadFile("anthems/japan.mp3");
            break;
        case 15:
            anthem = minim.loadFile("anthems/southkorea.mp3");
            break;
        case 16:
            anthem = minim.loadFile("anthems/taiwan.mp3");
            break;
        case 17:
            anthem = minim.loadFile("anthems/france.mp3");
            break;
        case 18:
            anthem = minim.loadFile("anthems/germany.mp3");
            break;
        case 19:
            anthem = minim.loadFile("anthems/ireland.mp3");
            break;
        case 20:
            anthem = minim.loadFile("anthems/russia.mp3");
            break;
    }

    // prevent the anthems from overlapping if the button is clicked more than once
    if (! anthem.isPlaying()) {
        anthem.play();
    } else {
        // this doesn't work as intended
        anthem.pause();
        anthem.rewind();
    }

    // prevent anthem and hello from playing together
    // this works, but only if hello is played first
    // if the anthem is played first it throws an exception and i don't know why

    /*
    if (! hello.isPlaying()) {
        anthem.play();  
    } else {
        hello.pause();
    }
    */
}

void playHello() {
    // say "hello" in one of the country's main languages
    switch (screen) {
        case 5:
            hello = minim.loadFile("hellos/swahili.mp3");
            break;
        case 6:
            hello = minim.loadFile("hellos/arabic.mp3");
            break;
        case 7:
            hello = minim.loadFile("hellos/yoruba.mp3");
            break;
        case 8:
            hello = minim.loadFile("hellos/swahili.mp3");
            break;
        case 9:
            hello = minim.loadFile("hellos/portuguese.mp3");
            break;
        case 10:
            hello = minim.loadFile("hellos/english-us.mp3");
            break;
        case 11:
            hello = minim.loadFile("hellos/spanish.mp3");
            break;
        case 12:
            hello = minim.loadFile("hellos/english-us.mp3");
            break;
        case 13:
            hello = minim.loadFile("hellos/chinese.mp3");
            break;
        case 14:
            hello = minim.loadFile("hellos/japanese.mp3");
            break;
        case 15:
            hello = minim.loadFile("hellos/korean.mp3");
            break;
        case 16:
            hello = minim.loadFile("hellos/chinese.mp3");
            break;
        case 17:
            hello = minim.loadFile("hellos/french.mp3");
            break;
        case 18:
            hello = minim.loadFile("hellos/german.mp3");
            break;
        case 19:
            hello = minim.loadFile("hellos/irish.mp3");
            break;
        case 20:
            hello = minim.loadFile("hellos/russian.mp3");
            break;
    }
    
    // prevent hellos from overlapping - also doesn't work as intended
    if (! hello.isPlaying()) {
        hello.play();
    } else {
        hello.pause();
        hello.rewind();
    }
    
    // prevent anthem and hello from playing together - doesn't work, throws an exception
    
    /*
    if (anthem.isPlaying() && hello.isPlaying()) {
        anthem.pause();
    } else {
        hello.play();
    }
    */
}
