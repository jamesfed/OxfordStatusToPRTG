# OxfordStatusToPRTG
This project will read the University of Oxford Status API and digest it into PRTG Network Monitor.

This project was created by James Preston of AN Security to demonstrate the usefulness of the REST Custom sensor in PRTG; if you are looking for support in deploying PRTG (or just in need of a licence renewal or upgrade) get in touch with us at - https://www.ansecurity.com/contact.

## Getting the files into your PRTG install
1. Clone or download as a ZIP the source.
2. Copy/paste the folders **Custom Sensors** and **lookups** into the root of your PRTG install (typically C:\Program Files (x86)\PRTG Network Monitor).
3. Login to your PRTG install and head to **Setup > Administrative Tools** (you will be asked to login with admin credentials again) and click Go! next to **Load Lookups and File Lists**
4. Create a new Device in PRTG (no auto discovery required) with the hostname **status.it.ox.ac.uk**
5. Each service group will need adding individually as PRTG will only allow 50 channels per sensor, click **Add Sensor**
6. Select the **REST Custom BETA** (hopefully this feature will be out of BETA soon!)
7. See the Useful lists > Service groups section for a list of the service names (e.g. Administrative Systems), enter the first service name into the **Sensor Name** box
8. Leaving all other settings as they are set the **REST query** to **/api/services.json** and from the **REST Configuration** drop down select the template which matches the format **oxford_service group.template** e.g. oxford_Administrative Systems.template
9. Click **create** and watch the data flow :)

## Useful lists

### API Path for the sensor
/api/services.json

### Service groups
* Administrative Systems
* Backup services
* Desktops and Devices
* Mail and Phones
* Network connectivity
* Technical, Platforms and Environments
* Weblearn
