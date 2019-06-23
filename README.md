# x264comparisons
For the X264 Slow Isn't Worth It video.

Requirements: FFMPEG (for most of them), VMAF (for the ones labeled VMAF).
I installed VMAF on Windows using this guide: https://streaminglearningcenter.com/blogs/installing-and-using-netflix-vmaf-master.html


Scripts:
- 9900kspeedtest.bat - Simple Fast/Medium/Slow plus my "special sauce" FFMPEG config renders set to test the encoding speed of my 9900K rig
- convYUV.bat - Loop function for every .mp4 & .mov in the folder, convert to 4:2:0 and raw YUV data to be processed by VMAF
- "fast medium slow.bat" - Creates encodings from the source "lossless.mov" file at X264 Fast/Medium/Slow at 2.5, 4, 5, 6, 8, (and 10 for Medium/Slow) megabits per second
- fast.bat - Does the same as the previous script.
- ffmpegtests.bat - does the same as above. My full round of initial encodings for comparison
- ffmpegtests2.bat - same as above, but for second lossless source file "lossless2.mov" (I know.)
- mov-x264-yuv-vmaf.bat - Takes the "lossless.mov" and encodes it with X264 at 2.5mbps and 6mbps at Fast/Medium/Slow/VeryFast X264 and then converts all of the encodes and the original MOV to raw YUV data, then runs VMAF analysis for all of the files.
- "mov-x264-yuv-vmaf round2.bat" - same as above, but 720p testing this time
- nvenc.bat - Runs NVENC encoding (on my RTX 2080) for 2.5, 4, 5, 6, 10mbps on the "lossless.mov" source file
- nvenc2.bat - see above
- psnr-ssim.bat - compares any .mp4 in the folder to the "lossless.mov" source using FFMPEG's PSNR and SSIM analysis algorithms. It was only later that I realized that VMAF could've done this, too, so it was a wasted step. Also "> "%~dnpA-psnr.txt"" was supposed to output the min/max/avg numbers from the runs to a txt file, but it doesn't do this. These commands output to stderr instead of stdout and I couldn't make it work. I simply read frome the command line and entered into the spreadsheet manually.
 - psnr-ssim2.bat - see above
 - specialsauce.bat - Creates various encodes of the "lossless.mov" source using my sweet special sauce X264 flags that I use to balance quality and performance benefits/penalties of Medium/Slow and compare to vanilla Medium/Slow.
 - specialsauce2.bat - see above
 - veryfast.bat - creates encodes at various bitrates of the "lossless.mov" source using X264 VeryFast preset
 - warframe.bat - encodes a new Warframe-specific lossless recording to X264 using VeryFast/Fast/Medium/Slow for another point of comparison.

NOTE: Need to change -tune psnr to -tune ssim for ssim tests! I edited as I went so I left this out apparently.
