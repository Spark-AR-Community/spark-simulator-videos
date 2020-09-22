# Batch encode webm files in a directory
for i in *.webm;
  do
  ffmpeg -y -i $i -b:v 0 -crf 30 -pass 1 -an -f webm /dev/null
  ffmpeg -y -i $i -vf scale=640:640:force_original_aspect_ratio=decrease -b:v 0 -crf 30 -pass 2 "_${i}"
done