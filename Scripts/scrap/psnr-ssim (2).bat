pushd "%2"

for /R %%A in (*.mp4) do (
    echo Processing %%A
	ffmpeg -i lossless2.mov -i "%%A" -lavfi  psnr=psnr.log -f null - > "%%~dnpA-psnr.txt"
	ffmpeg -i lossless2.mov -i "%%A" -lavfi  ssim=ssim.log -f null - > "%%~dnpA-SSIM.txt"
    echo Processed %%A
)
pause