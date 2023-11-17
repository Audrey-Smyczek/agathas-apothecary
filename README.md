# Agatha's Apothecary

Welcome to _Agatha's Apothecary_! Let's get started!

Agatha's Apothecary is a potion mixing game where the user is able to select the ingredients that they want to mix together and make a potion.

Created by [Cat Martins](https://github.com/catmartz), [Audrey Smyczek](https://github.com/Audrey-Smyczek), and [Daniela Martinez](https://github.com/martinezdaniela17).

## Code Structure
The code is split into 4 main folders, _**Bowl, Cauldron, Fonts, and Main.**_

_Bowl, Cauldron, and Main contain the following:_

**Scripts**, the written out code, that are uppercase and end in '.gd'.

**Images** that are lowercase and end in '.png'.

**Scenes**, that are the containers which combine the scripts and images, which are a combination of uppercase and lowercase and end in '.tscn'.

_Bowl also contains:_

**Resources**, custom item type that can be shared across files and hold custom fields, which are camelCase and end in '.tres'.

_Fonts contains:_

Files of downloadable fonts which are uppercase and end in '.ttf'.

## Code Styling
The code is located in the '.gd' script files. 

The files start with 'extends' which informs the code what type of node the script is created for.

There are two ways to load information into the script immediatly, either '@onready' below the 'extends' statement and above any function statements or through the function '_ready()'.

Following the ready statements, which are not neccesary, functions are defined using 'func' followed by the function name. The function can either take parameters, information that it needs to use within the function, or not.

Functions that are marked with a green arrow to the left of the line numbers indicates that the function has a connection to an outside signal that will indicate for the function when to run.

Comments are marked with '#' at the start of the line, they are bypassed when the code is run.

## Main Gameplay Screen
<img width="991" alt="Agatha's-Apothecary-Main-Screen" src="https://github.com/Audrey-Smyczek/agathas-apothecary/assets/98111335/8a4a1c9b-bc45-4aaa-b3f1-b4a73c4cf8c3">

## Framework Used
Agatha's Apothecary was created using the [Godot Game Engine](https://godotengine.org/) (version 4.1.1) with gdscript.

All of the images used in Agatha's Apothecary were designed and created by Daniela Martinez using [Krita](https://krita.org/en/).

## Reason for Creation
Agatha's Apothecary was created specifically for Software Design and Development (Comp 225) at Macalester College. 

We were fearlessly led by Lauren Milne.

## Why Agatha's Apothecary?
Agatha's Apothecary was created for burnt out college students who need a relaxing, yet productive, video game to bring a small dose of joy into their lives. Agatha's Apothecary was made to motivate people to create and mix and try again and just have fun. Since this was the goal, there is no need for the user to collect resources or complete levels, they just need to mix the ingredients that are available.

## Code Information and Explanation
Since the code is structured through Godot, it is formatted in a tree structure which means that the children nodes (also known as Scenes) can be accessed through the parent nodes. This allows the parent nodes, such as the main screen, to hold children nodes, such as bowls or ingredients. Scripts can be attached to any number of nodes in Godot and the overlap of code can often be confusing. Code that was written in a child's script can be pulled by the parent, for example, the code for the bowls to expand when the mouse hovers over it is linked to the image sprite. The image sprite is a child of the larger bowl node. When the bowl node is loaded into the main scene, it automatically includes the image sprite and the script that accomanies it. This means that the main node cannot directly access the image's script however it does inherit the code that is included in it. 

## How to Download the Game
In order to play, you need to first download the [Godot Game Engine](https://godotengine.org/). Then, clone the GitHub repository to your computer. Once that is done, open Godot and click the "Scan" button in the Project Manager window. Select the location of your cloned repository and let the project open. Once open, you can run by clicking the "add scene" button in the top right corner. Another window will pop up with Agatha's Apothecary. 

## Current Errors
The color mixing is not fully working, there are a series of bugs which cause the mixed color to be an incorrect mixture.

## Future Work
Changing Agatha's hair once a potion color has been created by the user. Allowing the user to clear the potion from the cauldron or allowing them to place the cauldron in a potion bottle.

Recipe Book. More Animations. NPCs who are customers and request potions. A Bird. A Cat? More Ingredients.

## Credits
Lauren Milne for her dedication to accessibility and support throughout the process.

Paul Cantrell for his willingness to assist us during [Dev Garden](https://devgarden.macalester.edu/) Hours.

[README Structure](https://www.mygreatlearning.com/blog/readme-file/#:~:text=readme%20file%20is.-,What%20is%20a%20README%20File%3F,about%20the%20patches%20or%20updates.)

[Signal Import Code](https://kidscancode.org/godot_recipes/3.x/basics/custom_resources/index.html)

[Global Variables](https://youtu.be/sc-tEPdLZhk?si=rPEOMSKtXi5BGy9X)

[Custom Resources](https://www.youtube.com/watch?v=vzRZjM9MTGw)

## Game License
LICENSE
