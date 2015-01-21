.class public Lcom/mediatek/vlw/VLWMediaController;
.super Landroid/widget/MediaController;
.source "VLWMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vlw/VLWMediaController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ELIMINATE_ERROR:F = 0.5f

.field private static final FADE_OUT:I = 0x1

.field private static final FPS:I = 0x21

.field private static final LOCATION_DEFAULT:I = 0x0

.field private static final LOCATION_SIZE:I = 0x2

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MAX_SEEK:I = 0x3e8

.field private static final PROGRESS:I = 0x3e8

.field private static final PROGRESSMINT:I = -0xff3a70

.field private static final PROGRESSMOCHA:I = -0x485f9d

.field private static final PROGRESSRASPBERRY:I = -0x1db188

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VLWMediaController"


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/vlw/VLWMediaController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mDuration:I

.field private mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

.field private mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

.field private final mEndListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mEndPosition:I

.field private mEndTime:Landroid/widget/TextView;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mGottenCallbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;

.field private mHaveGottenCallbacks:Z

.field private mIsEditmode:Z

.field private mMinDuration:I

.field private final mMyHandler:Landroid/os/Handler;

.field private mNewPosition:I

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPosChange:Z

.field private mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

.field private final mProgressListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mRoot:Landroid/view/View;

.field private final mStartListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStartPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    .line 126
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$1;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 172
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$2;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$2;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 224
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$3;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$3;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 759
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$7;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$7;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;

    .line 291
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    .line 126
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$1;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 172
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$2;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$2;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 224
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$3;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$3;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 759
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$7;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$7;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;

    .line 301
    iput-object p0, p0, Lcom/mediatek/vlw/VLWMediaController;->mRoot:Landroid/view/View;

    .line 302
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    .line 126
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$1;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 172
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$2;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$2;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 224
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$3;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$3;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 759
    new-instance v0, Lcom/mediatek/vlw/VLWMediaController$7;

    invoke-direct {v0, p0}, Lcom/mediatek/vlw/VLWMediaController$7;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    iput-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;

    .line 320
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    .line 321
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/vlw/VLWMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/vlw/VLWMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/vlw/VLWMediaController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/vlw/VLWMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/vlw/VLWMediaController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenStartChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/vlw/VLWMediaController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VLWMediaController;->setLevelFromProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/vlw/VLWMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/vlw/VLWMediaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/vlw/VLWMediaController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenEndChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/vlw/VLWMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/vlw/VLWMediaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/vlw/VLWMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/vlw/VLWMediaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/vlw/VLWMediaController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenProgressChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/vlw/VLWMediaController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VLWMediaController;->updateFrame(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/vlw/VLWMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/vlw/VLWMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/vlw/VLWMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/vlw/VLWMediaController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    return p1
.end method

.method private setLevelFromProgress(I)I
    .locals 6
    .parameter "progress"

    .prologue
    .line 374
    iget-object v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    if-lez v4, :cond_1

    int-to-float v4, p1

    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 376
    .local v3, scale:F
    :goto_0
    iget-object v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 377
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 378
    const/4 v2, 0x0

    .line 380
    .local v2, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 381
    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 385
    :cond_0
    const v4, 0x461c4000

    mul-float/2addr v4, v3

    float-to-int v1, v4

    .line 386
    .local v1, level:I
    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 395
    .end local v1           #level:I
    .end local v2           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    return v1

    .line 374
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #scale:F
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 389
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #level:I
    .restart local v2       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #scale:F
    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 395
    .end local v1           #level:I
    .end local v2           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateFrame(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    goto :goto_0
.end method

.method private updateUIWhenEndChanged(I)V
    .locals 7
    .parameter "newProgress"

    .prologue
    const-wide v5, 0x408f400000000000L

    .line 742
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    if-eqz v1, :cond_1

    .line 743
    if-lez p1, :cond_2

    move v0, p1

    .line 745
    .local v0, progress:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 746
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 749
    :cond_0
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-int v0, v1

    .line 750
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 755
    .end local v0           #progress:I
    :cond_1
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    invoke-direct {p0, v1}, Lcom/mediatek/vlw/VLWMediaController;->updateFrame(I)V

    .line 756
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->updateState()V

    .line 757
    return-void

    .line 743
    :cond_2
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method

.method private updateUIWhenProgressChanged(I)V
    .locals 2
    .parameter "newProgress"

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    :cond_0
    iget v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    invoke-direct {p0, v0}, Lcom/mediatek/vlw/VLWMediaController;->updateFrame(I)V

    .line 705
    :cond_1
    if-gez p1, :cond_2

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z

    .line 707
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 709
    :cond_2
    return-void
.end method

.method private updateUIWhenStartChanged(I)V
    .locals 7
    .parameter "newProgress"

    .prologue
    const-wide v5, 0x408f400000000000L

    .line 718
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    if-eqz v1, :cond_1

    .line 719
    if-lez p1, :cond_2

    move v0, p1

    .line 721
    .local v0, progress:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 722
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 725
    :cond_0
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 726
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 731
    .end local v0           #progress:I
    :cond_1
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    invoke-direct {p0, v1}, Lcom/mediatek/vlw/VLWMediaController;->updateFrame(I)V

    .line 732
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->updateState()V

    .line 733
    return-void

    .line 719
    :cond_2
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/mediatek/vlw/VLWMediaController$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 946
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_0
    monitor-exit v1

    .line 953
    return-void

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 583
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 587
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "ev"

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 326
    .local v12, width:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 327
    .local v6, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 328
    .local v7, paddingRight:I
    sub-int v13, v12, v6

    sub-int v1, v13, v7

    .line 330
    .local v1, available:I
    const/4 v13, 0x2

    new-array v5, v13, [I

    .line 331
    .local v5, loc:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 332
    const/4 v13, 0x0

    aget v13, v5, v13

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v14}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v14

    mul-int/2addr v14, v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v15}, Landroid/widget/ProgressBar;->getMax()I

    move-result v15

    div-int/2addr v14, v15

    add-int v11, v13, v14

    .line 335
    .local v11, startPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 338
    sub-int v13, v12, v6

    sub-int v1, v13, v7

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 340
    const/4 v13, 0x0

    aget v13, v5, v13

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v14}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v14

    mul-int/2addr v14, v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v15}, Landroid/widget/ProgressBar;->getMax()I

    move-result v15

    div-int/2addr v14, v15

    add-int v4, v13, v14

    .line 343
    .local v4, endPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 345
    .local v2, bottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v8, v13

    .line 346
    .local v8, posX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v9, v13

    .line 349
    .local v9, posY:I
    sub-int v13, v11, v8

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 350
    .local v10, startOffset:I
    sub-int v13, v4, v8

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 354
    .local v3, endOffset:I
    if-le v9, v2, :cond_0

    if-ge v10, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 358
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setPressed(Z)V

    .line 361
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 370
    :goto_0
    return v13

    .line 364
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setPressed(Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    .line 370
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto :goto_0
.end method

.method public getCallbacks()[Lcom/mediatek/vlw/VLWMediaController$Callback;
    .locals 4

    .prologue
    .line 970
    iget-boolean v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mHaveGottenCallbacks:Z

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mGottenCallbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;

    .line 987
    :goto_0
    return-object v1

    .line 974
    :cond_0
    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 976
    .local v0, callbackNum:I
    if-lez v0, :cond_3

    .line 977
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mGottenCallbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mGottenCallbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 978
    :cond_1
    new-array v1, v0, [Lcom/mediatek/vlw/VLWMediaController$Callback;

    iput-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mGottenCallbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;

    .line 980
    :cond_2
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mGottenCallbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 984
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mHaveGottenCallbacks:Z

    .line 985
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mGottenCallbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;

    goto :goto_0

    .line 982
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mGottenCallbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;

    goto :goto_1

    .line 985
    .end local v0           #callbackNum:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getEndPosition()J
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStartPosition()J
    .locals 2

    .prologue
    .line 403
    iget v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 544
    return-void
.end method

.method public initControllerState(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 468
    const-string v3, "VLWMediaController"

    const-string v4, "initControllerState(%d, %d, %d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iput p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    .line 473
    iput p2, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    .line 474
    iput p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    .line 475
    iput p3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    .line 476
    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    if-gtz v3, :cond_0

    .line 477
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    .line 478
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    .line 479
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    .line 480
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    .line 482
    :cond_0
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    invoke-interface {v3, v4}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 483
    div-int/lit16 v2, p3, 0x3e8

    .line 484
    .local v2, step:I
    if-gtz v2, :cond_3

    .line 485
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    .line 492
    :goto_0
    const-wide v3, 0x408f400000000000L

    iget v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    int-to-double v5, p3

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 493
    .local v1, rt:I
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 494
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v3, v1}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 495
    const-wide v3, 0x408f400000000000L

    iget v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    int-to-double v5, p3

    div-double/2addr v3, v5

    iget v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v1, v3

    .line 496
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v3, v1}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 498
    const-wide v3, 0x408f400000000000L

    iget v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    int-to-double v5, p3

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 499
    .local v0, lt:I
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 500
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v3, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 501
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 502
    invoke-direct {p0, v0}, Lcom/mediatek/vlw/VLWMediaController;->setLevelFromProgress(I)I

    .line 503
    const-wide v3, 0x408f400000000000L

    iget v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    int-to-double v5, p3

    div-double/2addr v3, v5

    iget v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 504
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v3, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 506
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndTime:Landroid/widget/TextView;

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    invoke-virtual {p0, v4}, Lcom/mediatek/vlw/VLWMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 510
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    invoke-virtual {p0, v4}, Lcom/mediatek/vlw/VLWMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :cond_2
    return-void

    .line 486
    .end local v0           #lt:I
    .end local v1           #rt:I
    :cond_3
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_4

    .line 487
    const/high16 v3, 0x447a

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    goto/16 :goto_0

    .line 489
    :cond_4
    const/4 v3, 0x1

    iput v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    goto/16 :goto_0
.end method

.method protected initControllerView(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x3e8

    .line 609
    const v5, 0x7f0a0014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/vlw/VLWSeekBar;

    iput-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    .line 610
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v5, :cond_0

    .line 611
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    iget-object v6, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 612
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 613
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    iget v6, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    rsub-int v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 614
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v8}, Lcom/mediatek/vlw/VLWSeekBar;->setAlpha(I)V

    .line 615
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    new-instance v6, Lcom/mediatek/vlw/VLWMediaController$4;

    invoke-direct {v6, p0}, Lcom/mediatek/vlw/VLWMediaController$4;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    invoke-virtual {v5, v6}, Lcom/mediatek/vlw/VLWSeekBar;->setOnTouchUpWithoutHandledListener(Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;)V

    .line 626
    :cond_0
    const v5, 0x7f0a0015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/vlw/VLWSeekBar;

    iput-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    .line 627
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v5, :cond_1

    .line 628
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    iget-object v6, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 629
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 630
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    iget v6, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    invoke-virtual {v5, v6}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 631
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 632
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v8}, Lcom/mediatek/vlw/VLWSeekBar;->setAlpha(I)V

    .line 633
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    new-instance v6, Lcom/mediatek/vlw/VLWMediaController$5;

    invoke-direct {v6, p0}, Lcom/mediatek/vlw/VLWMediaController$5;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    invoke-virtual {v5, v6}, Lcom/mediatek/vlw/VLWSeekBar;->setOnTouchUpWithoutHandledListener(Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;)V

    .line 644
    :cond_1
    const v5, 0x7f0a0013

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/vlw/VLWSeekBar;

    iput-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    .line 645
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v5, :cond_3

    .line 648
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 649
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v4

    .line 650
    .local v4, textColor:I
    if-eqz v4, :cond_2

    .line 651
    sparse-switch v4, :sswitch_data_0

    .line 673
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    iget-object v6, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 674
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 675
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 676
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    new-instance v6, Lcom/mediatek/vlw/VLWMediaController$6;

    invoke-direct {v6, p0}, Lcom/mediatek/vlw/VLWMediaController$6;-><init>(Lcom/mediatek/vlw/VLWMediaController;)V

    invoke-virtual {v5, v6}, Lcom/mediatek/vlw/VLWSeekBar;->setOnTouchUpWithoutHandledListener(Lcom/mediatek/vlw/VLWSeekBar$OnTouchUpWithoutHandledListener;)V

    .line 687
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #textColor:I
    :cond_3
    const v5, 0x7f0a0012

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndTime:Landroid/widget/TextView;

    .line 688
    const v5, 0x7f0a0011

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 690
    new-instance v5, Ljava/util/Formatter;

    iget-object v6, p0, Lcom/mediatek/vlw/VLWMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mFormatter:Ljava/util/Formatter;

    .line 691
    return-void

    .line 653
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #textColor:I
    :sswitch_0
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 655
    .local v2, drawableRaspberry:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 658
    .end local v2           #drawableRaspberry:Landroid/graphics/drawable/Drawable;
    :sswitch_1
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 660
    .local v0, drawableMint:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 663
    .end local v0           #drawableMint:Landroid/graphics/drawable/Drawable;
    :sswitch_2
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 665
    .local v1, drawableMocha:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 651
    :sswitch_data_0
    .sparse-switch
        -0xff3a70 -> :sswitch_1
        -0x485f9d -> :sswitch_2
        -0x1db188 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isEditMode()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 4

    .prologue
    .line 599
    const-string v1, "VLWMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 603
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mRoot:Landroid/view/View;

    .line 604
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/mediatek/vlw/VLWMediaController;->initControllerView(Landroid/view/View;)V

    .line 605
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/vlw/VLWMediaController;->initControllerView(Landroid/view/View;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/vlw/VLWMediaController;->updateUI(Z)V

    .line 440
    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_1

    .line 419
    iget-boolean v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    invoke-interface {v0, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/vlw/VLWMediaController;->updateUI(Z)V

    .line 424
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 425
    iput-boolean v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z

    .line 426
    iput-boolean v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z

    .line 428
    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/mediatek/vlw/VLWMediaController$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 960
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 961
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 962
    monitor-exit v1

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 523
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 896
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 897
    return-void
.end method

.method public setMdragging(Z)V
    .locals 0
    .parameter "isTrue"

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z

    .line 922
    return-void
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 535
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 536
    return-void
.end method

.method protected setProgress()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 840
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z

    if-eqz v3, :cond_1

    .line 882
    :cond_0
    :goto_0
    return v2

    .line 843
    :cond_1
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 844
    .local v0, curPos:I
    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v3

    iput v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    .line 845
    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    if-gtz v3, :cond_5

    .line 846
    iput v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    .line 847
    iput v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    .line 858
    :goto_1
    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v2, :cond_2

    .line 859
    iget v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    if-lez v2, :cond_2

    .line 861
    const-wide v2, 0x408f400000000000L

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 862
    .local v1, pos:I
    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 864
    const-string v2, "VLWMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProgress() mNewPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .end local v1           #pos:I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 871
    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndTime:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    invoke-virtual {p0, v3}, Lcom/mediatek/vlw/VLWMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    :cond_3
    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 875
    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    invoke-virtual {p0, v3}, Lcom/mediatek/vlw/VLWMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    :cond_4
    iget v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_7

    .line 880
    const/16 v2, 0x384

    goto/16 :goto_0

    .line 848
    :cond_5
    iget v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    if-ge v0, v2, :cond_6

    iget v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    if-ge v0, v2, :cond_6

    iget v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    if-le v0, v2, :cond_6

    .line 851
    const-string v2, "VLWMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProgress() Warning: mNewPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " curPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    const/16 v3, 0x64

    iget v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    iget v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    goto/16 :goto_1

    .line 855
    :cond_6
    iput v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    goto/16 :goto_1

    .line 882
    :cond_7
    iget v2, p0, Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I

    goto/16 :goto_0
.end method

.method public show(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 554
    return-void
.end method

.method protected stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 794
    div-int/lit16 v3, p1, 0x3e8

    .line 796
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 797
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 798
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 800
    .local v0, hours:I
    iget-object v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 801
    if-lez v0, :cond_0

    .line 802
    iget-object v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 805
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/mediatek/vlw/VLWMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public traceBack(I)V
    .locals 3
    .parameter "curPos"

    .prologue
    .line 450
    const-string v0, "VideoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "traceBack(), curPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 453
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->setProgress()I

    .line 454
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->updateTrimTime()V

    .line 455
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VLWMediaController;->updateFrame(I)V

    .line 456
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->updateState()V

    .line 457
    return-void
.end method

.method public ungetCallbacks()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vlw/VLWMediaController;->mHaveGottenCallbacks:Z

    .line 992
    return-void
.end method

.method protected updateState()V
    .locals 7

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->ungetCallbacks()V

    .line 831
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->getCallbacks()[Lcom/mediatek/vlw/VLWMediaController$Callback;

    move-result-object v2

    .line 832
    .local v2, callbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;
    if-eqz v2, :cond_0

    .line 833
    move-object v0, v2

    .local v0, arr$:[Lcom/mediatek/vlw/VLWMediaController$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 834
    .local v1, c:Lcom/mediatek/vlw/VLWMediaController$Callback;
    iget v5, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    iget v6, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    invoke-interface {v1, v5, v6}, Lcom/mediatek/vlw/VLWMediaController$Callback;->updateState(II)V

    .line 833
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 837
    .end local v0           #arr$:[Lcom/mediatek/vlw/VLWMediaController$Callback;
    .end local v1           #c:Lcom/mediatek/vlw/VLWMediaController$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public updateTrimTime()V
    .locals 9

    .prologue
    const-wide/high16 v7, 0x3fe0

    const-wide v5, 0x408f400000000000L

    .line 900
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    add-double/2addr v1, v7

    double-to-int v0, v1

    .line 901
    .local v0, progress:I
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 902
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 905
    invoke-direct {p0, v0}, Lcom/mediatek/vlw/VLWMediaController;->setLevelFromProgress(I)I

    .line 907
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    add-double/2addr v1, v7

    double-to-int v0, v1

    .line 908
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 909
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 910
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 911
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 912
    iget v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-int v0, v1

    .line 913
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1, v0}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 914
    return-void
.end method

.method protected updateUI(Z)V
    .locals 5
    .parameter "isPlaying"

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->ungetCallbacks()V

    .line 820
    invoke-virtual {p0}, Lcom/mediatek/vlw/VLWMediaController;->getCallbacks()[Lcom/mediatek/vlw/VLWMediaController$Callback;

    move-result-object v2

    .line 821
    .local v2, callbacks:[Lcom/mediatek/vlw/VLWMediaController$Callback;
    if-eqz v2, :cond_0

    .line 822
    move-object v0, v2

    .local v0, arr$:[Lcom/mediatek/vlw/VLWMediaController$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 823
    .local v1, c:Lcom/mediatek/vlw/VLWMediaController$Callback;
    invoke-interface {v1, p1}, Lcom/mediatek/vlw/VLWMediaController$Callback;->updateUI(Z)V

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 826
    .end local v0           #arr$:[Lcom/mediatek/vlw/VLWMediaController$Callback;
    .end local v1           #c:Lcom/mediatek/vlw/VLWMediaController$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method
