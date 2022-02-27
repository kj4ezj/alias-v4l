#!/bin/bash

function cameras ()
{
    ee v4l2-ctl --list-devices
}

function exposure ()
{
    if [[ "$(echo "$1" | grep -cP '^auto(matic)?$')" == '1' ]]; then
        ee v4l2-ctl --set-ctrl 'exposure_auto=3'
    else
        if [[ "$(v4l2-ctl --get-ctrl 'exposure_auto' | cut -d ' ' -f '2')" == '3' ]]; then
            ee v4l2-ctl --set-ctrl 'exposure_auto=1'
        fi
        ee v4l2-ctl --set-ctrl "exposure_absolute=$1"
    fi
}

function wb ()
{
    if [[ "$(echo "$1" | grep -cP '^auto(matic)?$')" == '1' ]]; then
        ee v4l2-ctl --set-ctrl 'white_balance_temperature_auto=1'
    else
        if [[ "$(v4l2-ctl --get-ctrl 'white_balance_temperature_auto' | cut -d ' ' -f '2')" == '1' ]]; then
            ee v4l2-ctl --set-ctrl 'white_balance_temperature_auto=0'
        fi
        ee v4l2-ctl --set-ctrl "white_balance_temperature=$1"
    fi
}
