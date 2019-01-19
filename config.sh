##########################################################################################
#
# Unity Config Script
# by topjohnwu, modified by Zackptg5
#
##########################################################################################

##########################################################################################
# Installation Message - Don't change this
##########################################################################################

print_modname() {
  ui_print " "
  ui_print "    *******************************************"
  ui_print "    *<name>*"
  ui_print "    *******************************************"
  ui_print "    *<version>*"
  ui_print "    *<author>*"
  ui_print "    *******************************************"
  ui_print " "
}

##########################################################################################
# Defines
##########################################################################################

# NOTE: This part has to be adjusted to fit your own needs

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=true

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=true

# Unity Variables
# Uncomment and change 'MINAPI' and 'MAXAPI' to the minimum and maxium android version for your mod (note that unity's minapi is 21 (lollipop) due to bash and magisk binaries)
# Uncomment SEPOLICY if you have sepolicy patches in common/sepolicy.sh. Unity will take care of the rest
# Uncomment DYNAMICOREO if you want libs installed to vendor for oreo and newer and system for anything older
# Uncomment DYNAMICAPP if you want anything in $INSTALLER/system/app to be installed to the optimal app directory (/system/priv-app if it exists, /system/app otherwise)
# Uncomment SYSOVERRIDE if you want the mod to always be installed to system (even on magisk)
# Uncomment DEBUG if you want full debug logs (saved to SDCARD)
MINAPI=27
MAXAPI=28
#SEPOLICY=true
#SYSOVERRIDE=true
#DYNAMICOREO=true
#DYNAMICAPP=true
DEBUG=true

# Custom Variables for Install AND Uninstall - Keep everything within this function - runs before uninstall/install
unity_custom() {

GEMINI=$(grep "ro.product.device=gemini" $SYS/build.prop)
CAPRICORN=$(grep "ro.product.device=capricorn" $SYS/build.prop)
NATRIUM=$(grep "ro.product.device=natrium" $SYS/build.prop)

APILEVEL=$(grep_prop ro.build.version.sdk $SYS/build.prop)

# // OLD LOGIC
#BPROP=$SYS/build.prop

# // OLD LOGIC
#BPROP="/system/build.prop $VEN/build.prop";
#
#OREO=$INSTALLER/custom/Oreo
#PIE=$INSTALLER/custom/Pie
#MIUI=$INSTALLER/custom/MIUI
#
#fi
#GEMINI=$(grep "ro.product.device=gemini")
#CAPRICORN=$(grep "ro.product.device=capricorn")
#NATRIUM=$(grep "ro.product.device=natrium")
#
#API26=$(grep "ro.build.version.sdk=26" $BPROP)
#API27=$(grep "ro.build.version.sdk=27" $BPROP)
#API28=$(grep "ro.build.version.sdk=28" $BPROP)
}

# Things that ONLY run during an upgrade (occurs after unity_custom) - you probably won't need this
# A use for this would be to back up app data before it's wiped if your module includes an app
# NOTE: the normal upgrade process is just an uninstall followed by an install
unity_upgrade() {
  : # Remove this if adding to this function
}

# Custom Variables for Install AND Uninstall - Keep everything within this function - runs before uninstall/install
unity_custom() {
  : # Remove this if adding to this function
}

# Custom Functions for Install AND Uninstall - You can put them here


##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# By default Magisk will merge your files with the original system
# Directories listed here however, will be directly mounted to the correspond directory in the system

# You don't need to remove the example below, these values will be overwritten by your own list
# This is an example
REPLACE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here, it will overwrite the example
# !DO NOT! remove this if you don't need to replace anything, leave it empty as it is now
REPLACE="
"

##########################################################################################
# Custom Permissions
##########################################################################################

set_permissions() {
  : # Remove this if adding to this function

  # Note that all files/folders have the $UNITY prefix - keep this prefix on all of your files/folders
  # Also note the lack of '/' between variables - preceding slashes are already included in the variables
  # Use $VEN for vendor (Do not use /system$VEN, the $VEN is set to proper vendor path already - could be /vendor, /system/vendor, etc.)

  # Some examples:

  # For directories (includes files in them):
  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)

  # set_perm_recursive $UNITY/system/lib 0 0 0755 0644
  # set_perm_recursive $UNITY$VEN/lib/soundfx 0 0 0755 0644

  # For files (not in directories taken care of above)
  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)

  # set_perm $UNITY/system/lib/libart.so 0 0 0644
}
