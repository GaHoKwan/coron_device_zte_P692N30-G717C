.class public Lcom/mediatek/gallery3d/mpo/MavSeekBar;
.super Landroid/widget/SeekBar;
.source "MavSeekBar.java"


# static fields
.field public static final INVALID_PROCESS:I = -0x1

.field private static final MSG_UPDATE_THUMB_APHPA:I = 0x0

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_SLIDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/MavSeekBar"


# instance fields
.field private alpha:I

.field private mHander:Landroid/os/Handler;

.field private mProgressDrawableLoading:Landroid/graphics/drawable/Drawable;

.field private mProgressDrawableSliding:Landroid/graphics/drawable/Drawable;

.field private mState:I

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I

    .line 90
    new-instance v0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;-><init>(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mHander:Landroid/os/Handler;

    .line 38
    const-string v0, "Gallery2/MavSeekBar"

    const-string v1, "constructor #1 called"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->initializeDrawable()V

    .line 40
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I

    .line 90
    new-instance v0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;-><init>(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mHander:Landroid/os/Handler;

    .line 44
    const-string v0, "Gallery2/MavSeekBar"

    const-string v1, "constructor #2 called"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->initializeDrawable()V

    .line 46
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I

    .line 90
    new-instance v0, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar$1;-><init>(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mHander:Landroid/os/Handler;

    .line 51
    const-string v0, "Gallery2/MavSeekBar"

    const-string v1, "constructor #3 called"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->initializeDrawable()V

    .line 53
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I

    return v0
.end method

.method static synthetic access$112(Lcom/mediatek/gallery3d/mpo/MavSeekBar;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/mpo/MavSeekBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->setState(I)V

    .line 130
    return-void
.end method

.method private initializeDrawable()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mProgressDrawableLoading:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mProgressDrawableSliding:Landroid/graphics/drawable/Drawable;

    .line 143
    return-void
.end method

.method private setState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    iput p1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mState:I

    .line 58
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mState:I

    if-nez v0, :cond_1

    .line 59
    const-string v0, "Gallery2/MavSeekBar"

    const-string v1, "set MavSeekBar state as STATE_LOADING"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mHander:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->setProgress(I)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mProgressDrawableLoading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mState:I

    if-ne v0, v3, :cond_0

    .line 70
    const-string v0, "Gallery2/MavSeekBar"

    const-string v1, "set MavSeekBar state as STATE_SLIDING"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->setProgress(I)V

    .line 74
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->showThumb()V

    .line 77
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mProgressDrawableSliding:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mState:I

    return v0
.end method

.method public restore()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->init()V

    .line 137
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mHander:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 111
    monitor-enter p0

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mState:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 113
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter sliding mode, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v0, p1

    .line 111
    goto :goto_0

    .line 115
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mState:I

    if-ne v0, v2, :cond_0

    if-ne p1, v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->restore()V

    .line 151
    :cond_0
    return-void
.end method

.method public showThumb()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->alpha:I

    .line 85
    iget-object v0, p0, Lcom/mediatek/gallery3d/mpo/MavSeekBar;->mHander:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method

.method public syncProgressByGyroSensor(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 122
    return-void
.end method
