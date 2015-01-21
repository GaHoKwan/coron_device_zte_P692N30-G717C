.class public Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;
.super Landroid/view/View;
.source "SIMCardData.java"


# static fields
.field public static final DEBUG:Z = true

.field static final MIN_THRESHOLD:F = 2.5f

.field private static final TAG:Ljava/lang/String; = "DataUsageStageView"


# instance fields
.field public mBound1_X:[I

.field public mBound1_Y:[I

.field public mBound2_X:[I

.field public mBound2_Y:[I

.field private mBoundBufferX:I

.field private mBoundBufferY:I

.field public mBound_X:[I

.field public mBound_Y:[I

.field private mCardCount:I

.field private mCard_Bubble:Lcom/mediatek/ngin3d/Image;

.field private mCard_Bubble_ResWidth:F

.field private mCard_Circle:Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

.field private mCard_Scale:Lcom/mediatek/ngin3d/Image;

.field private mColor:I

.field private mConDataCircle:Lcom/mediatek/ngin3d/Container;

.field private mContainerText:Lcom/mediatek/ngin3d/Container;

.field private mDataLimitPx:I

.field private mDataUsageSize:I

.field private mDisplayW:I

.field private mIsLandscape:Z

.field private mText:Lcom/mediatek/ngin3d/Text;

.field private mText_BackColor:Lcom/mediatek/ngin3d/Image;

.field private mTitleBarH:I

.field private mType:I

.field public mUsageFirstPointX:F

.field public mUsageFirstPointY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .locals 3
    .parameter "context"
    .parameter "cardType"
    .parameter "cardColor"
    .parameter "cycleLimit"
    .parameter "bubbleSize"
    .parameter "cardCount"
    .parameter "isLandscape"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x6

    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble_ResWidth:F

    .line 48
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    .line 49
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    .line 52
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    .line 53
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    .line 77
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMCardData,cardType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cardColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cycleLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bubbleSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isLandscape:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput p2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mType:I

    .line 81
    iput p3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mColor:I

    .line 82
    iput p4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataLimitPx:I

    .line 83
    iput p5, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataUsageSize:I

    .line 84
    iput p6, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCardCount:I

    .line 85
    iput-boolean p7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mIsLandscape:Z

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDisplayW:I

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mTitleBarH:I

    .line 94
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->initActor()V

    .line 95
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDisplayW:I

    goto :goto_0
.end method

.method private addToContainer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mConDataCircle:Lcom/mediatek/ngin3d/Container;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mConDataCircle:Lcom/mediatek/ngin3d/Container;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Circle:Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 226
    new-instance v0, Lcom/mediatek/ngin3d/Container;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Container;-><init>()V

    iput-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mContainerText:Lcom/mediatek/ngin3d/Container;

    .line 227
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mContainerText:Lcom/mediatek/ngin3d/Container;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText_BackColor:Lcom/mediatek/ngin3d/Image;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 228
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mContainerText:Lcom/mediatek/ngin3d/Container;

    new-array v1, v4, [Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 229
    return-void
.end method

.method private initActor()V
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mType:I

    invoke-direct {p0, v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setFloatingBound(I)V

    .line 99
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setSIMCardColor()V

    .line 100
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setActorPosition()V

    .line 101
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataUsageSize:I

    invoke-virtual {p0, v0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setBubbleSize(I)V

    .line 102
    invoke-direct {p0}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->addToContainer()V

    .line 103
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method private printBoundArray(Ljava/lang/String;[I[I)V
    .locals 5
    .parameter "name"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 232
    array-length v2, p2

    array-length v3, p3

    if-ge v2, v3, :cond_0

    array-length v1, p2

    .line 233
    .local v1, length:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 234
    const-string v2, "DataUsageStageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_0
    array-length v1, p3

    goto :goto_0

    .line 236
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_1
    return-void
.end method

.method private setActorPosition()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x4000

    const v7, 0x7f040022

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020007

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 166
    .local v1, dataScaleW:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020007

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 170
    .local v0, dataScaleH:I
    const/4 v2, 0x0

    .line 172
    .local v2, scalePositionW:F
    new-instance v3, Lcom/mediatek/ngin3d/Container;

    invoke-direct {v3}, Lcom/mediatek/ngin3d/Container;-><init>()V

    iput-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mConDataCircle:Lcom/mediatek/ngin3d/Container;

    .line 174
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mConDataCircle:Lcom/mediatek/ngin3d/Container;

    new-instance v4, Lcom/mediatek/ngin3d/Point;

    iget v5, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointX:F

    iget v6, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    invoke-direct {v4, v5, v6}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 218
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Scale:Lcom/mediatek/ngin3d/Image;

    new-instance v4, Lcom/mediatek/ngin3d/Point;

    int-to-float v5, v1

    div-float/2addr v5, v8

    add-float/2addr v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 220
    return-void

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v2, v3

    .line 178
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointX:F

    .line 179
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mTitleBarH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    goto :goto_0

    .line 183
    :pswitch_1
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCardCount:I

    if-ne v3, v6, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v2, v3

    .line 185
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointX:F

    .line 186
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mTitleBarH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v2, v3

    .line 190
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointX:F

    .line 191
    iget-boolean v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mIsLandscape:Z

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    aget v3, v3, v6

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mTitleBarH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    goto/16 :goto_0

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    aget v3, v3, v9

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mTitleBarH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    goto/16 :goto_0

    .line 199
    :pswitch_2
    iget v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCardCount:I

    if-ne v3, v6, :cond_2

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v2, v3

    .line 201
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointX:F

    .line 202
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mTitleBarH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    goto/16 :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v2, v3

    .line 206
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointX:F

    .line 207
    iget-boolean v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mIsLandscape:Z

    if-eqz v3, :cond_3

    .line 208
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    aget v3, v3, v9

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mTitleBarH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    goto/16 :goto_0

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    aget v3, v3, v6

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mTitleBarH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mUsageFirstPointY:F

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setFloatingBound(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 239
    const-string v0, "DataUsageStageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFloatingBound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v6

    .line 246
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v6

    .line 248
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v4

    .line 249
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v4

    .line 251
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v5

    .line 252
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v5

    .line 254
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v7

    .line 255
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v7

    .line 257
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v3

    .line 258
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v3

    .line 260
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    aget v1, v1, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    .line 261
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    .line 263
    const-string v0, "mBound_XY"

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_X:[I

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound_Y:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->printBoundArray(Ljava/lang/String;[I[I)V

    goto/16 :goto_0

    .line 267
    :pswitch_1
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCardCount:I

    if-ne v0, v4, :cond_0

    .line 268
    invoke-direct {p0, v6}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setFloatingBound(I)V

    goto/16 :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v6

    .line 272
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v6

    .line 274
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v4

    .line 275
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v4

    .line 277
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v5

    .line 278
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v5

    .line 280
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v7

    .line 281
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v7

    .line 283
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v3

    .line 284
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v3

    .line 286
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v2, v0, v1

    .line 287
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v2, v0, v1

    .line 289
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    aget v1, v1, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    .line 290
    iget-boolean v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    .line 296
    :goto_1
    const-string v0, "mBound1_XY"

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_X:[I

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->printBoundArray(Ljava/lang/String;[I[I)V

    goto/16 :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound1_Y:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    goto :goto_1

    .line 299
    :pswitch_2
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCardCount:I

    if-ne v0, v4, :cond_2

    .line 300
    invoke-direct {p0, v6}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->setFloatingBound(I)V

    goto/16 :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v6

    .line 305
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v6

    .line 307
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v4

    .line 308
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v4

    .line 310
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v5

    .line 311
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v5

    .line 313
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v7

    .line 314
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v7

    .line 316
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v3

    .line 317
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aput v1, v0, v3

    .line 319
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v2, v0, v1

    .line 320
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v2, v0, v1

    .line 322
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    aget v1, v1, v6

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    .line 323
    iget-boolean v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    .line 328
    :goto_2
    const-string v0, "mBound2_XY"

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_X:[I

    iget-object v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->printBoundArray(Ljava/lang/String;[I[I)V

    goto/16 :goto_0

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBound2_Y:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    goto :goto_2

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSIMCardColor()V
    .locals 8

    .prologue
    const v7, 0x7f020006

    const v6, 0x7f020005

    const v5, 0x7f020004

    const v4, 0x7f020003

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mColor:I

    packed-switch v1, :pswitch_data_0

    .line 137
    :goto_0
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble_ResWidth:F

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Scale:Lcom/mediatek/ngin3d/Image;

    .line 145
    new-instance v1, Lcom/mediatek/ngin3d/Text;

    invoke-direct {v1}, Lcom/mediatek/ngin3d/Text;-><init>()V

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    .line 147
    iget-boolean v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Text;->setTextSize(F)V

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    sget-object v2, Lcom/mediatek/ngin3d/Color;->TRANSPARENT:Lcom/mediatek/ngin3d/Color;

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Text;->setBackgroundColor(Lcom/mediatek/ngin3d/Color;)V

    .line 159
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    sget-object v2, Lcom/mediatek/ngin3d/Color;->WHITE:Lcom/mediatek/ngin3d/Color;

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Actor;->setColor(Lcom/mediatek/ngin3d/Color;)V

    .line 160
    return-void

    .line 110
    :pswitch_0
    new-instance v1, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataLimitPx:I

    int-to-float v2, v2

    sget v3, Lcom/mediatek/DataUsageLockScreenClient/Constants;->IN_CIRCLE_BULE:I

    invoke-direct {v1, v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;-><init>(FI)V

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Circle:Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000c

    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText_BackColor:Lcom/mediatek/ngin3d/Image;

    goto :goto_0

    .line 116
    :pswitch_1
    new-instance v1, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataLimitPx:I

    int-to-float v2, v2

    sget v3, Lcom/mediatek/DataUsageLockScreenClient/Constants;->IN_CIRCLE_ORANGE:I

    invoke-direct {v1, v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;-><init>(FI)V

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Circle:Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText_BackColor:Lcom/mediatek/ngin3d/Image;

    goto/16 :goto_0

    .line 122
    :pswitch_2
    new-instance v1, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataLimitPx:I

    int-to-float v2, v2

    sget v3, Lcom/mediatek/DataUsageLockScreenClient/Constants;->IN_CIRCLE_GREEN:I

    invoke-direct {v1, v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;-><init>(FI)V

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Circle:Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000d

    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText_BackColor:Lcom/mediatek/ngin3d/Image;

    goto/16 :goto_0

    .line 128
    :pswitch_3
    new-instance v1, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    iget v2, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataLimitPx:I

    int-to-float v2, v2

    sget v3, Lcom/mediatek/DataUsageLockScreenClient/Constants;->IN_CIRCLE_PURPLE:I

    invoke-direct {v1, v2, v3}, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;-><init>(FI)V

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Circle:Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000f

    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText_BackColor:Lcom/mediatek/ngin3d/Image;

    goto/16 :goto_0

    .line 150
    :cond_1
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDisplayW:I

    const/16 v2, 0x438

    if-lt v1, v2, :cond_2

    .line 151
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    const/high16 v2, 0x4200

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Text;->setTextSize(F)V

    goto/16 :goto_1

    .line 152
    :cond_2
    iget v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDisplayW:I

    const/16 v2, 0x1e0

    if-le v1, v2, :cond_3

    .line 153
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Text;->setTextSize(F)V

    goto/16 :goto_1

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    const/high16 v2, 0x4188

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/Text;->setTextSize(F)V

    goto/16 :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getBoundBufferX()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferX:I

    return v0
.end method

.method public getBoundBufferY()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mBoundBufferY:I

    return v0
.end method

.method public getConDataCircle()Lcom/mediatek/ngin3d/Container;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mConDataCircle:Lcom/mediatek/ngin3d/Container;

    return-object v0
.end method

.method public getContainerText()Lcom/mediatek/ngin3d/Container;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mContainerText:Lcom/mediatek/ngin3d/Container;

    return-object v0
.end method

.method public getScale()Lcom/mediatek/ngin3d/Image;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Scale:Lcom/mediatek/ngin3d/Image;

    return-object v0
.end method

.method public getText()Lcom/mediatek/ngin3d/Text;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mText:Lcom/mediatek/ngin3d/Text;

    return-object v0
.end method

.method public setBubbleSize(I)V
    .locals 13
    .parameter "usageSize"

    .prologue
    const/high16 v12, 0x4020

    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 336
    const-string v7, "DataUsageStageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setBubbleSize(), usageSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mDataLimitPx:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataLimitPx:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020003

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-double v0, v7

    .line 341
    .local v0, bubblePX:D
    iget v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mDataLimitPx:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    div-double v3, v7, v0

    .line 342
    .local v3, pxProportion:D
    const-string v7, "DataUsageStageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pxProportion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-nez p1, :cond_1

    .line 346
    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    new-instance v8, Lcom/mediatek/ngin3d/Scale;

    invoke-direct {v8, v10, v10}, Lcom/mediatek/ngin3d/Scale;-><init>(FF)V

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/Actor;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    int-to-double v7, p1

    mul-double/2addr v7, v3

    const-wide/high16 v9, 0x4059

    div-double/2addr v7, v9

    double-to-float v6, v7

    .line 349
    .local v6, scaleSize:F
    const-string v7, "DataUsageStageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scaleSize = pxProportion * usageSize/100 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/16 v7, 0x69

    if-le p1, v7, :cond_2

    .line 353
    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Circle:Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    sget v8, Lcom/mediatek/DataUsageLockScreenClient/Constants;->OUT_CIRCLE_COLOR_ALPHA_MORE:I

    invoke-virtual {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->setOutCircleColor(I)V

    .line 359
    :goto_1
    const/16 v7, 0xc8

    if-le p1, v7, :cond_3

    .line 360
    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    new-instance v8, Lcom/mediatek/ngin3d/Scale;

    double-to-float v9, v3

    mul-float/2addr v9, v11

    double-to-float v10, v3

    mul-float/2addr v10, v11

    invoke-direct {v8, v9, v10}, Lcom/mediatek/ngin3d/Scale;-><init>(FF)V

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/Actor;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    .line 365
    :goto_2
    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Actor;->getScale()Lcom/mediatek/ngin3d/Scale;

    move-result-object v5

    .line 366
    .local v5, ratio:Lcom/mediatek/ngin3d/Scale;
    const-string v7, "DataUsageStageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCard_Bubble_ResWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble_ResWidth:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ratio.x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/mediatek/ngin3d/Scale;->x:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble_ResWidth:F

    iget v8, v5, Lcom/mediatek/ngin3d/Scale;->x:F

    mul-float/2addr v7, v8

    cmpl-float v7, v12, v7

    if-ltz v7, :cond_0

    .line 369
    iget v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble_ResWidth:F

    div-float v2, v12, v7

    .line 370
    .local v2, fixScale:F
    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    new-instance v8, Lcom/mediatek/ngin3d/Scale;

    invoke-direct {v8, v2, v2}, Lcom/mediatek/ngin3d/Scale;-><init>(FF)V

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/Actor;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    goto :goto_0

    .line 355
    .end local v2           #fixScale:F
    .end local v5           #ratio:Lcom/mediatek/ngin3d/Scale;
    :cond_2
    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Circle:Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;

    sget v8, Lcom/mediatek/DataUsageLockScreenClient/Constants;->OUT_CIRCLE_COLOR_ALPHA_NORMAL:I

    invoke-virtual {v7, v8}, Lcom/mediatek/DataUsageLockScreenClient/CircleDrawer;->setOutCircleColor(I)V

    goto :goto_1

    .line 362
    :cond_3
    iget-object v7, p0, Lcom/mediatek/DataUsageLockScreenClient/SIMCardData;->mCard_Bubble:Lcom/mediatek/ngin3d/Image;

    new-instance v8, Lcom/mediatek/ngin3d/Scale;

    invoke-direct {v8, v6, v6}, Lcom/mediatek/ngin3d/Scale;-><init>(FF)V

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/Actor;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    goto :goto_2
.end method
