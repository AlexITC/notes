# Image utils

## Convert white background to transparent
`convert logo.png -transparent white logo-new.png`

## resize image without keeping aspect ratio
`convert paso-3.png -resize 1280x800\! 1280x800/paso-3.png`

## remove metadata from photos
`exiftool -all= photo.jpg`

## remove metadata from all photos in current directory
`for file in *; do exiftool -all= "$file"; done`

## compress image
`convert -strip -interlace Plane -gaussian-blur 0.05 -quality 85% source.jpg result.jpg`

