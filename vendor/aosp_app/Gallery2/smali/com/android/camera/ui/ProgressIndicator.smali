.class public Lcom/android/camera/ui/ProgressIndicator;
.super Ljava/lang/Object;
.source "ProgressIndicator.java"


# static fields
.field public static final BLOCK_NUMBERS:I = 0x9

.field public static final BLOCK_NUMBERS_SINGLE3D:I = 0x2

.field public static final MAV_CAPTURE_NUM:I = 0xf

.field public static final PANORAMA_CAPTURE_NUM:I = 0x9

.field private static final TAG:Ljava/lang/String; = "ProgressIndicator"

.field public static final TYPE_MAV:I = 0x0

.field public static final TYPE_MOTION_TRACK:I = 0x3

.field public static final TYPE_PANO:I = 0x1

.field public static final TYPE_SINGLE3D:I = 0x2

.field private static sIndicatorMarginLong:I

.field private static sIndicatorMarginShort:I


# instance fields
.field private mBlockNumber:[I

.field private mBlockPadding:I

.field private mBlockSize:[[I

.field private mMavBlockSizes:[I

.field private mMotionTrackBlockSizes:[I

.field private mPanoBlockSizes:[I

.field private mProgressBars:Landroid/widget/ImageView;

.field private mProgressView:Landroid/view/View;

.field private mSingle3DBlockSizes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput v0, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginLong:I

    .line 39
    sput v0, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginShort:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 12
    .parameter "activity"
    .parameter "indicatorType"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    const/16 v6, 0x9

    const/4 v8, 0x4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mPanoBlockSizes:[I

    .line 27
    new-array v5, v6, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mMavBlockSizes:[I

    .line 28
    new-array v5, v11, [I

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    .line 29
    new-array v5, v6, [I

    fill-array-data v5, :array_3

    iput-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mMotionTrackBlockSizes:[I

    .line 34
    iput v8, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    .line 41
    new-array v5, v8, [[I

    iget-object v6, p0, Lcom/android/camera/ui/ProgressIndicator;->mMavBlockSizes:[I

    aput-object v6, v5, v10

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/camera/ui/ProgressIndicator;->mPanoBlockSizes:[I

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    aput-object v6, v5, v11

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/camera/ui/ProgressIndicator;->mMotionTrackBlockSizes:[I

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockSize:[[I

    .line 42
    new-array v5, v8, [I

    fill-array-data v5, :array_4

    iput-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockNumber:[I

    .line 44
    const v5, 0x7f0b0110

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    .line 45
    iget-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 46
    const v5, 0x7f0b0111

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 49
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->density:F

    .line 50
    .local v4, scale:F
    iget-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockNumber:[I

    aget v0, v5, p2

    .line 51
    .local v0, blockNumber:I
    iget-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockSize:[[I

    aget-object v2, v5, p2

    .line 52
    .local v2, mDrawBlokSize:[I
    const/high16 v5, 0x3f80

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 53
    iget v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    .line 54
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 55
    aget v5, v2, v1

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v9

    float-to-int v5, v5

    aput v5, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1           #i:I
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/camera/ui/ProgressBarDrawable;

    iget-object v7, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    invoke-direct {v6, p1, v7, v2, v8}, Lcom/android/camera/ui/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-direct {p0}, Lcom/android/camera/ui/ProgressIndicator;->getIndicatorMargin()V

    .line 61
    return-void

    .line 26
    :array_0
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 27
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 28
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 29
    :array_3
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_4
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getIndicatorMargin()V
    .locals 4

    .prologue
    .line 73
    sget v1, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginLong:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginShort:I

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginLong:I

    .line 76
    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginShort:I

    .line 78
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v1, "ProgressIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIndicatorMargin: sIndicatorMarginLong = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginLong:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sIndicatorMarginShort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginShort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method


# virtual methods
.method public setOrientation(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    .local v1, progressViewLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .local v2, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 86
    .local v0, activityOrientation:I
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    if-eqz p1, :cond_1

    const/16 v3, 0xb4

    if-eq p1, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_1

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_2

    .line 89
    :cond_1
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget v6, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginShort:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 94
    :goto_0
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 98
    return-void

    .line 91
    :cond_2
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget v6, Lcom/android/camera/ui/ProgressIndicator;->sIndicatorMarginLong:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 68
    const-string v0, "ProgressIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 70
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method
