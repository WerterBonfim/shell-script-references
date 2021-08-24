#!/usr/bin/env bash

#f() { local foo=$(false) || echo foo; }; f
f() { local foo; foo=$(false) || echo foo; }; f
