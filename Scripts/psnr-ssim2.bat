for /R %%A in (*.mp4) do (
    echo Processing %%A
	ffmpeg -i lossless2.mov -i "%%A" -lavfi  psnr=psnr_2_%%A.log -f null - > "%%~dnpA-psnr2.txt"
	ffmpeg -i lossless2.mov -i "%%A" -lavfi  ssim=ssim_2_%%A.log -f null - > "%%~dnpA-SSIM2.txt"
    echo Processed %%A
)
pause