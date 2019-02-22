## Download Instructions for Pixstream

```
$gr_modtool newmod timesync
$cd gr-timesync
gr-timesync$ gr_modtool add -t sync -l python
```

Match generated code below:
```
gr-timesync$ gr_modtool add -t sync -l python
GNU Radio module name identified: pixstream_source
Language: Python
Enter name of block/code (without module name prefix): pixstream_source
Block/code identifier: pixstream_source
Enter valid argument list, including default arguments: timesync
Add Python QA code? [Y/n] y
Adding file 'Python/pixstream_source.py'...
Adding file 'Python/qa_pixstream_source.py'...
Editing Python/CMakeLists.txt...
Adding file 'grc/timesync_pixstream_source.xml'...
Editing grc/CMakeLists.txt...
```
Navigate to the Python Folder, open pixstream_source.py and replace code

Navigate to the XML code in the grc folder open timsync_pixstream_source.xml and replace code

Create build in gr-timesync folder:

```
gr-timesync$ mkdir build
gr-timesync$ cd build
gr-timesync/build$ cmake ../
gr-timesync/build$ make
gr-timesync/build$ sudo make install
gr-timesync/build$ ldconfig

```

## Run Instructions for MAIN_SCRIPT

```
$python main_script.py
```
Reference [Download Page](https://www2.nau.edu/uavrt-p/index.php/downloads/) for video tutorial

note: 
  - must have flight controller (Pixhawk) plugged into companion computer on startup
  - must have necesseary system programs preinstalled reference [setup](https://www2.nau.edu/uavrt-p/index.php/docs/radiotelem/companion-computer/) for full download instructions