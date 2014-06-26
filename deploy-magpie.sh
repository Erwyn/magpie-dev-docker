#!/bin/bash

MAGPIE_DIR='/magpie';
PYTHON='/usr/bin/python';

cd $MAGPIE_DIR && $PYTHON setup.py develop;
magpie;
