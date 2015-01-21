.class public Lcom/hf/UI/HFVideoView;
.super Landroid/view/SurfaceView;
.source "HFVideoView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected surfaceHolder:Landroid/view/SurfaceHolder;

.field private videoHeight:I

.field private videoUri:Landroid/net/Uri;

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "customer.videoplayer"

    sput-object v0, Lcom/hf/UI/HFVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/hf/UI/HFVideoView$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFVideoView$1;-><init>(Lcom/hf/UI/HFVideoView;)V

    iput-object v0, p0, Lcom/hf/UI/HFVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 34
    new-instance v0, Lcom/hf/UI/HFVideoView$2;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFVideoView$2;-><init>(Lcom/hf/UI/HFVideoView;)V

    iput-object v0, p0, Lcom/hf/UI/HFVideoView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 83
    iput-object p1, p0, Lcom/hf/UI/HFVideoView;->context:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/hf/UI/HFVideoView;->initVideoView()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/hf/UI/HFVideoView$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFVideoView$1;-><init>(Lcom/hf/UI/HFVideoView;)V

    iput-object v0, p0, Lcom/hf/UI/HFVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 34
    new-instance v0, Lcom/hf/UI/HFVideoView$2;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFVideoView$2;-><init>(Lcom/hf/UI/HFVideoView;)V

    iput-object v0, p0, Lcom/hf/UI/HFVideoView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 78
    iput-object p1, p0, Lcom/hf/UI/HFVideoView;->context:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/hf/UI/HFVideoView;->initVideoView()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Lcom/hf/UI/HFVideoView$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFVideoView$1;-><init>(Lcom/hf/UI/HFVideoView;)V

    iput-object v0, p0, Lcom/hf/UI/HFVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 34
    new-instance v0, Lcom/hf/UI/HFVideoView$2;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFVideoView$2;-><init>(Lcom/hf/UI/HFVideoView;)V

    iput-object v0, p0, Lcom/hf/UI/HFVideoView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 73
    iput-object p1, p0, Lcom/hf/UI/HFVideoView;->context:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/hf/UI/HFVideoView;->initVideoView()V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/HFVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/HFVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/hf/UI/HFVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/UI/HFVideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/UI/HFVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/hf/UI/HFVideoView;->release(Z)V

    return-void
.end method

.method private initVideoView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    sget-object v0, Lcom/hf/UI/HFVideoView;->TAG:Ljava/lang/String;

    const-string v1, "initVideoView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput v2, p0, Lcom/hf/UI/HFVideoView;->videoWidth:I

    .line 131
    iput v2, p0, Lcom/hf/UI/HFVideoView;->videoHeight:I

    .line 132
    invoke-virtual {p0}, Lcom/hf/UI/HFVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/UI/HFVideoView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 133
    invoke-virtual {p0}, Lcom/hf/UI/HFVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/hf/UI/HFVideoView;->setFocusable(Z)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/hf/UI/HFVideoView;->setFocusableInTouchMode(Z)V

    .line 136
    return-void
.end method

.method private openVideo()V
    .locals 4

    .prologue
    .line 103
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/hf/UI/HFVideoView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/hf/UI/HFVideoView;->videoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iget-object v1, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 111
    iget-object v1, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 112
    iget-object v1, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/hf/UI/HFVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 113
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/hf/UI/HFVideoView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private release(Z)V
    .locals 1
    .parameter "cleartargetstate"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 58
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 116
    iget v2, p0, Lcom/hf/UI/HFVideoView;->videoWidth:I

    invoke-static {v2, p1}, Lcom/hf/UI/HFVideoView;->getDefaultSize(II)I

    move-result v1

    .line 117
    .local v1, width:I
    iget v2, p0, Lcom/hf/UI/HFVideoView;->videoHeight:I

    invoke-static {v2, p2}, Lcom/hf/UI/HFVideoView;->getDefaultSize(II)I

    move-result v0

    .line 118
    .local v0, height:I
    iget v2, p0, Lcom/hf/UI/HFVideoView;->videoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/hf/UI/HFVideoView;->videoHeight:I

    if-lez v2, :cond_0

    .line 119
    iget v2, p0, Lcom/hf/UI/HFVideoView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/hf/UI/HFVideoView;->videoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 120
    iget v2, p0, Lcom/hf/UI/HFVideoView;->videoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/hf/UI/HFVideoView;->videoWidth:I

    div-int v0, v2, v3

    .line 125
    :cond_0
    :goto_0
    sget-object v2, Lcom/hf/UI/HFVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setting size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, v1, v0}, Lcom/hf/UI/HFVideoView;->setMeasuredDimension(II)V

    .line 127
    return-void

    .line 121
    :cond_1
    iget v2, p0, Lcom/hf/UI/HFVideoView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/hf/UI/HFVideoView;->videoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 122
    iget v2, p0, Lcom/hf/UI/HFVideoView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/hf/UI/HFVideoView;->videoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 101
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/hf/UI/HFVideoView;->openVideo()V

    goto :goto_0
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/hf/UI/HFVideoView;->videoUri:Landroid/net/Uri;

    .line 88
    invoke-direct {p0}, Lcom/hf/UI/HFVideoView;->openVideo()V

    .line 89
    invoke-virtual {p0}, Lcom/hf/UI/HFVideoView;->requestLayout()V

    .line 90
    invoke-virtual {p0}, Lcom/hf/UI/HFVideoView;->invalidate()V

    .line 91
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/hf/UI/HFVideoView;->openVideo()V

    .line 95
    iget-object v0, p0, Lcom/hf/UI/HFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 97
    return-void
.end method
