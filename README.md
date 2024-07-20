<!-- Aesthetic polybar -->

 ![Aesthetic Polybar](screenshots/2024072012255676_1.jpg)

<p align="center">
  <img src="https://img.shields.io/github/stars/Alopes01/Aesthetic-Polybar?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/Alopes01/Aesthetic-Polybar?style=for-the-badge">
  <img src="https://img.shields.io/github/forks/Alopes01/Aesthetic-Polybar?style=for-the-badge">
</p>



## 


 ![Aesthetic Polybar](screenshots/dark.gif)


##
 ![Aesthetic Polybar](screenshots/light.gif)

##


## Introduction
Welcome to the Aesthetic-Polybar repository! This collection features beautifully designed Polybar themes tailored for various styles and preferences, including dark mode, light mode, and more. Customize your desktop environment with ease and style.

## Features
- 🌑  **Dark Mode Themes**: Sleek and modern designs for dark mode enthusiasts.
- 🌕 **Light Mode Themes**: Clean and bright themes for light mode users.
- 🎨 **Custom Colors**: Easily switch between different color schemes.
- 🚀 **Easy Installation**: Simple scripts to install and apply themes.

## Showcase

<details>
<summary><b>Dark-theme 🌑 </b></summary>

![Aesthetic Polybar](screenshots/2024-07-19_13-43.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-43_1.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-44.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-44_1.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-45.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-45_1.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-46.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-47.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-54.png)

![Aesthetic Polybar](screenshots/2024-07-19_13-57.png)


</details>


<details>
<summary><b>Dark-theme 🌕 </b></summary>

![Aesthetic Polybar](screenshots/2024-07-19_14-01.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-02.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-02_1.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-03.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-03_1.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-04.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-04_1.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-05.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-07.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-08.png)


</details>

## Requirements
- **Polybar**: Make sure you have Polybar installed. You can follow the instructions [here](https://github.com/polybar/polybar).
- **Pywal**: Required for pywal themes.


## Installation
### Step 1: Clone the Repository
```sh
mkdir Aesthetic-Polybar
cd Aesthetic-Polybar
git clone https://github.com/Alopes01/Aesthetic-Polybar.git
```
### Step 2: Make the two scripts executable
```sh
chmod +x install.sh
chmod +x test.sh
```
### Step 3: Run the installer script
```sh
./install.sh
```
![here](screenshots/instaler.png)

- This script will install fonts and copy the polybar configs to the ``.config`` folder, if you have any polybar configs there the script will make a backup of them.

- After that, you can select the options that you'd like to test and the script will output them for you.

## Testing bars multiple times 

You can't run the installer script multiple times, so there is a script to do it :

```sh
./test.sh
```
![here](screenshots/2024-07-19_13-41.png)

![here](screenshots/2024-07-19_13-42.png)

## Dont forget to:
Set the polybar to execute on startup ``polybar -c $HOME/.config/polybar/(theme)/(COLOR).ini``  (copy this line and set it to execute on start up)

## What this repo doesn't contain ❌
- Rofi powermenu and wifimenu scripts, I recommend [these](https://github.com/adi1090x/rofi)

- Custom Wallpaper support, but if this repo reaches to 60 stars ⭐️, this month there will be a survey in the issues where you will post your favourite wallpaper. The 10 most popular ones will get a custom colored polybar .

## Example of custom wallpapers

![Aesthetic Polybar](screenshots/2024-07-19_14-10_1.png)

![Aesthetic Polybar](screenshots/2024-07-19_14-12.png)


## Warnings ⚠️

Please i'm a human if you find any errors report them in the issues section

- If the temperature module doesn't work try, changing to your grafics card in the polybar config.
- For those who want to use the dark green color the name of the config is green-dark.ini.


## To do list

- Fix the vertical alignment