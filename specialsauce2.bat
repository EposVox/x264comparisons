ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset medium -pix_fmt yuv420p -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p6m_MEDIUM.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset slow -pix_fmt yuv420p -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p6m_SLOW.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset fast -pix_fmt yuv420p -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p6m_fast.mp4
pause