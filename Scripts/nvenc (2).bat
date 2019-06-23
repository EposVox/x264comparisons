ffmpeg -y  -r 60 -i lossless.mov -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 outputNVENC2-5m.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 outputNVENC6m.mp4
ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 0.5M -maxrate 0.5M -bufsize 0.5M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 nvenc_720p_0-5.mp4
ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v h264_nvenc -preset slow -rc cbr_hq -b:v 1M -maxrate 1M -bufsize 1M*2 -pix_fmt yuv420p -profile:v high -bf 4 -b_ref_mode 2 -g 120 -temporal-aq 1 -rc-lookahead 8 -vsync 0 nvenc_720p_1M.mp4

pause
