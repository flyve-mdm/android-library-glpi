#!/usr/bin/env bash
#
#  LICENSE
#
#  This file is part of the GLPI API Client Library for Java,
#  a subproject of GLPI. GLPI is a free IT Asset Management.
#
#  GLPI is free software: you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either version 3
#  of the License, or (at your option) any later version.
#
#  GLPI is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  -------------------------------------------------------------------------------
#  @copyright Copyright © 2018 Teclib. All rights reserved.
#  @license   GPLv3 https://www.gnu.org/licenses/gpl-3.0.html
#  @link      https://github.com/glpi-project/java-library-glpi
#  @link      http://www.glpi-project.org/
#  @link      https://glpi-project.github.io/java-library-glpi/
#  @link      https://bintray.com/glpi-project/teclib-repository/java-library-glpi
#  -------------------------------------------------------------------------------
#

# Since we will download a video, we require integrity checking with CRC32c
# But the crcmod installation in the docker image isn't using the module's C extension
# So, uninstall it and install again with the C extension
echo "y" | sudo pip uninstall crcmod

sudo pip install -U crcmod

# create json key file
#echo $GCLOUD_SERVICE_KEY | base64 --decode --ignore-garbage > ${HOME}/gcloud-service-key.json
echo ${GCLOUD_SERVICE_KEY} > ${HOME}/gcp-key.json

gcloud auth activate-service-account --key-file ${HOME}/gcp-key.json
gcloud --quiet config set project ${GCLOUD_PROJECT}

# Run Instrumented test
gcloud firebase test android run \
  --type instrumentation \
  --app ~/glpi/example_java/build/outputs/apk/androidTest/debug/example_java-debug-androidTest.apk \
  --test ~/glpi/example_java/build/outputs/apk/debug/example_java-debug.apk \
  --device model=Nexus6,version=25,locale=en,orientation=portrait  \
  --timeout 90s