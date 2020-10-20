# *Quest on Rails*

<img style="float: right;" src="https://img.shields.io/badge/ruby-%23CC342D.svg?&style=for-the-badge&logo=ruby&logoColor=white"/>
<img style="float: right;" src="https://img.shields.io/badge/rails%20-%23CC0000.svg?&style=for-the-badge&logo=ruby-on-rails&logoColor=white"/>
<img style="float: right;" src="https://img.shields.io/badge/postgres-%23316192.svg?&style=for-the-badge&logo=postgresql&logoColor=white"/>
<img style="float: right;" src="https://img.shields.io/badge/heroku%20-%23430098.svg?&style=for-the-badge&logo=heroku&logoColor=white"/>
{Brief description of application}, 10/20/2020

By **Joseph Karnafel, AJ Markow**


## Description

A role playing game in which users must go on quests, to obtain items by fighting enemies.  If they suceed and get enough Health Points, they win the game and a prize.

- "As a player, I want to accrue HP, so that I can win the game" 
- "As a player, I want the game to tell me when I hit the HP threshold, so that  I can know that I won the game."
 - "As a player, I want to be able to set my name."
- "As a player, I want to know when an enemy is defeated so I ca nget an item and earn HP by getitng that item."

## Setup/Installation Requirements

{Setup Requirements}

## Database Diagram
<img src="./DatabaseDiagram.png"/>

## Models Checklist

table quests{
  name text
  instructions text
  player_id FK
}

table items{
  name text
  user_id FK
}

table locations{
  name text
  id PK
}

table enemies{
  name text
  location_id FK
  defeated boolean
}

table users{
  name text x
  HP integer x
  id PK x
  location_id fK x

## Known Bugs

{Known Bugs}

## Support and contact details

{Contact Details}

## Technologies Used

{Technologies Used}

### License
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Copyright (c) 2020 ***Joseph Karnafel, AJ Markow***
