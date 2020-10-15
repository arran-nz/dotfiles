#!/usr/bin/env bash
wf-recorder -c rawvideo  -x yuv420p -m avi -f pipe:99 99>&1 >&2 | ffplay -f avi -
