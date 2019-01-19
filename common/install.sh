if [ "$GEMINI" ] || [ "$CAPRICORN" ] || [ "$NATRIUM" ]; then COMPATIBLEDEVICE=1; else COMPATIBLEDEVICE=0;
fi

if [ $COMPATIBLEDEVICE -eq 1 ] && [ $APILEVEL -eq 26 ]; then cp -f $INSTALLER/custom/MIUI $UNITY/system;
fi

if [ $COMPATIBLEDEVICE -eq 1 ] && [ $APILEVEL -eq 27 ]; then cp -f $INSTALLER/custom/Oreo $UNITY/system;
fi

if [ $COMPATIBLEDEVICE -eq 1 ] && [ $APILEVEL -eq 28 ]; then cp -f $INSTALLER/custom/Pie $UNITY/system;
fi

#   // OLD LOGIC
#fi
#GEMINI=$(grep "ro.product.device=gemini")
#CAPRICORN=$(grep "ro.product.device=capricorn")
#NATRIUM=$(grep "ro.product.device=natrium")
#APILEVEL=$(grep_prop ro.build.version.sdk $SYS/build.prop)

#   // OLD LOGIC
#API26=$(grep "ro.build.version.sdk=26" $BPROP)
#API27=$(grep "ro.build.version.sdk=27" $BPROP)
#API28=$(grep "ro.build.version.sdk=28" $BPROP)
#
#if [ "$GEMINI" ] || [ "$CAPRICORN" ] || [ "$NATRIUM" ] || [ "$API26" ]; then cp -f $INSTALLER/custom/MIUI $UNITY /system
#if [ "$GEMINI" ] || [ "$CAPRICORN" ] || [ "$NATRIUM" ] || [ "$API27" ]; then cp -f $INSTALLER/custom/Oreo $UNITY /system
#if [ "$GEMINI" ] || [ "$CAPRICORN" ] || [ "$NATRIUM" ] || [ "$API28" ]; then cp -f $INSTALLER/custom/Pie $UNITY /system
