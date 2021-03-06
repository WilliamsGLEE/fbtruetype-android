#!/system/bin/sh

#########################################
# Dev info test script
#---------------------------------------- 
# by Michael Higham
# <mhigham1986@gmail.com>
#----------------------------------------
# Very quickly written simple script to
# show basic device information using
# getprop as follows:
#
# Manufacturer:
# Model:
# SIM Operator:
# IP Address:
# Serial No:
# Board:
# BT Name:
#
#########################################


#########################################
# FBTrueType location
#########################################
fbtruetype=/system/xbin/fbtruetype


#########################################
# Font style + Box size
#########################################
font=/system/fonts/DroidSans.ttf
font_size=18
boxwidth=80


#########################################
# Set the y offset to begin from
# Set the character to print
#########################################
ypos=10

$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size "Manufacturer:"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size -t 00FF00 "$(getprop ro.product.manufacturer)"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size " "
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size "Model:"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size -t 00FF00 "$(getprop ro.product.name)"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size " "
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size "SIM Operator:"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size -t 00FF00 "$(getprop gsm.sim.operator.alpha)"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size " "
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size "IP Address:"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size -t 00FF00 "$(getprop dhcp.eth0.ipaddress)"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size " "
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size "Serial No:"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size -t 00FF00 "$(getprop ro.serialno)"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size " "
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size "Board:"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size -t 00FF00 "$(getprop ro.board.platform)"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size " "
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size "BT Name:"
ypos=$(($ypos+$font_size))
$fbtruetype -y $ypos -w $boxwidth -f $font -s $font_size -t 00FF00 "$(getprop net.bt.name)"

exit
