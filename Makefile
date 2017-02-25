all:
	/usr/bin/env python3 generate.py | xargs --max-procs 16 -L 1 xargs
	wait
	sh to_raw.sh

play:
	aplay output.wav
clean:
	rm -rf *.wav *.raw *.pyc *.pcm __pycache__
