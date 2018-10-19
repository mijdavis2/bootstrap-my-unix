# Install Guake

The first step is to install guake. Its available in the repositories, so install it right away.
> from http://www.binarytides.com/install-guake-xubuntu-14-04/

```bash
sudo apt-get install guake
```

## Fix error - "Guake can not init!"

After installation, try launching Guake from the Application Menu. It should be in the System category. On Xubuntu, Guake might fail to launch with the following error message

```bash
Guake can not init!

Gconf Error.
Have you installed guake.schemas properly?
```

The above error occurs, because the guake.schemas file is not found in the correct location. To fix this error, simply run the following commands

```bash
sudo mkdir /etc/gconf/schemas
cd /etc/gconf/schemas/
sudo ln -s /usr/share/gconf/schemas/guake.schemas
```

Now try launching Guake again and it should work.

## Configure Guake to startup at logon

On Xubuntu guake is not configured to startup at logon automatically. This has to be done manually, but is not difficult.

Go to All Settings > Session and Startup. Go to "Application Autostart" tab and click Add. Fill in the following details

```bash
Name - Guake
Description - Guake dropdown terminal
Command - /usr/bin/guake
```

Click OK and close it. Next time when you boot, Guake terminal should load right after logging in to the desktop.

You can also run the following command to configure guake to autostart at logon.

```bash
cp /usr/share/applications/guake.desktop /etc/xdg/autostart/
```
