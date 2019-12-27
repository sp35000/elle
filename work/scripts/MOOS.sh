# Copyright (c) 2003-2009 Stand By Soft, Ltd. All rights reserved.
#
# This software is the proprietary information of Stand By Soft, Ltd.
# Use is subject to license terms.

LOCALCLASSPATH="$CLASSPATH"
LOCALCLASSPATH="lib/MOOS.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/BrowserLauncher2.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/swingx.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/jdatepicker.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/jlfgr-1_0.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/itext.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/jxl.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/AppleJavaExtensions.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/mpxj.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/commons-lang.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/commons-logging.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/poi.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/jaxb-api.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/jaxb-impl.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/activation.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/jsr173_1.0_api.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/l2fprod-common-buttonbar.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/mac_widgets.jar":"$LOCALCLASSPATH"
LOCALCLASSPATH="lib/forms-1.2.1.jar":"$LOCALCLASSPATH"

java -cp $LOCALCLASSPATH com.sbs.jpm.Main ${1:+"$@"}
