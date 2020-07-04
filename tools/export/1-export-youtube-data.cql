COPY youtube.video2 (                                                                                                                                                                                                                  
    video_id,
    caption,
    channel_id,
    channel_text,
    channel_title,
    definition,
    dimension,
    duration,
    etag,
    kind,
    projection,
    safe_alcohol,
    safe_blocked,
    safe_game_rating,
    safe_rating,
    safe_restricted,
    stats_comments,
    stats_dislikes,
    stats_favorite,
    stats_likes,
    stats_views,
    topics,
    topics_relevant,
    ts_data_update,
    ts_stats_update,
    ts_video_published,
    video_category_id,
    video_language,
    video_license,
    video_seconds,
    video_tags,
    video_text,
    video_title
)
TO '/home/fresno/youtube.videos2.csv'
WITH DELIMITER='\t' 
    AND HEADER=false
    AND INGESTRATE=1000
    AND NUMPROCESSES=2
    AND MAXINSERTERRORS=-1 
    AND MAXPARSEERRORS=-1;
