#!/bin/bash
set -e

npm --prefix /web run dev &
python3 /web/app.py
