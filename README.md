# Agatha's Apothecary

## Created by Audrey Smyczek, Cat Martins, and Daniela Martinez

Welcome to Agatha's Apothecary! Let's get started!

Agatha's Apothecary is a potion mixing game where the user is able to select the ingredients that they want to mix together and make a potion.

## Code Styling
??????

## Image of the Main Gameplay Screen
IMAGE HERE

## Framework Used
Agatha's Apothecary was created using the [Godot Game Engine](https://godotengine.org/) (version 4.1.1) with gdscript.

All of the images used in Agatha's Apothecary were designed and created by Daniela Martinez using [Krita](https://krita.org/en/).

## Reason for Creation
Agatha's Apothecary was created specifically for Software Design and Development (Comp 225) at Macalester College. 

We were fearlessly lead by Lauren Milne.

## Why Agatha's Apothecary?
Agatha's Apothecary was created for burnt out college students who need a relaxing, yet productive, video game to bring a small dose of joy into their lives. Agatha's Apothecary was made to motivate people to create and mix and try again and just have fun. Since this was the goal, there is no need for the user to collect resources or complete levels, they just need to mix the ingredients that are available.

## Code Information and Explanation
Since the code is structured through Godot, it is formatted in a tree structure which means that the children nodes (also known as Scenes) can be accessed through the parent nodes. This allows the parent nodes, such as the main screen, to hold children nodes, such as bowls or ingredients. Scripts can be attached to any number of nodes in Godot and the overlap of code can often be confusing. Code that was written in a child's script can be pulled by the parent, for example, the code for the bowls to expand when the mouse hovers over it is linked to the image sprite. The image sprite is a child of the larger bowl node. When the bowl node is loaded into the main scene, it automatically includes the image sprite and the script that accomanies it. This means that the main node cannot directly access the image's script however it does inherit the code that is included in it. 

## How to Download the Game
In order to play, you need to first download the [Godot Game Engine](https://godotengine.org/). Then, clone the GitHub repository to your computer. Once that is done, open Godot and click the "Scan" button in the Project Manager window. Select the location of your cloned repository and let the project open. Once open, you can run by clicking the "and scene" button in the top right corner. Another window will pop up with Agatha's Apothecary. 

## Current Errors
ADD HERE

## Future Work
Add ons in the future. Recipe Book. More Animations. NPCs who are customers and request potions. A Bird. A Cat? More Ingredients. Putting a Potion in a potion bottle.

## Credits
Lauren Milne for her dedication to accessibility and support throughout the process.

Paul Cantrell for his willingness to assist us during [Dev Garden](https://devgarden.macalester.edu/) Hours.

[README structure](https://www.mygreatlearning.com/blog/readme-file/#:~:text=readme%20file%20is.-,What%20is%20a%20README%20File%3F,about%20the%20patches%20or%20updates.)

[Signal import code](https://kidscancode.org/godot_recipes/3.x/basics/custom_resources/index.html)

## Game License
LICENSE
