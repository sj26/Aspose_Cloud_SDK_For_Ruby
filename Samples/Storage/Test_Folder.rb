# Copyright (c) Aspose 2002-2014. All Rights Reserved.
#
# LICENSE: This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 3
# of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://opensource.org/licenses/gpl-3.0.html>;.
#
# @package Aspose_Cloud_SDK_For_Ruby
# @author  Assad Mahmood Qazi <assad.mahmood@aspose.com>
# @link    https://github.com/asposeforcloud/Aspose_Cloud_SDK_For_Ruby/tree/revamp

# Require asposecloudsdk
require File.dirname(File.dirname(File.dirname(__FILE__))) + '/lib/asposecloud'

app_sid = '****'
app_key = '****'

Aspose::Cloud::Common::AsposeApp.app_key = app_key
Aspose::Cloud::Common::AsposeApp.app_sid = app_sid
Aspose::Cloud::Common::AsposeApp.output_location = 'path/to/output/location'
Aspose::Cloud::Common::Product.set_base_product_uri('http://api.aspose.com/v1.1')

# Create object of folder class
folder = Aspose::Cloud::AsposeStorage::Folder.new

# Create folder
puts 'Folder Created Sucessfully.' if folder.create_folder('testFolder')

# Test fileExiss
puts 'File found.' if folder.file_exists('testFolder')

# Delete Folder
puts 'Folder Deleted.' if folder.delete_folder('testFolder')

#Upload a file
puts 'File uploaded successfully.' if folder.upload_file('path/to/output/location/file_to.upload')
