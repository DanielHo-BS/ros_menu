#!/bin/bash

shell=`echo $SHELL | awk -F '/' '{print $NF}'`

rm -f ~/.ros_bashrc
rm -f ~/.extra_bashrc
ln -s `pwd`/ros_bashrc ~/.ros_bashrc
ln -s `pwd`/extra_bashrc ~/.extra_bashrc

if ! grep -q ros_bashrc ~/.${shell}rc; then
    echo "source ~/.ros_bashrc" >> ~/.${shell}rc
fi

echo "Installation done!"
