.class Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/android/gallery3d/app/MoviePlayer$Restorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerTimeoutExtension"
.end annotation


# instance fields
.field private mIsShowDialog:Z

.field private mLastDisconnectTime:J

.field private mServerTimeout:I

.field private mServerTimeoutDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeout:I

    .line 2134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mIsShowDialog:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2129
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2129
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->recordDisconnectTime()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2129
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->clearTimeoutDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2129
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->clearServerInfo()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2129
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mIsShowDialog:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2129
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mIsShowDialog:Z

    return p1
.end method

.method private clearServerInfo()V
    .locals 1

    .prologue
    .line 2169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeout:I

    .line 2170
    return-void
.end method

.method private clearTimeoutDialog()V
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    .line 2238
    return-void
.end method

.method private notifyServerTimeout()V
    .locals 4

    .prologue
    .line 2173
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2

    .line 2175
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2176
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3200(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 2178
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setDuration(I)V

    .line 2179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2180
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c01e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01e9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02a4

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    .line 2209
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$3;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2219
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2230
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2231
    return-void
.end method

.method private passDisconnectCheck()Z
    .locals 6

    .prologue
    .line 2140
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieStrategy;->shouldEnableServerTimeout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$4300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isRtspOrSdp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2145
    .local v0, now:J
    const-string v2, "Gallery2/MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passDisconnectCheck() now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastDisconnectTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mLastDisconnectTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mServerTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeout:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mLastDisconnectTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2150
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->notifyServerTimeout()V

    .line 2151
    const/4 v2, 0x0

    .line 2154
    .end local v0           #now:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private recordDisconnectTime()V
    .locals 4

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieStrategy;->shouldEnableServerTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isRtspOrSdp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mLastDisconnectTime:J

    .line 2164
    :cond_0
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordDisconnectTime() mLastDisconnectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mLastDisconnectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    return-void
.end method


# virtual methods
.method public handleOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2251
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mIsShowDialog:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoType:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$4300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLiveStreaming(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2258
    :cond_0
    :goto_0
    return v0

    .line 2255
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->passDisconnectCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2264
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mIsShowDialog:Z

    if-eqz v0, :cond_0

    .line 2265
    const/4 v0, 0x1

    .line 2267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 2242
    const-string v0, "last_disconnect_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mLastDisconnectTime:J

    .line 2243
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 2247
    const-string v0, "last_disconnect_time"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mLastDisconnectTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2248
    return-void
.end method

.method public setVideoInfo(Landroid/media/Metadata;)V
    .locals 3
    .parameter "data"

    .prologue
    const/16 v1, 0x2261

    .line 2271
    invoke-virtual {p1, v1}, Landroid/media/Metadata;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2272
    invoke-virtual {p1, v1}, Landroid/media/Metadata;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeout:I

    .line 2274
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get server timeout from metadata. mServerTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->mServerTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_0
    return-void
.end method
