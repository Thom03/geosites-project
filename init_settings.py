# -*- coding: utf-8 -*-

###############################################
# Geosite settings
###############################################

import os
from geonode.contrib import geosites

# Directory of master site - for GeoSites it's two up
GEOSITES_ROOT = os.path.dirname(geosites.__file__)
#SITE_ROOT = os.path.dirname(__file__)

# read in GeoSites pre_settings
execfile(os.path.join(GEOSITES_ROOT, 'pre_settings.py'))

#SITE_ID = 1
#SITE_NAME = 'Master'
# Should be unique for each site
#SECRET_KEY = "fbk3CC3N6jt1AU9mGIcI"

# read in GeoSites post_settings
execfile(os.path.join(GEOSITES_ROOT, 'post_settings.py'))
