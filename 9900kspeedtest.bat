ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset fast -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 outputX264F6m.mp4
pause
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset medium -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 outputX264M6m.mp4
pause
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset slow -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 outputX264S6m.mp4
pause
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset medium -pix_fmt yuv420p -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce1080p6m_MEDIUM.mp4
pause
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset fast -pix_fmt yuv420p -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce1080p6m_fast.mp4
pause