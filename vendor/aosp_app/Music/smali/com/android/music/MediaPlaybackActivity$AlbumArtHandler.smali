.class public Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field private mAlbumId:J

.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackActivity;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1926
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1923
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:J

    .line 1927
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x4

    .line 1932
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    iget-wide v3, v0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->albumid:J

    .line 1933
    .local v3, albumid:J
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;

    iget-wide v1, v0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->songid:J

    .line 1934
    .local v1, songid:J
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    iget-wide v7, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:J

    cmp-long v0, v7, v3

    if-nez v0, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mIsShowAlbumArt:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2600(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1935
    :cond_0
    const/4 v6, 0x0

    .line 1937
    .local v6, numsg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2700(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mArtSongId:J
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2800(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-eqz v0, :cond_2

    .line 1938
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1939
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1940
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1946
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v0}, Lcom/android/music/MediaPlaybackActivity;->access$2702(Lcom/android/music/MediaPlaybackActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1948
    const-string v0, "MediaPlayback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get art. mArtSongId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mArtSongId:J
    invoke-static {v8}, Lcom/android/music/MediaPlaybackActivity;->access$2800(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,songid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mArtSongId:J
    invoke-static {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$2802(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 1953
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2700(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1954
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v7}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v7}, Lcom/android/music/MediaPlaybackActivity;->access$2702(Lcom/android/music/MediaPlaybackActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1955
    const-wide/16 v3, -0x1

    .line 1957
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2700(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1958
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/music/MediaPlaybackActivity;->access$2700(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1959
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1962
    :cond_4
    iput-wide v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:J

    .line 1963
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mIsShowAlbumArt:Z
    invoke-static {v0, v5}, Lcom/android/music/MediaPlaybackActivity;->access$2602(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 1965
    .end local v6           #numsg:Landroid/os/Message;
    :cond_5
    return-void
.end method
