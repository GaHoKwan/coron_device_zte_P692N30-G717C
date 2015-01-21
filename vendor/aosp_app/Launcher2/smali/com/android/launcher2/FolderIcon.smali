.class public Lcom/android/launcher2/FolderIcon;
.super Landroid/widget/LinearLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher2/FolderInfo$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;,
        Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    }
.end annotation


# static fields
.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final NUM_ITEMS_IN_PREVIEW:I = 0x3

.field private static final OUTER_RING_GROWTH_FACTOR:F = 0.3f

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.35f

.field private static final PERSPECTIVE_SHIFT_FACTOR:F = 0.24f

.field private static final TAG:Ljava/lang/String; = "FolderIcon"

.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

.field private static sStaticValuesDirty:Z


# instance fields
.field private mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mFolderName:Lcom/android/launcher2/BubbleTextView;

.field mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field private mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher2/FolderInfo;

.field private mIntrinsicIconSize:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

.field private mMaxPerspectiveShift:F

.field private mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    .line 101
    iput-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    .line 103
    new-instance v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 104
    new-instance v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 114
    invoke-direct {p0}, Lcom/android/launcher2/FolderIcon;->init()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    .line 101
    iput-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    .line 103
    new-instance v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 104
    new-instance v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 109
    invoke-direct {p0}, Lcom/android/launcher2/FolderIcon;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIcon;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/FolderIcon;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    return-object v0
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 8
    .parameter "d"
    .parameter "duration"
    .parameter "reverse"
    .parameter "onCompleteRunnable"

    .prologue
    .line 587
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v4

    .line 589
    .local v4, finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    const/high16 v6, 0x3f80

    .line 590
    .local v6, scale0:F
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 591
    .local v3, transX0:F
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 592
    .local v5, transY0:F
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iput-object p1, v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 594
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 595
    .local v7, va:Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/launcher2/FolderIcon$2;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$2;-><init>(Lcom/android/launcher2/FolderIcon;ZFLcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;F)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 609
    new-instance v0, Lcom/android/launcher2/FolderIcon$3;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher2/FolderIcon$3;-><init>(Lcom/android/launcher2/FolderIcon;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 622
    int-to-long v0, p2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 623
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 624
    return-void

    .line 594
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private computePreviewDrawingParams(II)V
    .locals 6
    .parameter "drawableSize"
    .parameter "totalSize"

    .prologue
    .line 448
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    if-ne v4, p1, :cond_0

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    if-eq v4, p2, :cond_1

    .line 449
    :cond_0
    iput p1, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    .line 450
    iput p2, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    .line 452
    sget v2, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 453
    .local v2, previewSize:I
    sget v1, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 455
    .local v1, previewPadding:I
    mul-int/lit8 v4, v1, 0x2

    sub-int v4, v2, v4

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    .line 457
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const v5, 0x3fe66666

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 459
    .local v0, adjustedAvailableSpace:I
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    const v5, 0x3f9eb852

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 460
    .local v3, unscaledHeight:I
    const/high16 v4, 0x3f80

    int-to-float v5, v0

    mul-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconScale:F

    .line 462
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    .line 463
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    int-to-float v4, v4

    const v5, 0x3e75c28f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mMaxPerspectiveShift:F

    .line 465
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    iget v5, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    .line 466
    iput v1, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    .line 468
    .end local v0           #adjustedAvailableSpace:I
    .end local v1           #previewPadding:I
    .end local v2           #previewSize:I
    .end local v3           #unscaledHeight:I
    :cond_1
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(II)V

    .line 472
    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    .locals 12
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v11, 0x3f80

    .line 503
    rsub-int/lit8 v0, p1, 0x3

    add-int/lit8 p1, v0, -0x1

    .line 504
    int-to-float v0, p1

    mul-float/2addr v0, v11

    const/high16 v1, 0x4000

    div-float v7, v0, v1

    .line 505
    .local v7, r:F
    const v0, 0x3eb33333

    sub-float v1, v11, v7

    mul-float/2addr v0, v1

    sub-float v8, v11, v0

    .line 507
    .local v8, scale:F
    sub-float v0, v11, v7

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mMaxPerspectiveShift:F

    mul-float v6, v0, v1

    .line 508
    .local v6, offset:F
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    int-to-float v0, v0

    mul-float v10, v8, v0

    .line 509
    .local v10, scaledSize:F
    sub-float v0, v11, v8

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    int-to-float v1, v1

    mul-float v9, v0, v1

    .line 513
    .local v9, scaleOffsetCorrection:F
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v0, v0

    add-float v1, v6, v10

    add-float/2addr v1, v9

    sub-float v3, v0, v1

    .line 514
    .local v3, transY:F
    add-float v2, v6, v9

    .line 515
    .local v2, transX:F
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconScale:F

    mul-float v4, v0, v8

    .line 516
    .local v4, totalScale:F
    const/high16 v0, 0x42a0

    sub-float v1, v11, v7

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 518
    .local v5, overlayAlpha:I
    if-nez p2, :cond_0

    .line 519
    new-instance p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .end local p2
    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    .line 526
    .restart local p2
    :goto_0
    return-object p2

    .line 521
    :cond_0
    iput v2, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 522
    iput v3, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 523
    iput v4, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 524
    iput v5, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_0
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V
    .locals 5
    .parameter "canvas"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 530
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 531
    iget v1, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v2, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v3, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 532
    iget v1, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v2, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 533
    iget-object v0, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 535
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 536
    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    iget v2, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 537
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 538
    iget v1, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 540
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 541
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 543
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 544
    return-void
.end method

.method static fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;
    .locals 7
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"
    .parameter "iconCache"

    .prologue
    const/4 v6, 0x0

    .line 131
    const/4 v0, 0x0

    .line 138
    .local v0, error:Z
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIcon;

    .line 140
    .local v2, icon:Lcom/android/launcher2/FolderIcon;
    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BubbleTextView;

    iput-object v3, v2, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    .line 141
    iget-object v3, v2, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    iget-object v4, p3, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/launcher2/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 144
    invoke-virtual {v2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object p3, v2, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 147
    iput-object p1, v2, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 148
    const v3, 0x7f0d0073

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p3, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {p1}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 151
    .local v1, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getDragController()Lcom/android/launcher2/DragController;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Folder;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 152
    invoke-virtual {v1, v2}, Lcom/android/launcher2/Folder;->setFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 153
    invoke-virtual {v1, p3}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 154
    iput-object v1, v2, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    .line 156
    new-instance v3, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-direct {v3, p1, v2}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderIcon;)V

    iput-object v3, v2, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 157
    invoke-virtual {p3, v2}, Lcom/android/launcher2/FolderInfo;->addListener(Lcom/android/launcher2/FolderInfo$FolderListener;)V

    .line 159
    return-object v2
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 6
    .parameter "index"
    .parameter "center"

    .prologue
    const/high16 v5, 0x4000

    .line 489
    const/4 v2, 0x3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 491
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 492
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 493
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 494
    .local v0, offsetX:F
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 496
    .local v1, offsetY:F
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 497
    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 498
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    return v2
.end method

.method private init()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/android/launcher2/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    .line 119
    return-void
.end method

.method private onDrop(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 23
    .parameter "item"
    .parameter "animateView"
    .parameter "finalRect"
    .parameter "scaleRelativeToDragLayer"
    .parameter "index"
    .parameter "postAnimationRunnable"
    .parameter "d"

    .prologue
    .line 367
    const-string v4, "FolderIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDrop: item = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", animateView = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", finalRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", scaleRelativeToDragLayer = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", d = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 373
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 378
    if-eqz p2, :cond_2

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v3

    .line 380
    .local v3, dragLayer:Lcom/android/launcher2/DragLayer;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 381
    .local v5, from:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v5}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 382
    move-object/from16 v6, p3

    .line 383
    .local v6, to:Landroid/graphics/Rect;
    if-nez v6, :cond_0

    .line 384
    new-instance v6, Landroid/graphics/Rect;

    .end local v6           #to:Landroid/graphics/Rect;
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 385
    .restart local v6       #to:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v22

    .line 387
    .local v22, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScaleX()F

    move-result v20

    .line 389
    .local v20, scaleX:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScaleY()F

    move-result v21

    .line 390
    .local v21, scaleY:F
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 391
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 392
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 394
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 395
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 399
    .end local v20           #scaleX:F
    .end local v21           #scaleY:F
    .end local v22           #workspace:Lcom/android/launcher2/Workspace;
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 400
    .local v18, center:[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v19

    .line 401
    .local v19, scale:F
    const/4 v4, 0x0

    const/4 v8, 0x0

    aget v8, v18, v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v18, v4

    .line 402
    const/4 v4, 0x1

    const/4 v8, 0x1

    aget v8, v18, v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v18, v4

    .line 404
    const/4 v4, 0x0

    aget v4, v18, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v4, v8

    const/4 v8, 0x1

    aget v8, v18, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v6, v4, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 407
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ge v0, v4, :cond_1

    const/high16 v7, 0x3f00

    .line 409
    .local v7, finalAlpha:F
    :goto_0
    mul-float v10, v19, p4

    .line 410
    .local v10, finalScale:F
    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/16 v12, 0x190

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v13, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v14, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p2

    move v11, v10

    move-object/from16 v15, p6

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 414
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v4, Lcom/android/launcher2/FolderIcon$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/android/launcher2/FolderIcon$1;-><init>(Lcom/android/launcher2/FolderIcon;Lcom/android/launcher2/ShortcutInfo;)V

    const-wide/16 v8, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 425
    .end local v3           #dragLayer:Lcom/android/launcher2/DragLayer;
    .end local v5           #from:Landroid/graphics/Rect;
    .end local v6           #to:Landroid/graphics/Rect;
    .end local v7           #finalAlpha:F
    .end local v10           #finalScale:F
    .end local v18           #center:[I
    .end local v19           #scale:F
    :goto_1
    return-void

    .line 407
    .restart local v3       #dragLayer:Lcom/android/launcher2/DragLayer;
    .restart local v5       #from:Landroid/graphics/Rect;
    .restart local v6       #to:Landroid/graphics/Rect;
    .restart local v18       #center:[I
    .restart local v19       #scale:F
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 423
    .end local v3           #dragLayer:Lcom/android/launcher2/DragLayer;
    .end local v5           #from:Landroid/graphics/Rect;
    .end local v6           #to:Landroid/graphics/Rect;
    .end local v18           #center:[I
    .end local v19           #scale:F
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_1
.end method

.method public static resetValuesDirty()V
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    .line 804
    return-void
.end method

.method private willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 300
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 301
    .local v0, itemType:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isFull()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-boolean v2, v2, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 2
    .parameter "dragInfo"

    .prologue
    .line 307
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 308
    .local v0, item:Lcom/android/launcher2/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIcon;->willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 313
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 695
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 697
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    .line 698
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 548
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 550
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v5, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 553
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 558
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_4

    .line 559
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget-object v5, v5, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 566
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 567
    .local v3, nItemsInPreview:I
    iget-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    if-nez v5, :cond_5

    .line 568
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_6

    .line 569
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 570
    .local v4, v:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 571
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v5, v7

    .line 572
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v1, v5}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 573
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iput-object v0, v5, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 574
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V

    .line 568
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 561
    .end local v1           #i:I
    .end local v3           #nItemsInPreview:I
    .end local v4           #v:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 562
    .restart local v4       #v:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v5, v7

    .line 563
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 578
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #v:Landroid/widget/TextView;
    .restart local v3       #nItemsInPreview:I
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V

    .line 582
    :cond_6
    invoke-static {p1, p0}, Lcom/android/launcher2/MTKUnreadLoader;->drawUnreadEventIfNeed(Landroid/graphics/Canvas;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .parameter "d"

    .prologue
    .line 444
    const/4 v0, 0x0

    return-object v0
.end method

.method getFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method getFolderInfo()Lcom/android/launcher2/FolderInfo;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method public getTextVisible()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 123
    .local v1, cellLayoutChildren:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .local v0, cellLayout:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace;

    .line 125
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onAdd(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 645
    const-string v1, "FolderIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdd item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 651
    .local v0, componentName:Landroid/content/ComponentName;
    iget v1, p1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum(Landroid/content/ComponentName;I)V

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 653
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 654
    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 5
    .parameter "dragInfo"

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    check-cast p1, Lcom/android/launcher2/ItemInfo;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIcon;->willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 318
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 319
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 320
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher2/CellLayout;)V

    .line 321
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 322
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    goto :goto_0
.end method

.method public onDragExit()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 361
    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0
    .parameter "dragInfo"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->onDragExit()V

    .line 357
    return-void
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .locals 0
    .parameter "dragInfo"

    .prologue
    .line 326
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 8
    .parameter "d"

    .prologue
    .line 429
    const-string v0, "FolderIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrop: DragObject = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationInfo;->makeShortcut()Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 439
    .local v1, item:Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->notifyDrop()V

    .line 440
    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 441
    return-void

    .line 437
    .end local v1           #item:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .restart local v1       #item:Lcom/android/launcher2/ShortcutInfo;
    goto :goto_0
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 640
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 641
    return-void
.end method

.method public onRemove(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 658
    const-string v1, "FolderIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemove item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 664
    .local v0, componentName:Landroid/content/ComponentName;
    iget v1, p1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum(Landroid/content/ComponentName;I)V

    .line 665
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 666
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 667
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    .line 165
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 679
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 681
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 690
    :goto_0
    :pswitch_0
    return v0

    .line 683
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher2/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 687
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 9
    .parameter "destInfo"
    .parameter "destView"
    .parameter "srcInfo"
    .parameter "srcView"
    .parameter "dstRect"
    .parameter "scaleRelativeToDragLayer"
    .parameter "postAnimationRunnable"

    .prologue
    .line 332
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v8, v0, v1

    .line 333
    .local v8, animateDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(II)V

    .line 337
    const/16 v0, 0x15e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 341
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 342
    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "finalView"
    .parameter "onCompleteRunnable"

    .prologue
    const/4 v3, 0x1

    .line 345
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v0, v1, v3

    .line 346
    .local v0, animateDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(II)V

    .line 351
    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public setFolderUnreadNum(I)V
    .locals 2
    .parameter "unreadNum"

    .prologue
    .line 711
    if-gtz p1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iput p1, v0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    goto :goto_0
.end method

.method public setTextVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 627
    if-eqz p1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFolderUnreadNum()V
    .locals 10

    .prologue
    .line 723
    iget-object v9, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, v9, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 724
    .local v2, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 725
    .local v3, contentsCount:I
    const/4 v8, 0x0

    .line 726
    .local v8, unreadNumTotal:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v1, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v6, 0x0

    .line 728
    .local v6, shortcutInfo:Lcom/android/launcher2/ShortcutInfo;
    const/4 v0, 0x0

    .line 729
    .local v0, componentName:Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 730
    .local v7, unreadNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 731
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #shortcutInfo:Lcom/android/launcher2/ShortcutInfo;
    check-cast v6, Lcom/android/launcher2/ShortcutInfo;

    .line 732
    .restart local v6       #shortcutInfo:Lcom/android/launcher2/ShortcutInfo;
    iget-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 733
    invoke-static {v0}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberOfComponent(Landroid/content/ComponentName;)I

    move-result v7

    .line 734
    if-lez v7, :cond_1

    .line 735
    iput v7, v6, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    .line 736
    const/4 v5, 0x0

    .line 737
    .local v5, j:I
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 738
    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 746
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v5, v9, :cond_1

    .line 747
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    add-int/2addr v8, v7

    .line 730
    .end local v5           #j:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 737
    .restart local v5       #j:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 755
    .end local v5           #j:I
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/launcher2/FolderIcon;->setFolderUnreadNum(I)V

    .line 756
    return-void
.end method

.method public updateFolderUnreadNum(Landroid/content/ComponentName;I)V
    .locals 9
    .parameter "component"
    .parameter "unreadNum"

    .prologue
    .line 764
    iget-object v8, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, v8, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 765
    .local v2, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 766
    .local v3, contentsCount:I
    const/4 v7, 0x0

    .line 767
    .local v7, unreadNumTotal:I
    const/4 v0, 0x0

    .line 768
    .local v0, appInfo:Lcom/android/launcher2/ShortcutInfo;
    const/4 v6, 0x0

    .line 769
    .local v6, name:Landroid/content/ComponentName;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v1, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 771
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/android/launcher2/ShortcutInfo;
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 772
    .restart local v0       #appInfo:Lcom/android/launcher2/ShortcutInfo;
    iget-object v8, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 773
    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 774
    iput p2, v0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    .line 776
    :cond_0
    iget v8, v0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    if-lez v8, :cond_2

    .line 777
    const/4 v5, 0x0

    .line 778
    .local v5, j:I
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 779
    if-eqz v6, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 787
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_2

    .line 788
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    iget v8, v0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    add-int/2addr v7, v8

    .line 770
    .end local v5           #j:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 778
    .restart local v5       #j:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 796
    .end local v5           #j:I
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/launcher2/FolderIcon;->setFolderUnreadNum(I)V

    .line 797
    return-void
.end method
