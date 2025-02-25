# RaspberryPiGoogleSlidesDisplay
Raspberry Pi Auto-Start and Bash Scripts to automatically display and advance a Google Slides Presentation on Startup

## Installation Instructions

1. Install Raspberry Pi OS on your RaspberryPi
    * Use Debian 12 (Bookworm) or newer
    * *Originally Built on RaspberryPiOS 5.2 newer versions should work

1. Publish a Google Slides Presentation
    * Go To File-Share-Publish To Web.
    * Then Select The Checkboxes for Start Slideshow as Soon as the Player Loads and Restart the Slideshow After the Last Slide
    * Select The Desired Time Between Slides.

1. Place the Published Link into RunPresentation.sh at the Top Where the Portion of the Google Slides Link Is
    * Make Sure What is in the Quotation Marks is the Exact Link From Google

1. Open RaspberryPi Settings, Go to Display, Toggle off the Screen Blanking Switch
    * Run the Following Command:
    ```
    xset -dpms
    ```

1. On the Raspberry Pi place the file runpresentation.desktop in /etc/xdg/autostart/
    * Run the Following Command:
    ```
        cp ~/runpresentation.desktop/ /etc/xdg/autostart/
    ```

1. On the Raspberry Pi place the file RunPresentation.sh in /usr/local/bin
    * Run the Following Command:
    ```
        cp ~/RunPresentation.sh/ /usr/local/bin/
    ```

1. Install xdotool and update the system
    * Run the Following Commands:
    ```
    sudo apt install xdotool
    sudo apt update
    sudo apt upgrade -y
    ```

1. Reboot the Raspberry Pi and it Should Start Your Presentation
    * Run the Following Command:
    ```
    sudo reboot
    ```