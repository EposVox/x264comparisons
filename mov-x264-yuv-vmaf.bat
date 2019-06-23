ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset fast -rc cbr -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 F2-5m.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset fast -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 F6m.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset medium -rc cbr -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 M2-5m.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset medium -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 M6m.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset slow -rc cbr -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 S2-5m.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset slow -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 S6.mp4

ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset veryfast -rc cbr -b:v 2.5M -maxrate 2.5M -bufsize 2.5M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 VF2-5.mp4
ffmpeg -y  -r 60 -i lossless.mov -c:v libx264 -preset veryfast -rc cbr -b:v 6M -maxrate 6M -bufsize 6M*2 -pix_fmt yuv420p -profile:v high -level 5.1 -bf 2 -g 120 -tune psnr -vsync 0 VF6.mp4

for /R %%A in (*.mp4, *.mov) do (
    echo Processing %%A
	ffmpeg -y -i "%%A" -pix_fmt yuv420p -vsync 0 "%%~dnpA-p.yuv"
    echo Processed %%A
)

for /R %%A in (*.yuv) do (
    echo Processing %%A
	C:\vmaf-master\x64\Release\vmafossexec.exe yuv420p 1920 1080 "J:\test2\lossless-p.yuv" "%%A" C:\vmaf-master\model\vmaf_v0.6.1.pkl --log %%A.csv
	echo Processed %%A
)
pause