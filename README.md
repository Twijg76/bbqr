# BBQR
**BBQR is a better QR**

QR-codes (Quick Responce Code)are used more and more, for information, for menu's... but they always contain just a link to a website so without internet, you can't use them. Frustrated with this, I looked for a way to put all that information in the QR-code itself. These are scripts that will do that for you. Because the space is limited, we make a tar.gz archive of the folder or file(s) you want to include and make a binary QR-code containing that archive. When decoding, it unqzips and untars the data and automatically opens the index file (be it index.html, index.md, index.cpp...) in your standard program for that file format.



## Why?
1. Why gzip? *It is a standard on linux and the web and not a bad compression algoritm.*
2. Why tar? *For a single file, not using tar saves space but the benefit is that it keeps file extensions which help determining the type and that it can contain multiple files like an index.html* and *a style.css.*
3. Why QR-codes? *Because they are the best know and most used way of having scannable codes for the general public.*
4. Why can't I use something else than tar.gz? *Maybe, in the future, we should have a few bytes discribing what is encoded in the rest of the QR-code so everyone can use their favourite file format.*
5. Why did you make this? *Because I couldn't find anyone else who has done it and I want it.*
6. Why is there no licence? *I'm still thinking about which one to choose, maybe the LGPL is best? I don't know yet.*
7. Why the name BBQR? *I first used bqr, better qr, but then saw the opportunity of putting bbq in there and couldn't resist.*

*secret non-why questions...*

8. Can I rely on this? *Yes you can if you stick to a specific version, it is all very trivial, but the format of the codes may change in the future.*
9. How do I know a code is a BBQR-code? *Not, maybe we should take advantage of the error-correcting and add a little symbol in the code.* 
10. Can I use this to encode images? *Yes but probably no, an image you can't print clearly on the space of a qr-code will not suddenly be encodable in that little space.*


## Tested
I succesfully used this to encode and decode:
* The complete Pizza Hut Menu including all sizes and variants
* A simple html webpage with css
* This index.md file
