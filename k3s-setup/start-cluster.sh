#!/bin/sh
k3d cluster create playground -p "5432:30032@server:0" -p "9187:30087@server:0" --agents 0
