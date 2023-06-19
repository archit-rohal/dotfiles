#!/bin/bash

# Check if speedometer is installed
if ! command -v speedometer &> /dev/null; then
    echo "speedometer is not installed. Please install it first."
    exit 1
fi

# Set the interface name
interface="wlp2s0"

# Calculate the average download speed in kilobits per second (Kbps)
download_speed=$(speedometer -r "$interface" -s -i 0.2 -t "$interface Download Speed" | grep -o -E '[0-9]+')

# Convert the download speed to kilobytes per second (KB/s)
download_speed=$(bc <<< "scale=2; $download_speed / 8")

# Display the download speed in the terminal
echo "Downloading Speed: $download_speed KB/s"
