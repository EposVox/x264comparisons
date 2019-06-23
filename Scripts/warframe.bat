ffmpeg -y  -r 60 -i wf.mp4 -vf scale=1920:1080 -c:v libx264 -preset fast -rc cbr -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -level 4.1 -bf 2 -g 120 -tune psnr -vsync 0 wf_fast_4.mp4
ffmpeg -y  -r 60 -i wf.mp4 -vf scale=1920:1080 -c:v libx264 -preset medium -rc cbr -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -level 4.1 -bf 2 -g 120 -tune psnr -vsync 0 wf_med_4.mp4
ffmpeg -y  -r 60 -i wf.mp4 -vf scale=1920:1080 -c:v libx264 -preset slow -rc cbr -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -level 4.1 -bf 2 -g 120 -tune psnr -vsync 0 wf_slow_4.mp4
ffmpeg -y  -r 60 -i wf.mp4 -vf scale=1920:1080 -c:v libx264 -preset veryfast -rc cbr -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 wf_vf_4.mp4

pause
