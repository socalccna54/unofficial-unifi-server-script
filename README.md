# UniFi Script
Simple script that installs Unifi Server into a Debian based Linux server
<br> </br>
Tested on Debian 12.9.0 and Ubuntu 24.04.01 LTS
<br> </br>
All credit goes to eW4GJMqscYtbBkw9 from reddit, here is his post: https://www.reddit.com/r/UNIFI/comments/1deaeoj/how_to_guide_installing_unifi_network_application/

<h3>WARNING</h3>
DISCLAIMER: Use at your own risk. I'm not responsible for anything that could happen to your device/s.

<h1>Instructions</h1>

<h2>Pre-requistes</h2>
-This script assumes you are running a Debian based server and have the basics of sudoers installed and running on a standard user account, please refer to other guides if you don't know what sudoers/sudo is. Some documentation that might help: https://help.ubuntu.com/community/Sudoers<br></br>
-Make sure you install curl if you don't have it with the following command:<br></br>
<code>sudo apt install curl</code><br></br>
-While not necessary, I strongly suggest you have a static IP on your server, follow this guide in order to do so:<br></br>
https://thelinuxforum.com/articles/611-how-to-set-static-ip-address-on-debian-12<br></br>

<h3>***IMPORTANT***</h3>
-Make sure you do a full backup of your system before running this script, if running a VM in a virtualized platform, 
you can also create a snapshot prior to running this script to easily revert back in case of an issue


<h1>Run this single command</h1>
<code>curl -L https://raw.githubusercontent.com/socalccna54/unifiscript/refs/heads/main/unifi-server-install-script.sh | bash</code><br></br>

