ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v libx264 -preset fast -rc cbr -b:v 0.5M -maxrate 0.5M -bufsize 0.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 F0-5m_720.mp4
ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v libx264 -preset fast -rc cbr -b:v 1M -maxrate 1M -bufsize 1M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 F1m_720.mp4

ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v libx264 -preset medium -rc cbr -b:v 0.5M -maxrate 0.5M -bufsize 0.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 M2-5m_720.mp4
ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v libx264 -preset medium -rc cbr -b:v 1M -maxrate 1M -bufsize 1M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 M1m_720.mp4

ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v libx264 -preset slow -rc cbr -b:v 0.5M -maxrate 0.5M -bufsize 0.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 S0-5m_720.mp4
ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v libx264 -preset slow -rc cbr -b:v 1M -maxrate 1M -bufsize 1M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 S1_720.mp4

ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v libx264 -preset veryfast -rc cbr -b:v 0.5M -maxrate 0.5M -bufsize 0.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 VF0-5_720.mp4
ffmpeg -y  -r 60 -i lossless.mov -vf scale=1280:720 -c:v libx264 -preset veryfast -rc cbr -b:v 1M -maxrate 1M -bufsize 1M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 VF1_720.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset fast -pix_fmt yuv420p -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p6m_fast.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset medium -pix_fmt yuv420p -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p6m_MEDIUM.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset medium -pix_fmt yuv420p -rc cbr -b:v 0.5M -maxrate 0.5M -bufsize 0.5M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p0-5m_MEDIUM.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset medium -pix_fmt yuv420p -rc cbr -b:v 1M -maxrate 1M -bufsize 1M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p1m_MEDIUM.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset slow -pix_fmt yuv420p -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p6m_SLOW.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -vf scale=1280:720 -preset slow -pix_fmt yuv420p -rc cbr -b:v 8M -maxrate 8M -bufsize 8M*2 -trellis 1 -aq-mode 1 -direct-pred spatial -partitions p8x8,b8x8,i8x8,i4x4 -threads 18 -rc-lookahead 60 -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 sauce720p8m_SLOW.mp4





for /R %%A in (*.mp4, *.mov) do (
    echo Processing %%A
	ffmpeg -y -i "%%A" -pix_fmt yuv420p -vsync 0 "%%~dnpA-p.yuv"
    echo Processed %%A
)

for /R %%A in (*.yuv) do (
    echo Processing %%A
	C:\vmaf-master\x64\Release\vmafossexec.exe yuv420p 1280 720 "J:\test2\lossless-p.yuv" "%%A" C:\vmaf-master\model\vmaf_v0.6.1.pkl --log %%A.csv
	echo Processed %%A
)
pause