#***************************************************************************
#*   Autoversion makefile                     v.20200702.002744            *
#*   Copyright (C) 2014-2020 by Ruben Carlo Benante <rcb@beco.cc>          *
#*                                                                         *
#*   This makefile sets BUILD and allows to set MAJOR.MINOR version,       *
#*   DEBUG and OBJ to compile a range of different targets                 *
#***************************************************************************
#*   This program is free software; you can redistribute it and/or modify  *
#*   it under the terms of the GNU General Public License as published by  *
#*   the Free Software Foundation; version 2 of the License.               *
#*                                                                         *
#*   This program is distributed in the hope that it will be useful,       *
#*   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
#*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
#*   GNU General Public License for more details.                          *
#*                                                                         *
#*   You should have received a copy of the GNU General Public License     *
#*   along with this program; if not, write to the                         *
#*   Free Software Foundation, Inc.,                                       *
#*   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
#***************************************************************************
#*   To contact the author, please write to:                               *
#*   Ruben Carlo Benante                                                   *
#*   Email: rcb@beco.cc                                                    *
#*   Webpage: http://drbeco.github.io/                                     *
#***************************************************************************
#
# Usage:
#
# Examples:
#
# * From linux prompt, to create the index of the cookie text file:
#        $ make cookies
# * To install:
#        $ make install
# * To uninstall:
#        $ make uninstall

# Phonies
.PHONY: cookie
# version major number
MAJOR ?= 1
# version minor number
MINOR ?= 0
# object files to compile with the source

# Creates the index for a fortune cookie
cookies : *_cookies.dat

%_cookies.dat : %_cookies
	strfile $^ $@

install : chesscookies chesscookies.dat
	cp chesscookies /usr/share/games/fortunes
	cp chesscookies.dat /usr/share/games/fortunes

uninstall : 
	rm /usr/share/games/fortunes/chesscookies
	rm /usr/share/games/fortunes/chesscookies.dat

nomatch :
	@echo 'makefile error: no rules for the given goal(s)' $(warning nomatch)

#* ------------------------------------------------------------------- *
#* makefile config for Vim modeline                                    *
#* vi: set ai noet ts=4 sw=4 tw=0 wm=0 fo=croqlt :                     *
#* Template by Dr. Beco <rcb at beco dot cc> Version 20170506.191339   *

