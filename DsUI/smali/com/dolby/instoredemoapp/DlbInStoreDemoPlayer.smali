.class public Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;
.super Landroid/app/Activity;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DlbInStoreDemoPlayer"


# instance fields
.field private mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mApController:Lcom/dolby/instoredemoapp/DlbApController;

.field private mAutoPilotDataStream:Ljava/io/InputStream;

.field private mExitBtn:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mIsManualStop:Z

.field private mIsPlayingLoopMedia:Z

.field private mIsPrepared:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mReplayBtn:Landroid/widget/ImageButton;

.field private mReplayEnabled:Z

.field private mStopBtn:Landroid/widget/ImageButton;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    .line 48
    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    .line 49
    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    .line 50
    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    .line 51
    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    .line 52
    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    .line 53
    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    .line 279
    new-instance v0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$5;

    invoke-direct {v0, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$5;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/dolby/instoredemoapp/DlbApController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getLoopUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    return v0
.end method

.method static synthetic access$402(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    return p1
.end method

.method static synthetic access$500(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getDemoUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getAutoPilotXmlFile()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    return p1
.end method

.method static synthetic access$800(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    return p1
.end method

.method private getAudioFocus()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    .line 296
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 297
    .local v0, am:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 300
    .local v1, result:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 301
    const-string v2, "DlbInStoreDemoPlayer"

    const-string v3, "DlbInstoreDemoPlayer.getAudioFocus, succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v2, "DlbInStoreDemoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DlbInstoreDemoPlayer.getAudioFocus failed, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAutoPilotXmlFile()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "instore_demo_autopilot.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    return-object v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "DlbInstoreDemoPlayer.getAutoPilotXmlFile, the file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7e1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getColorByName(Ljava/lang/String;)I
    .locals 2
    .parameter "color"

    .prologue
    .line 262
    const/4 v0, -0x1

    .line 263
    .local v0, icolor:I
    const-string v1, "White"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const/4 v0, -0x1

    .line 276
    :goto_0
    return v0

    .line 265
    :cond_0
    const-string v1, "Black"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const/high16 v0, -0x100

    goto :goto_0

    .line 267
    :cond_1
    const-string v1, "Red"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    const/high16 v0, -0x1

    goto :goto_0

    .line 269
    :cond_2
    const-string v1, "Yellow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    const/16 v0, -0x100

    goto :goto_0

    .line 271
    :cond_3
    const-string v1, "Blue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    const v0, -0xffff01

    goto :goto_0

    .line 274
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getDemoUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 308
    .local v0, demoUri:Landroid/net/Uri;
    const-string v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "demoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v0
.end method

.method private getLoopUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    .local v0, loopUri:Landroid/net/Uri;
    const-string v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loopUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v0
.end method

.method private updateDisplayText(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 259
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 201
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onCompletion called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    .line 204
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7df

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    .line 63
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 64
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 65
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 67
    new-instance v0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;

    invoke-direct {v0, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$1;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    .line 112
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    .line 113
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;

    invoke-direct {v1, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$2;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    .line 127
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;

    invoke-direct {v1, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$3;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mExitBtn:Landroid/widget/ImageButton;

    .line 142
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mExitBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$4;

    invoke-direct {v1, p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer$4;-><init>(Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 190
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-virtual {v1}, Lcom/dolby/instoredemoapp/DlbApController;->onExit()V

    .line 194
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 195
    .local v0, am:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 229
    const-string v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called, what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 179
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/DlbApController;->restoreAllDs1Data()V

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 186
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaplayer"

    .prologue
    .line 216
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onPrepared called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-object p1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    .line 219
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getAudioFocus()V

    .line 221
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/dolby/instoredemoapp/DlbApController;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 222
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 223
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 224
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-virtual {v0}, Lcom/dolby/instoredemoapp/DlbApController;->sendApMessages()V

    .line 226
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 163
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-virtual {v1}, Lcom/dolby/instoredemoapp/DlbApController;->saveCurrentDs1Data()Z

    move-result v0

    .line 168
    .local v0, ret:Z
    if-nez v0, :cond_1

    .line 169
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "DlbInstoreDemoPlayer.onResume(), failed to saveCurrentDs1Data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 153
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/dolby/instoredemoapp/DlbApController;

    invoke-direct {v0, p0}, Lcom/dolby/instoredemoapp/DlbApController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    .line 156
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    iget-object v1, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/dolby/instoredemoapp/DlbApController;->setHandler(Landroid/os/Handler;)V

    .line 157
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/dolby/instoredemoapp/DlbApController;

    invoke-direct {p0}, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->getAutoPilotXmlFile()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolby/instoredemoapp/DlbApController;->setApInfoFile(Ljava/io/InputStream;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x7df

    const/4 v3, 0x0

    .line 235
    const-string v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent called action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-boolean v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 239
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    :cond_0
    :goto_0
    return v3

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
