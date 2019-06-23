ffmpeg -y  -r 60 -i lossless.mov -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 outputNVENC2-5m.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 4M -maxrate 4M -bufsize 4M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 outputNVENC4m.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 5M -maxrate 5M -bufsize 5M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 outputNVENC5m.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 outputNVENC6m.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 10M -maxrate 10M -bufsize 10M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 outputNVENC10m.mp4
pause
