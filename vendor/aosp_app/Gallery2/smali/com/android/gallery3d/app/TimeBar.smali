.class public Lcom/android/gallery3d/app/TimeBar;
.super Landroid/view/View;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/TimeBar$1;,
        Lcom/android/gallery3d/app/TimeBar$LayoutExt;,
        Lcom/android/gallery3d/app/TimeBar$Listener;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final SCRUBBER_PADDING_IN_DP:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Gallery2/TimeBar"

.field private static final TEXT_SIZE_IN_DP:I = 0xe

.field public static final UNKNOWN:I = -0x1

.field private static final V_PADDING_IN_DP:I = 0x1e


# instance fields
.field protected mCurrentTime:I

.field private mEnableScrubbing:Z

.field private mInfoExt:Lcom/android/gallery3d/app/InfoExtImpl;

.field private mLastShowTime:I

.field private mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

.field protected final mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

.field protected final mPlayedBar:Landroid/graphics/Rect;

.field protected final mPlayedPaint:Landroid/graphics/Paint;

.field protected final mProgressBar:Landroid/graphics/Rect;

.field protected final mProgressPaint:Landroid/graphics/Paint;

.field protected final mScrubber:Landroid/graphics/Bitmap;

.field protected mScrubberCorrection:I

.field protected mScrubberLeft:I

.field protected mScrubberPadding:I

.field protected mScrubberTop:I

.field protected mScrubbing:Z

.field private mSecondaryProgressExt:Lcom/android/gallery3d/app/SecondaryProgressExtImpl;

.field protected mShowScrubber:Z

.field protected mShowTimes:Z

.field protected final mTimeBounds:Landroid/graphics/Rect;

.field protected final mTimeTextPaint:Landroid/graphics/Paint;

.field protected mTotalTime:I

