### Получить информацию медиа файла

Просто введите:

`ffmpeg -i file_name`

*Это работает для аудио и видео файлов*:

- ffmpeg -i video_file.mp4 
- ffmpeg -i audio_file.mp3

### Она отображает слишком много информации(информация о ffmpeg)

Чтобы пропустить это, добавьте флаг -hide_banner:

- ffmpeg -i video_file.mp4 -hide_banner 
- ffmpeg -i audio_file.mp3 -hide_banner	
