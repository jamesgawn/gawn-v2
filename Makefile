install: 
	bundle install

serve: 
	bundle exec jekyll serve

image-convert:
	convert ${imagepath} -resize 50% -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB ${imagepath}@0,5x.jpg
	convert ${imagepath} -resize 25% -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB ${imagepath}@0,25x.jpg
	convert ${imagepath} -resize 12.5% -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB ${imagepath}@0,125x.jpg