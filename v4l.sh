#!/bin/bash

function cameras ()
{
    ee v4l2-ctl --list-devices
}
