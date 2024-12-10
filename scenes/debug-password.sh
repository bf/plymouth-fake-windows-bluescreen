#!/bin/bash

(plymouthd --no-daemon --debug &); ((sleep 10 && plymouth quit)& ); plymouth --show-splash; plymouth ask-for-password
