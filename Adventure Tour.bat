@echo off
color 3f
:start
echo.
echo Welcome to Adventure Tour
echo.
echo Press A to Play, B for instructions or C to quit
echo.
echo Please answer in capital letters.
set/p letter=
if %letter% equ A  goto A
if %letter% equ B goto B
if %letter% equ C goto C
if %letter% equ a  goto A
if %letter% equ b goto B
if %letter% equ c goto C
:C
exit
:B
cls
echo.
echo Instructions are simple just answer the questions in CAPITAL Letters.
echo.
pause
goto A
:A
cls
echo.
echo Please answer in capital letters only
pause
cls
echo.
echo Hello Adevturer!
echo. 
echo What is your name?
echo.
set/p name=
echo.
echo Hello %name%, My name is Anchit.
echo.
echo Where do you want to go?
echo.
echo TOWN, HILLS or FOREST?
set/p where=
if %where% equ TOWN goto town
if %where% equ HILLS goto hills
if %where% equ FOREST goto forest
:town
cls
echo.
echo Ok! Let's head to the town.
pause
goto meeting
:hills
cls
echo.
echo Ok! Let's head to the hills.
pause
goto meeting
:forest
cls
echo.
echo Ok! Let's head to the forest.
pause
goto meeting
:meeting
echo.
echo Can You see someone up there?
echo.
echo YES or NO?
set/p see=
if %see% equ YES goto yes
if %see% equ NO goto no
:yes
echo.
echo Let's talk with him.
pause
goto unknown
:no
echo.
echo Okay, if you tell then lets continue or trip.
pause
echo.
echo Don't you think the man I told that I saw is following us?
echo.
echo Let's talk with him.
pause
goto unknown
: unknown
cls
echo.
echo Hey! Who are you?
echo.
echo The Unkwown man said Well I'm an... Uh... Er... Actually I am an Adventurer.
echo.
echo Hi, he is %name% and I am Anchit and we are adventurers too.
echo.
echo But well what is your name?
echo.
echo The Unknown man said Errr. Ummm. Huh? but why do you want to known?
echo.
echo Tell Me, %name%, You also want to know? Huh?
echo.
echo YES or NO?
set/p unknown=
if %unknown% equ YES goto name
if %unknown% equ NO goto noname
:name
cls
echo.
echo The Unknown man said Ok! Ok! My name is
echo.
echo is...
pause
echo.
echo Sam
echo.
echo But why didn't you tell your name earlier?
echo.
echo The Unknown man said Because everybody laughed and teased my name.
echo.
echo But I really like your name.
echo.
echo Anyways. Bye Bye. We are going to the %where%. Let's go %name%.
pause
goto inthe
:noname
pause
echo.
echo Ok. As you wish. Let's continue our trip to %where%, %name%.
pause
goto inthe
:inthe
echo.
echo Hey, %name%, do you know the way to the %where%?
echo.
echo YES or NO?
set/p way=
if %way% equ YES goto way
if %way% equ NO goto noway
:way
echo.
echo Ok! Then let's continue our journey.
goto journey
pause
goto sam
:noway
echo.
echo Then let's ask somebody.
echo.
echo Go ask that man, %name%
PAUSE
echo.
echo The man said to turn left and then walk straight and turn left from the post office and walk for around 3 km to get to the %where%
pause
echo.
echo Okay then! Lets go!
pause
exit