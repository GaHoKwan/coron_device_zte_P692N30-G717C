.class Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatMediaPlayer"
.end annotation


# instance fields
.field private mCompatMode:Z

.field private mCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mNextPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3285
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 3281
    iput-boolean v6, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mCompatMode:Z

    .line 3287
    :try_start_0
    const-class v1, Landroid/media/MediaPlayer;

    const-string v2, "setNextMediaPlayer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/media/MediaPlayer;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mCompatMode:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3293
    :goto_0
    return-void

    .line 3289
    :catch_0
    move-exception v0

    .line 3290
    .local v0, e:Ljava/lang/NoSuchMethodException;
    iput-boolean v6, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mCompatMode:Z

    .line 3291
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mNextPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3319
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 3320
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mNextPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3322
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3323
    return-void
.end method

.method public setNextMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "next"

    .prologue
    .line 3296
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mCompatMode:Z

    if-eqz v0, :cond_0

    .line 3297
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mNextPlayer:Landroid/media/MediaPlayer;

    .line 3301
    :goto_0
    return-void

    .line 3299
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3305
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mCompatMode:Z

    if-eqz v0, :cond_0

    .line 3306
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$CompatMediaPlayer;->mCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3310
    :goto_0
    return-void

    .line 3308
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0
.end method
