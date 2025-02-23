ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset fast -rc cbr -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264F2-5m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset fast -rc cbr -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264F4m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset fast -rc cbr -b:v 5M -maxrate 5M -bufsize 5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264F5m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset fast -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264F6m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset fast -rc cbr -b:v 8M -maxrate 8M -bufsize 8M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264F8m.mp4

ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset medium -rc cbr -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264M2-5m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset medium -rc cbr -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264M4m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset medium -rc cbr -b:v 5M -maxrate 5M -bufsize 5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264M5m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset medium -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264M6m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset medium -rc cbr -b:v 8M -maxrate 8M -bufsize 8M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264M8m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset medium -rc cbr -b:v 10M -maxrate 10M -bufsize 10M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264M10m.mp4

ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset slow -rc cbr -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264S2-5m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset slow -rc cbr -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264S4m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset slow -rc cbr -b:v 5M -maxrate 5M -bufsize 5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264S5m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset slow -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264S6m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset slow -rc cbr -b:v 8M -maxrate 8M -bufsize 8M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264S8m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset slow -rc cbr -b:v 10M -maxrate 10M -bufsize 10M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264S10m.mp4

ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset veryfast -rc cbr -b:v 5M -maxrate 5M -bufsize 5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264VF5m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset veryfast -rc cbr -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264VF4m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset veryfast -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264VF6m.mp4
ffmpeg -y  -r 60 -i lossless2.mov -c:v libx264 -preset veryfast -rc cbr -b:v 8M -maxrate 8M -bufsize 8M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 output_T2_X264VF8m.mp4

pause
