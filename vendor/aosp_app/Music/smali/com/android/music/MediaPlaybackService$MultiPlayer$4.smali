.class Lcom/android/music/MediaPlaybackService$MultiPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnDurationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3139
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationUpdate(Landroid/media/MediaPlayer;I)V
    .locals 15
    .parameter "mediaPlayer"
    .parameter "duration"

    .prologue
    .line 3141
    if-eqz p1, :cond_0

    if-gtz p2, :cond_2

    .line 3142
    :cond_0
    const-string v9, "MusicService"

    const-string v10, "onDurationUpdate with null media player or 0 duration!"

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    :cond_1
    :goto_0
    return-void

    .line 3145
    :cond_2
    const-string v9, "MusicService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDurationUpdate("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsPlayerReady:Z
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$5100(Lcom/android/music/MediaPlaybackService;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3148
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 3150
    :cond_3
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)I

    move-result v6

    .line 3151
    .local v6, position:I
    :goto_1
    if-ltz v6, :cond_6

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayList:[J
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v9

    aget-wide v2, v9, v6

    .line 3152
    .local v2, currentTrackId:J
    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_4

    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_7

    .line 3154
    :cond_4
    const-string v9, "MusicService"

    const-string v10, "onDurationUpdate with unknown track!"

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3150
    .end local v2           #currentTrackId:J
    .end local v6           #position:I
    :cond_5
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$4200(Lcom/android/music/MediaPlaybackService;)I

    move-result v6

    goto :goto_1

    .line 3151
    .restart local v6       #position:I
    :cond_6
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 3157
    .restart local v2       #currentTrackId:J
    :cond_7
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v9

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v10

    const-string v11, "duration"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3158
    .local v5, oldDuration:I
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 3159
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayList:[J
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v10

    aget-wide v10, v10, v6

    #calls: Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v9, v10, v11}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;J)Landroid/database/Cursor;

    move-result-object v1

    .line 3160
    .local v1, c:Landroid/database/Cursor;
    if-nez v1, :cond_8

    .line 3161
    const-string v9, "MusicService"

    const-string v10, "onDurationUpdate: Next Player track not found!"

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3164
    :cond_8
    const-string v9, "duration"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3169
    .end local v1           #c:Landroid/database/Cursor;
    :cond_9
    move/from16 v0, p2

    if-eq v5, v0, :cond_1

    .line 3170
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 3171
    .local v8, value:Landroid/content/ContentValues;
    const-string v9, "MusicService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Old Duration is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const-string v9, "duration"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3177
    :try_start_0
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3180
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3181
    const-string v9, "MusicService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "duration updated to DB with new duration "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3188
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3189
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 3190
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3191
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v10}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3193
    :cond_a
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    monitor-enter v10

    .line 3194
    :try_start_1
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v11, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v11, v11, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v12, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v12, v12, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayList:[J
    invoke-static {v12}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v12

    aget-wide v12, v12, v6

    #calls: Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v11, v12, v13}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;J)Landroid/database/Cursor;

    move-result-object v11

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v11}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3195
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 3182
    :catch_0
    move-exception v7

    .line 3183
    .local v7, uoe:Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v9, "MusicService"

    const-string v10, "UnsupportedOperationException while update new duration"

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3188
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3189
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 3190
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3191
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v10}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3193
    :cond_b
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    monitor-enter v10

    .line 3194
    :try_start_3
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v11, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v11, v11, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v12, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v12, v12, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayList:[J
    invoke-static {v12}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v12

    aget-wide v12, v12, v6

    #calls: Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v11, v12, v13}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;J)Landroid/database/Cursor;

    move-result-object v11

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v11}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3195
    monitor-exit v10

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 3184
    .end local v7           #uoe:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v4

    .line 3185
    .local v4, ise:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v9, "MusicService"

    const-string v10, "IllegalStateException while update new duration"

    invoke-static {v9, v10}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3188
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3189
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 3190
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3191
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v10}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3193
    :cond_c
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    monitor-enter v10

    .line 3194
    :try_start_5
    iget-object v9, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v11, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v11, v11, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v12, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v12, v12, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayList:[J
    invoke-static {v12}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v12

    aget-wide v12, v12, v6

    #calls: Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v11, v12, v13}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;J)Landroid/database/Cursor;

    move-result-object v11

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v11}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3195
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 3188
    .end local v4           #ise:Ljava/lang/IllegalStateException;
    :catchall_3
    move-exception v9

    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/android/music/MediaPlaybackService$MultiPlayer;->mCurrentMediaPlayer:Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$4300(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3189
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 3190
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3191
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v11, 0x0

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v10, v11}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3193
    :cond_d
    iget-object v10, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v10, v10, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    monitor-enter v10

    .line 3194
    :try_start_6
    iget-object v11, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v11, v11, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v12, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v12, v12, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v13, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v13, v13, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mPlayList:[J
    invoke-static {v13}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v13

    aget-wide v13, v13, v6

    #calls: Lcom/android/music/MediaPlaybackService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v12, v13, v14}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;J)Landroid/database/Cursor;

    move-result-object v12

    #setter for: Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v11, v12}, Lcom/android/music/MediaPlaybackService;->access$1002(Lcom/android/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3195
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 3188
    :cond_e
    throw v9

    .line 3195
    :catchall_4
    move-exception v9

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v9
.end method
