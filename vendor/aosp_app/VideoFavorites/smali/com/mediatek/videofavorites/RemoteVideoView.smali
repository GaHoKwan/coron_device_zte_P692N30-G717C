.class public Lcom/mediatek/videofavorites/RemoteVideoView;
.super Lcom/mediatek/videofavorites/VideoTextureView;
.source "RemoteVideoView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteVideoView"


# instance fields
.field mMuteAudio:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/videofavorites/VideoTextureView;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/videofavorites/VideoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/videofavorites/VideoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public getUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUriAvailable()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishTemporaryDetach()V
    .locals 3

    .prologue
    .line 222
    const-string v0, "RemoteVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishTemporaryDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 224
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 102
    iget v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    invoke-static {v6, p1}, Lcom/mediatek/videofavorites/RemoteVideoView;->getDefaultSize(II)I

    move-result v5

    .line 103
    .local v5, width:I
    iget v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    invoke-static {v6, p2}, Lcom/mediatek/videofavorites/RemoteVideoView;->getDefaultSize(II)I

    move-result v0

    .line 105
    .local v0, height:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f08

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 106
    .local v2, maxWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 108
    .local v1, maxHeight:I
    iget v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    if-nez v6, :cond_2

    .line 109
    :cond_0
    move v5, v2

    .line 110
    move v0, v1

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p0, v5, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 126
    return-void

    .line 112
    :cond_2
    int-to-float v6, v2

    int-to-float v7, v1

    div-float v3, v6, v7

    .line 113
    .local v3, rectRatio:F
    iget v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 114
    .local v4, videoRatio:F
    cmpg-float v6, v4, v3

    if-gez v6, :cond_3

    .line 115
    move v5, v2

    .line 116
    iget v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    mul-int/2addr v6, v5

    iget v7, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    div-int v0, v6, v7

    .line 117
    rem-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_1

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_3
    move v0, v1

    .line 122
    iget v6, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mVideoHeight:I

    div-int v5, v6, v7

    goto :goto_0
.end method

.method public onStartTemporaryDetach()V
    .locals 3

    .prologue
    .line 211
    const-string v0, "RemoteVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTemporaryDetach():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->stopPlayback()V

    .line 216
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 217
    invoke-virtual {p0}, Landroid/view/TextureView;->destroySurfaceSafely()V

    .line 218
    return-void
.end method

.method public openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 130
    iget-boolean v1, p0, Lcom/mediatek/videofavorites/RemoteVideoView;->mMuteAudio:Z

    if-eqz v1, :cond_2

    .line 131
    const-string v1, "RemoteVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openVideo(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    const-string v1, "RemoteVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ready, return, mUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0, v7}, Lcom/mediatek/videofavorites/VideoTextureView;->release(Z)V

    .line 142
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 143
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 144
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 145
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mDuration:I

    .line 146
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 149
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentBufferPercentage:I

    .line 150
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 151
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 156
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 157
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 158
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 161
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "RemoteVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    iput v5, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 166
    iput v5, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 167
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v6, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 169
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "RemoteVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    iput v5, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mCurrentState:I

    .line 172
    iput v5, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mTargetState:I

    .line 173
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v6, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 177
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-super {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->openVideo()V

    goto/16 :goto_0
.end method

.method public setAudioMute(Z)V
    .locals 0
    .parameter "isMute"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/mediatek/videofavorites/RemoteVideoView;->mMuteAudio:Z

    .line 97
    return-void
.end method

.method public setPlay(Z)V
    .locals 0
    .parameter "play"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->start()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/videofavorites/VideoTextureView;->stopPlayback()V

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/mediatek/videofavorites/VideoTextureView;->setVideoPath(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/mediatek/videofavorites/VideoTextureView;->setVideoURI(Landroid/net/Uri;)V

    .line 83
    return-void
.end method

.method public setVideoUriWithoutOpenVideo(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 87
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mUri:Landroid/net/Uri;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/videofavorites/VideoTextureView;->mSeekWhenPrepared:I

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 91
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 69
    const-string v0, "RemoteVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility(): v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method
