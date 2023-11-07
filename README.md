# 🌍 world map

This is my project for CS171 (Computer Systems 1), an interactive world map made in Processing. Of
the 30 topics available, I chose this one due to my passion for geography.

The user can choose from four continents (Africa, the Americas, Asia, and Europe), each with four
countries. When the user selects a country, they can see the country's flag and capital city, as 
well as hear how to say "hello" in one of its main languages, and a brief snippet of the national 
anthem. The user can also restart or go back to the previous screen at any time.

I got most of the "hello" voices from [Sound of Text](https://soundoftext.com/); the exceptions 
being the Irish and Yoruba ones, which I had to hunt down from 
[focloir.ie](https://www.focloir.ie/) and [TTS Yoruba](https://ttsyoruba.com/), respectively, using
inspect element. I got the flags and national anthems from Wikipedia, and used 
[GIMP](https://www.gimp.org/) to reduce the size of the flags and 
[Audacity](https://www.audacityteam.org/) to shorten the anthems.

There is a bug where if the user clicks on the anthem or the "hello" several times, the audio plays
several times at once (i.e. they stack on top of each other). Likewise, if the anthem is playing 
and the user clicks the "hello" (or vice versa), one doesn't stop to "make room" for the other. I 
tried to fix this, but couldn't get it done in time; you can see my commented out attempts at doing 
so near the end of the code.

With this project, I learned how to create custom methods, as well as some basic UI and UX 
designing skills. If I were to do this project again, I'd:

- Fix that bug with the audio
- Break the code up into smaller files, rather than just the one, to make things more modular
- Try to find a better way to centre the text in the boxes, rather than just hardcoding it
- Use arrays to store information, rather than writing loads of switch statements
- Split the Americas into two, and add Oceania
- Add new countries (India, Italy, Ukraine, South Africa, etc)

I still don't know what grade I got for this project, but I got 82% for the overall module. The 
project was worth 34% of the overall mark, so I assume I did alright!

# 📄 licence

[MPL v2.0](https://www.mozilla.org/en-US/MPL/2.0/) for all the code.

I believe most, if not all, of the assets are in the public domain.
