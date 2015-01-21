.class public Lcom/android/gallery3d/app/TrimTimeBar;
.super Lcom/android/gallery3d/app/TimeBar;
.source "TrimTimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/TrimTimeBar$1;,
        Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;
    }
.end annotation


# static fields
.field public static final SCRUBBER_CURRENT:I = 0x2

.field public static final SCRUBBER_END:I = 0x3

.field public static final SCRUBBER_NONE:I = 0x0

.field public static final SCRUBBER_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/TrimTimeBar"


# instance fields
.field private mLayoutExt:Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;

.field private mPressedThumb:I

.field private final mTrimEndScrubber:Landroid/graphics/Bitmap;

.field private mTrimEndScrubberLeft:I

.field private mTrimEndScrubberTop:I

.field private mTrimEndTime:I

.field private final mTrimStartScrubber:Landroid/graphics/Bitmap;

.field private mTrimStartScrubberLeft:I

.field private mTrimStartScrubberTop:I

.field private mTrimStartTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    .line 39
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    .line 58
    const-string v0, "Gallery2/TrimTimeBar"

    const-string v1, "TrimTimeBar init"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 60
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 61
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 62
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 63
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    .line 64
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ba

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    .line 72
    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberPadding:I

    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->mVPaddingInPx:I

    .line 74
    new-instance v0, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;-><init>(Lcom/android/gallery3d/app/TrimTimeBar;Lcom/android/gallery3d/app/TrimTimeBar$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/TrimTimeBar;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private clampScrubber(IIII)I
    .locals 3
    .parameter "scrubberLeft"
    .parameter "offset"
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 165
    sub-int v0, p4, p2

    .line 166
    .local v0, max:I
    sub-int v1, p3, p2

    .line 167
    .local v1, min:I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getBarPosFromTime(I)I
    .locals 5
    .parameter "time"

    .prologue
    .line 78
    const-string v0, "Gallery2/TrimTimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBarPosFromTime time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getScrubberTime(II)I
    .locals 4
    .parameter "scrubberLeft"
    .parameter "offset"

    .prologue
    .line 171
    add-int v0, p1, p2

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

.method private inScrubber(FFIILandroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrubber"

    .prologue
    .line 159
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int v1, p3, v2

    .line 160
    .local v1, scrubberRight:I
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v0, p4, v2

    .line 161
    .local v0, scrubberBottom:I
    int-to-float v2, p3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    int-to-float v2, p4

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    int-to-float v2, v0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initTrimTimeIfNeeded()V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    if-nez v0, :cond_0

    .line 119
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 121
    :cond_0
    return-void
.end method

.method private trimEndScrubberTipOffset()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private trimStartScrubberTipOffset()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private update()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "Gallery2/TrimTimeBar"

    const-string v1, "update()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->initTrimTimeIfNeeded()V

    .line 126
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->updatePlayedBarAndScrubberFromTime()V

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 128
    return-void
.end method

.method private updatePlayedBarAndScrubberFromTime()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "Gallery2/TrimTimeBar"

    const-string v1, "updatePlayedBarAndScrubberFromTime()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 97
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    if-lez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 104
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    goto :goto_0
.end method

.method private updateTimeFromPos()V
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    .line 244
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 245
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 246
    return-void
.end method

.method private whichScrubber(FF)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 148
    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    iget v4, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    .line 150
    :cond_0
    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    iget v4, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x3

    goto :goto_0

    .line 152
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberTop:I

    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const/4 v0, 0x2

    goto :goto_0

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBarHeight()I
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->getPreferredHeight()I

    move-result v0

    return v0
.end method

.method public getPreferredHeight()I
    .locals 3

    .prologue
    .line 203
    const-string v0, "Gallery2/TrimTimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredHeight mTrimStartScrubber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;

    invoke-super {p0}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;->getPreferredHeight(I)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 214
    const-string v0, "Gallery2/TrimTimeBar"

    const-string v1, "onDraw()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 219
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mShowTimes:Z

    if-eqz v0, :cond_0

    .line 220
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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;->getTimeOffset()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

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

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;->getTimeOffset()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    .line 177
    const-string v5, "Gallery2/TrimTimeBar"

    const-string v6, "onLayout()"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sub-int v4, p4, p2

    .line 179
    .local v4, w:I
    sub-int v0, p5, p3

    .line 180
    .local v0, h:I
    iget-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mShowTimes:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-nez v5, :cond_0

    .line 181
    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->update()V

    .line 197
    return-void

    .line 183
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x3

    .line 184
    .local v1, margin:I
    iget-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mShowTimes:Z

    if-eqz v5, :cond_1

    .line 185
    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v1, v5

    .line 187
    :cond_1
    div-int/lit8 v5, v0, 0x4

    iget-object v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mLayoutExt:Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/app/TrimTimeBar$TrimLayoutExt;->getProgressOffset(I)I

    move-result v6

    add-int v2, v5, v6

    .line 188
    .local v2, progressY:I
    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    add-int/lit8 v3, v5, 0x1

    .line 189
    .local v3, scrubberY:I
    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberTop:I

    .line 190
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    .line 191
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    .line 192
    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v7, v4, v7

    sub-int/2addr v7, v1

    add-int/lit8 v8, v2, 0x4

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 250
    const-string v7, "Gallery2/TrimTimeBar"

    const-string v8, "onTouchEvent()"

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-boolean v7, p0, Lcom/android/gallery3d/app/TimeBar;->mShowScrubber:Z

    if-eqz v7, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 253
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 255
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    move v5, v6

    .line 364
    :goto_0
    return v5

    .line 257
    .restart local v3       #x:I
    .restart local v4       #y:I
    :pswitch_0
    int-to-float v7, v3

    int-to-float v8, v4

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/app/TrimTimeBar;->whichScrubber(FF)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    .line 258
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v7, :pswitch_data_1

    .line 274
    :goto_1
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    if-ne v7, v5, :cond_0

    .line 275
    iget-object v6, p0, Lcom/android/gallery3d/app/TimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-interface {v6}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingStart()V

    goto :goto_0

    .line 262
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    .line 263
    iget v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 266
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    .line 267
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 270
    :pswitch_4
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    .line 271
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 280
    :pswitch_5
    iget-boolean v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    if-eqz v7, :cond_0

    .line 281
    const/4 v1, -0x1

    .line 282
    .local v1, seekToTime:I
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    add-int v0, v6, v7

    .line 283
    .local v0, lowerBound:I
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    add-int v2, v6, v7

    .line 284
    .local v2, upperBound:I
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v6, :pswitch_data_2

    .line 319
    :goto_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->updateTimeFromPos()V

    .line 320
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->updatePlayedBarAndScrubberFromTime()V

    .line 321
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 322
    iget-object v6, p0, Lcom/android/gallery3d/app/TimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-interface {v6, v1}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 286
    :pswitch_6
    iget v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 287
    iget v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget-object v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/android/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    .line 291
    iget v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget-object v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 293
    goto :goto_2

    .line 295
    :pswitch_7
    iget v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 297
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    if-le v6, v7, :cond_2

    .line 298
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 300
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 301
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/android/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 305
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 307
    goto :goto_2

    .line 309
    :pswitch_8
    iget v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 310
    iget-object v6, p0, Lcom/android/gallery3d/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 311
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/android/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 315
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    goto/16 :goto_2

    .line 330
    .end local v0           #lowerBound:I
    .end local v1           #seekToTime:I
    .end local v2           #upperBound:I
    :pswitch_9
    iget-boolean v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    if-eqz v7, :cond_0

    .line 331
    const/4 v1, 0x0

    .line 332
    .restart local v1       #seekToTime:I
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v7, :pswitch_data_3

    .line 350
    :goto_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->updateTimeFromPos()V

    .line 351
    iget-object v7, p0, Lcom/android/gallery3d/app/TimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    iget v8, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v8

    iget v9, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v9

    invoke-interface {v7, v1, v8, v9}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(III)V

    .line 355
    iput-boolean v6, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubbing:Z

    .line 356
    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    .line 358
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->update()V

    goto/16 :goto_0

    .line 334
    :pswitch_a
    iget v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    iget-object v8, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 336
    goto :goto_3

    .line 338
    :pswitch_b
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 340
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    goto :goto_3

    .line 344
    :pswitch_c
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 346
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/gallery3d/app/TimeBar;->mScrubberLeft:I

    goto :goto_3

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_9
    .end packed-switch

    .line 258
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 284
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 332
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public setTime(IIII)V
    .locals 3
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 133
    const-string v0, "Gallery2/TrimTimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTime() currentTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trimStartTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trimEndTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    if-ne v0, p4, :cond_0

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/TimeBar;->mCurrentTime:I

    .line 141
    iput p2, p0, Lcom/android/gallery3d/app/TimeBar;->mTotalTime:I

    .line 142
    iput p3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 143
    iput p4, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 144
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->update()V

    goto :goto_0
.end method
