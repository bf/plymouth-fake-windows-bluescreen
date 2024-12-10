#!/bin/bash

(plymouthd --no-daemon --debug &); 
((sleep 5 && plymouth quit)& ); 
plymouth --show-splash; 
