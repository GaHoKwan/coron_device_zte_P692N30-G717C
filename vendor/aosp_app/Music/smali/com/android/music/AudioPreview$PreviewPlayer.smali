.class Lcom/android/music/AudioPreview$PreviewPlayer;
.super Landroid/media/MediaPlayer;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewPlayer"
.end annotation


# instance fields
.field mActivity:Lcom/android/music/AudioPreview;

.field mIsPrepared:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/AudioPreview$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/music/AudioPreview$PreviewPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method isPrepared()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    .line 594
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {v0, p1}, Lcom/android/music/AudioPreview;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 595
    return-void
.end method

.method public setActivity(Lcom/android/music/AudioPreview;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    .line 576
    invoke-virtual {p0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 577
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 578
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 580
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 582
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnDurationUpdateListener(Landroid/media/MediaPlayer$OnDurationUpdateListener;)V

    .line 583
    return-void
.end method

.method public setDataSourceAndPrepare(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 588
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 589
    return-void
.end method
