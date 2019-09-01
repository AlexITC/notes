# Download video from dailymotion
1. Pick a video url, like: https://www.dailymotion.com/video/x2e155j
2. Get the video_id, it is the last segment from the url path, `video_id = x2e155j`
3. Build the embedded url using the video_id, https://www.dailymotion.com/embed/video/x2e155j
4. Get the HTML from the embedded url
5. Find the JSON with the download links, it is defined between the lines `var config =` and `window.playerV5`, it will look like this:
```json
"qualities":{
         "auto":[
            {
               "type":"application\/x-mpegURL",
               "url":"https:\/\/www.dailymotion.com\/cdn\/manifest\/video\/x2e155j.m3u8?sec=qB6V5QZDLPkQFwEcQS9DiqXuPxqjoPO91rJ8tgsrYEA7RakHaKCE8iEtYBhXpHl3xyI644iHPNUJh45FdCx62g"
            }
         ],
         "144":[
            {
               "type":"application\/x-mpegURL",
               "url":"https:\/\/www.dailymotion.com\/cdn\/manifest\/video\/x2e155j.m3u8?sec=qB6V5QZDLPkQFwEcQS9DiqXuPxqjoPO91rJ8tgsrYEA7RakHaKCE8iEtYBhXpHl3xyI644iHPNUJh45FdCx62g&include=144"
            },
            {
               "type":"video\/mp4",
               "url":"https:\/\/www.dailymotion.com\/cdn\/H264-176x144-2\/video\/x2e155j.mp4?sec=s16tRRuh_9UTZLkaF-buwVyd9J7xI8dKT5879QjXhkJJQEf9wDOF-pwg6NZOCbZp3MKjx4n41_muNnj3Bt66kw"
            }
         ],
         ...,
         "1080":[
            {
               "type":"application\/x-mpegURL",
               "url":"https:\/\/www.dailymotion.com\/cdn\/manifest\/video\/x2e155j.m3u8?sec=qB6V5QZDLPkQFwEcQS9DiqXuPxqjoPO91rJ8tgsrYEA7RakHaKCE8iEtYBhXpHl3xyI644iHPNUJh45FdCx62g&include=1080"
            },
            {
               "type":"video\/mp4",
               "url":"https:\/\/www.dailymotion.com\/cdn\/H264-1920x1080\/video\/x2e155j.mp4?sec=mGV8j7u_l_VY-Oobeu53UGcAJ4-_loyQq6yVa6Awiwbu4e1gj7iCpc7PN_0JPr7nZUzyyBnQNDcBQhLxrt3W6w"
            }
         ]
      },
```

6. Choose the desired quality, each key on the `qualities` object specifies an available quality, we are interested in the ones having the `"type": "video\/mp4"` (or a similar format).
7. Pick the `url` entry for the desired quality object, for example, for the `1080` quality, the url is `https:\/\/www.dailymotion.com\/cdn\/H264-176x144-2\/video\/x2e155j.mp4?sec=s16tRRuh_9UTZLkaF-buwVyd9J7xI8dKT5879QjXhkJJQEf9wDOF-pwg6NZOCbZp3MKjx4n41_muNnj3Bt66kw`.
8. Unescape the url by removing any `\` character from it.`
9. Go to that url and you'll get the video: https://www.dailymotion.com/cdn/H264-176x144-2/video/x2e155j.mp4?sec=s16tRRuh_9UTZLkaF-buwVyd9J7xI8dKT5879QjXhkJJQEf9wDOF-pwg6NZOCbZp3MKjx4n41_muNnj3Bt66kw
