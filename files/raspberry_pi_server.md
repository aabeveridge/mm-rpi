# Raspberry Pi Data Collection Server

This is a tutorial on how to install MassMine on a Raspberry Pi 3 (Rpi), how to connect a large external hard disk drive (HDD) for data storage, and how to setup the Rpi to allow you to manage your data collection from another computer (ssh). Figure 3 depicts an example setup next to common household router. As is clear, the external 8TB HDD and the Rpi combined take up less space than the width of a hand:

![](./images/image2.jpg)

This setup is ideal for humanities and social science data labs, where researchers need to ensure that their on-going data collection efforts will not be disturbed or accidentally shutdown. Many scholars may not have the resources to dedicate an entire computer purely to data collection, and the $35 Raspberry Pi board allows for scholars or students to have a dedicated machine at a fraction of the cost (and energy use) of a new PC. Because MassMine requires very little computing resources to collect, compress, and archive data, connecting the Raspberry Pi to an external HDD provides the perfect alternative for long-term data collection projects. While the following tutorial utilizes a very large external HDD, a vast majority of long-term data collection projects with MassMine would be feasible with drives as small as 100GB. Tech savvy hackers could easily use a USB cable, like [this one from Amazon](https://www.amazon.com/Cable-Matters-Drive-Adapter-Optional/dp/B00U6JEKVA/ref=sr_1_4?ie=UTF8&qid=1476149305&sr=8-4&keywords=usb+cable+for+connecting+to+HDD), connected to a used HDD pulled from a broken laptop or older desktop computer.

## Getting Started

As shown in Figure 4, a small case with a fan ($13) was added to the Rpi to ensure that it stays cool and runs well long-term. This isn't necessary, as their are many options for cooling your Rpi---such as purchasing heat sinks (~$4) or simply leaving it out of the case and letting it cool in the open air. Because we opted for a setup that hides well on a shelf with other electronic components that also create heat, a small investment in cooling seemed worthwhile.

![](./images/image4.jpg)

Although the final setup will be headless, a temporary monitor, keyboard, and mouse will be needed during installation. After the installation is finished, the Rpi can be accessed remotely over ssh from other computers on your network, allowing you to unplug all of these devices and control your Rpi from another computer. However, until setup is complete, you will need to work with the Rpi directly.

## 1. Install the Raspbian Jessie with Pixel operating system on your Rpi

As required by the Raspberry Pi, a micro SD memory card will be needed to install the operating system. For this tutorial, a 32GB micro SD from Walmart was used ($12). To install the Raspbian operating system, follow the most up-to-date instructions at the [official Raspbian website](<https://www.raspberrypi.org/downloads/raspbian/>).


## 2. Open a Terminal (ctrl-alt-t) in Raspbian, and then build MassMine from source:

After the Raspbian OS is installed on the SD card, insert the SD card into the bottom of the Rpi, and then plug in the ethernet cable (connected to an internet router), keyboard, mouse, and monitor (HDMI). After all of these components are plugged in, power up the device by inserting the power source (micro usb) into the Rpi.

Using the chromium web browser provided by the Raspbian OS, visit the official [MassMine install page](http://www.massmine.org/docs/install.html), and follow the directions for installing MassMine. The installation website includes a version of MassMine built for use on the Raspberry Pi. Installation amounts to simply downloading a zipped file, unpacking the contents, and moving the resulting files to a folder of your choice.

Once MassMine has been successfully installed, test the setup by running the following command:

    massmine --task=google-country-trends

Data results in JSON format should print directly to the terminal---,in this case showing the top search trends for each country tracked by Google. After confirming that MassMine works, exit the terminal.

## 3. Connect the External Hard Drive

Return to the desktop of the Raspbian OS and plug in the external hard drive. Raspbian should recognize it automatically. In the case of the WD My Book external HDD chosen for this project, the Raspbian OS detected it automatically and no further drivers were required. In the event that an external drive is not detected automatically, it will be necessary to mount the drive manually through the terminal. 

After plugging in the drive, Raspbian will offer to list the device files in the file browser. Agree and navigate to the drive on the Rpi. The precise location of the drive is need for the data collected by MassMine. For standard installations of Raspbian, the external drive can be found at:

    /media/pi/<drive-name>

Figure 5 shows an example of the file browser and the location of the drive on an Rpi:

![](./images/drive-loc.png)

Write down this location and save it---it will be needed to begin collecting data with MassMine.


## 4. Setup SSH on Raspbian

Open a terminal in Raspbian and follow this [Instructables tutorial](http://www.instructables.com/id/Use-ssh-to-talk-with-your-Raspberry-Pi/). Note that the second step provided in the instructions below are for Windows users only. Linux and Mac OS users will not need to follow the second step of the tutorial because Linux and Mac already have terminals with SSH installed. On an Apple computer, locate the terminal by opening Finder and searching for an application called `terminal`. 

## 5. Test the Raspberry Pi Data Collection Server from Another Computer

Leave the Raspberry Pi powered on, but unplug the monitor, keyboard, and mouse. Place it in its final position and then log into the Rpi remotely from another computer on your network (according method described in the Instructables tutorial). Once logged in, navigate to the external drive with the following command. Be sure to replace `<drive-name>` with the actual name that Raspbian gave to your drive:

    cd /media/pi/<drive-name>

Once in the external drive folder, test MassMine with the following command:

    massmine --task=google-country-trends --output=test.json

Type the following command to see if MassMine collected data and saved it to the external drive:

    ls

If `test.json` is listed in the output, setup is complete. To ensure that data was successfully collected and saved to the `test.json` file, open the file with the following command (or any text editor) to see its contents:

    nano test.json

That's it! Have fun with your new data collection server!

<a href="using_massmine.html"><button type="button">Next Page</button></a>
