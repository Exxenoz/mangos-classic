# This file is part of the Continued-MaNGOS Project
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

cmake_minimum_required(VERSION 3.15)

add_executable(git_id git_id.cpp)

if(MSVC)
  # Define OutDir to source/bin/(platform)_(configuaration) folder.
  set_target_properties(git_id PROPERTIES RUNTIME_OUTPUT_DIRECTORY_DEBUG "${DEV_BIN_DIR}/git_id")
  set_target_properties(git_id PROPERTIES RUNTIME_OUTPUT_DIRECTORY_RELEASE "${DEV_BIN_DIR}/git_id")
  set_target_properties(git_id PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY "$(OutDir)")
endif()
