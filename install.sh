#!/bin/sh
ENVS_DIR="$(pwd)/env"

command -v python > /dev/null || \
	{ echo 'Python not installed. Please install python.'; exit 1; }

conda create --prefix "$ENVS_DIR" python=3.10
conda activate "$ENVS_DIR"
python -m pip install -r requirements.txt

if command -v ffmpeg > /dev/null; then
	echo "FFMPEG installed, ready to go!"
else
	echo "Please install FFMPEG."
fi

if command -v streamlit > /dev/null; then
	echo "Streamlit installed, ready to go!"
else
	echo "Please install Streamlit to use the interactive web app."
fi
