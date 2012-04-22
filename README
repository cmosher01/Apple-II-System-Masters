
A2DOSKIT

Apple ][ Series Disk Operating System, Version 3.x, Kit

Version 1.0.

Constructed by Chris Mosher chris@mosher.mine.nu in 2007.

Available from http://mosher.mine.nu/apple2/

These disks are provided for research purposes.



This kit contains various floppy disk image files of the
different versions of Apple DOS 3.x (commonly called DOS 3.3).

Each directory corresponds to a different version of DOS.
Each DOS version is listed below, with its original release
date from Apple, and the directory devoted to it:

version       release date   directory
--------------------------------------
DOS 3.1       1978-07-20     310      
DOS 3.2       1979-02-16     320      
DOS 3.2.1     1979-07-31     321      
DOS 3.3 (0)   1980-08-25     330      
DOS 3.3 (1)   1983-01-01     331      
DOS 3.3 (2)   1983-08-??     332      

Note that there are 3 different releases of version 3.3; they
are all called "DOS 3.3" but here I number them from 0 to 2
just to help distinguish them from one another.



Each directory contains several sets of floppy disk images
in different formats. The following file extensions are used:

extension  format
---------------------------------------------------------------------------
.do        Apple ][ logical disk image, 16-sectors per track,
           DOS sector order.
.d13       Apple ][ logical disk image, 13-sectors per track,
           DOS sector order.
.nib       Apple ][ physical nibble image, $1A00 raw nibbles per track,
           physical sector order.

Generally there is a pair of images for each disk, one nibble image (.nib)
and one logical image (.do or .d13), representing the same logical data.



Each directory contains a readme.txt file with detailed information about
the images in that directory.



The types of disks in each directory are summarized here:



ORIGINAL

Original DOS System Master Disk images, either nibble or regular, as I
obtained them (either from the Asimov repository or elsewhere). The
source is noted in the readme.txt for each version, if it is known.
Note that DOS 3.2 and 3.2.1 each had two master disks ("Standard" and
"Plus").



STOCK INIT and MASTERCREATED

Using the AppleWin Emulator, and the original System Master disks, I
inserted blank nibble images, and ran the DOS INIT command to create
the stockXXXinit.nib image.  Then I converted it to the corresponding
.d13 or .do logical image. These are commonly called "slave" disks.

Then I ran the MASTER CREATE program (or equivalent) from the System
Master on the freshly INITed nibble image to create a fresh master disk
nibble image stockXXXmastercreated.nib. Then I converted that to the
corresponding .d13 or .do logical image.



CLEAN SYSMAS

Using my Apple2Src assembly source files for building DOS, I built each
version of DOS. The result of the build is a .nib and .do/.d13 image
for each version.

NOTE THAT THESE IMAGES ARE BUILT WITH "NODELAY" DEFINED, which causes
the images to be created without the normal delay routines built into
DOS. (For example, DOS waits for the disk to come up to speed after
turning on the drive motor, and waits after moving the disk arm to a
different track). This means that the images will run noticably faster
in emulators, but will NOT run on the orginal real Apple ][ machines.
These images will also have some of the data areas zeroed out.

Using these clean disk images (which are not included here, but are
included with the Apple2Src release instead), and Copy ][ Plus 5.5,
I copied all the files onto them from the original System Master disks.
Then I set them to boot the HELLO program, fixed the file sizes, and
verified the disks.

Then I converted these to nibble images (or vice versa, as necessary).
These nibble images are also "clean", in the sense that they have a
consistent number of FF bytes between sections, and that the "rotational"
positioning of the data in each track is consistent. Note that, for the
13-sector DOS disks, this involved first using nibble images (because
the AppleWin emulator doesn't recognize .d13 images) to do the work,
then converting to .d13 with CiderPress (which doesn't de-nibblize
sector 0 on track 0 correctly), manually copying the correct sector 0,
then converting back to nibble image again using my own conversion
program (found in my A2CDT, Apple 2 Command-line Disk-image Tools).
