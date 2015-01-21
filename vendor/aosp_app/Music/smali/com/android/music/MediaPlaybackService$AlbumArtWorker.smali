.class Lcom/android/music/MediaPlaybackService$AlbumArtWorker;
.super Landroid/os/AsyncTask;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumArtWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 3482
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/MediaPlaybackService;Lcom/android/music/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3482
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;-><init>(Lcom/android/music/MediaPlaybackService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "albumId"

    .prologue
    .line 3490
    const/4 v6, 0x0

    .line 3492
    .local v6, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3493
    .local v3, id:J
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v1, -0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3495
    if-nez v6, :cond_0

    .line 3496
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3502
    :cond_0
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlbumArtWorker: getArtwork returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 3503
    .end local v3           #id:J
    :goto_0
    return-object v0

    .line 3498
    :catch_0
    move-exception v7

    .line 3499
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "MusicService"

    const-string v1, "AlbumArtWorker called with wrong parameters"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3482
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;->doInBackground([Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 3512
    const-string v0, "MusicService"

    const-string v1, ">> AlbumArtWorker.onPostExecute"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$600(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3514
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;->this$0:Lcom/android/music/MediaPlaybackService;

    #calls: Lcom/android/music/MediaPlaybackService;->updateNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lcom/android/music/MediaPlaybackService;->access$1700(Lcom/android/music/MediaPlaybackService;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 3516
    :cond_0
    const-string v0, "MusicService"

    const-string v1, "<< AlbumArtWorker.onPostExecute"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3482
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService$AlbumArtWorker;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
