# for i in ./screenshots/*.jpg;
for i in *.webm;
  # do echo $i
  ffmpeg -i $i -vframes 1 -q:v 2 ./screenshots/$i.jpg
done