.field protected mVPaddingInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V
    .locals 8
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 310
    iput v6, p0, Lcom/android/gallery3d/app/TimeBar;->mLastShowTime:I

    .line 92
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/TimeBar$Listener;

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    .line 94
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mShowTimes:Z

    .line 95
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mShowScrubber:Z

    .line 97
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    .line 100
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    const v4, -0x7f7f80

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 106
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4160

    mul-float v2, v3, v4

    .line 107
    .local v2, textSizeInPx:F
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    const v4, -0x313132

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201ad

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    .line 116
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    .line 118
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41f0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    .line 120
    new-instance v3, Lcom/android/gallery3d/app/SecondaryProgressExtImpl;

    invoke-direct {v3}, Lcom/android/gallery3d/app/SecondaryProgressExtImpl;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mSecondaryProgressExt:Lcom/android/gallery3d/app/SecondaryProgressExtImpl;

    .line 121
    new-instance v3, Lcom/android/gallery3d/app/InfoExtImpl;

    invoke-direct {v3, v2}, Lcom/android/gallery3d/app/InfoExtImpl;-><init>(F)V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/InfoExtImpl;

    .line 122
    new-instance v3, Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;-><init>(Lcom/android/gallery3d/app/TimeBar;Lcom/android/gallery3d/app/TimeBar$1;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    .line 124
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x1

    .line 125
    .local v1, padding:I
    invoke-virtual {p0, v1, v7, v1, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    return-void
.end method

.method private clampScrubber()V
    .locals 4

    .prologue
    .line 194
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 195
    .local v0, half:I
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v0

    .line 196
    .local v1, max:I
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v0

    .line 197
    .local v2, min:I
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 198
    return-void
.end method

.method private getScrubberTime()I
    .locals 4

    .prologue
    .line 201
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 187
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    .line 188
    .local v1, scrubberRight:I
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberTop:I

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 189
    .local v0, scrubberBottom:I
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberTop:I

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 131
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    if-lez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 145
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->updateBounds()V

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/InfoExtImpl;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/gallery3d/app/InfoExtImpl;->updateVisibleText(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 152
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private updateBounds()V
    .locals 6

    .prologue
    .line 312
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    if-le v3, v4, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    .line 313
    .local v2, showTime:I
    :goto_0
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mLastShowTime:I

    if-ne v3, v2, :cond_1

    .line 324
    :goto_1
    return-void

    .line 312
    .end local v2           #showTime:I
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    goto :goto_0

    .line 317
    .restart local v2       #showTime:I
    :cond_1
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, durationText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 319
    .local v1, length:I
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 320
    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->mLastShowTime:I

    .line 322
    const-string v3, "Gallery2/TimeBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBounds() durationText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getBarHeight()I
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    add-int v0, v1, v2

    .line 167
    .local v0, barHeight:I
    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->getBarHeight(I)I

    move-result v1

    return v1
.end method

.method public getPreferredHeight()I
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int v0, v1, v2

    .line 159
    .local v0, preferredHeight:I
    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->getPreferredHeight(I)I

    move-result v1

    return v1
.end method

.method public getScrubbing()Z
    .locals 3

    .prologue
    .line 341
    const-string v0, "Gallery2/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableScrubbing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mSecondaryProgressExt:Lcom/android/gallery3d/app/SecondaryProgressExtImpl;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/app/SecondaryProgressExtImpl;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 236
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mShowTimes:Z

    if-eqz v0, :cond_1

    .line 240
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->getTimeOffset()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->getTimeOffset()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/InfoExtImpl;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p0, v2}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->getInfoBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/app/InfoExtImpl;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 252
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 207
    sub-int v3, p4, p2

    .line 208
    .local v3, w:I
    sub-int v0, p5, p3

    .line 209
    .local v0, h:I
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->mShowTimes:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-nez v4, :cond_0

    .line 210
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    .line 224
    return-void

    .line 212
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 213
    .local v1, margin:I
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->mShowTimes:Z

    if-eqz v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v1, v4

    .line 216
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->getProgressMargin(I)I

    move-result v1

    .line 217
    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TimeBar$LayoutExt;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/TimeBar$LayoutExt;->getProgressOffset()I

    move-result v5

    add-int v2, v4, v5

    .line 218
    .local v2, progressY:I
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberTop:I

    .line 219
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v6, v1

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 257
    const-string v2, "Gallery2/TimeBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent() showScrubber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->mShowScrubber:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enableScrubbing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scrubbing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 264
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 266
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 294
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    :goto_0
    return v5

    .line 268
    .restart local v0       #x:I
    .restart local v1       #y:I
    :pswitch_0
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/app/TimeBar;->inScrubber(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    sub-int v2, v0, v2

    :goto_1
    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberCorrection:I

    .line 270
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    .line 271
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-interface {v2}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingStart()V

    .line 275
    :pswitch_1
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberCorrection:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 276
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->clampScrubber()V

    .line 277
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    .line 278
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 279
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 284
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v3

    invoke-interface {v2, v3, v6, v6}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(III)V

    .line 286
    iput-boolean v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    .line 287
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 351
    const-string v0, "Gallery2/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/InfoExtImpl;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/InfoExtImpl;->setInfo(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/InfoExtImpl;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/gallery3d/app/InfoExtImpl;->updateVisibleText(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 355
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 356
    return-void
.end method

.method public setScrubbing(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 331
    const-string v0, "Gallery2/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrubbing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") scrubbing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iput-boolean p1, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    .line 334
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v1

    invoke-interface {v0, v1, v3, v3}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(III)V

    .line 336
    iput-boolean v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    .line 338
    :cond_0
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 362
    const-string v0, "Gallery2/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecondaryProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mSecondaryProgressExt:Lcom/android/gallery3d/app/SecondaryProgressExtImpl;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/SecondaryProgressExtImpl;->setSecondaryProgress(Landroid/graphics/Rect;I)V

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 366
    return-void
.end method

.method public setTime(IIII)V
    .locals 3
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 173
    const-string v0, "Gallery2/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    if-ne v0, p2, :cond_0

    .line 184
    :goto_0
    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    .line 179
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    .line 180
    if-gtz p2, :cond_1

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/TimeBar;->setScrubbing(Z)V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    goto :goto_0
.end method

.method protected stringForTime(J)Ljava/lang/String;
    .locals 10
    .parameter "millis"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 298
    long-to-int v4, p1

    div-int/lit16 v3, v4, 0x3e8

    .line 299
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 300
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 301
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 302
    .local v0, hours:I
    if-lez v0, :cond_0

    .line 303
    const-string v4, "%2d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    :goto_0
    return-object v4

    :cond_0
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
