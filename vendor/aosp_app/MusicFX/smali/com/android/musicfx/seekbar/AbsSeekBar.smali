.class public abstract Lcom/android/musicfx/seekbar/AbsSeekBar;
.super Lcom/android/musicfx/seekbar/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field mIsVertical:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 49
    iput v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/musicfx/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 49
    iput v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/musicfx/seekbar/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v5, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    .line 44
    iput-boolean v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    .line 49
    iput v5, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 70
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 77
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbOffset(I)V

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    const/4 v3, 0x3

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mDisabledAlpha:F

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mScaledTouchSlop:I

    .line 86
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 514
    :cond_0
    return-void
.end method

.method private setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V
    .locals 12
    .parameter "w"
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 310
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 311
    .local v8, thumbWidth:I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 312
    .local v6, thumbHeight:I
    iget-boolean v10, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_0

    .line 313
    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    sub-int v1, v10, v6

    .line 319
    .local v1, available:I
    :goto_0
    iget v10, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    .line 322
    iget-boolean v10, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v10, :cond_2

    .line 323
    const/high16 v10, 0x3f80

    sub-float v10, v10, p4

    int-to-float v11, v1

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 325
    .local v7, thumbPos:I
    const/high16 v10, -0x8000

    move/from16 v0, p5

    if-ne v0, v10, :cond_1

    .line 326
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 327
    .local v4, oldBounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 328
    .local v3, leftBound:I
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 335
    .end local v4           #oldBounds:Landroid/graphics/Rect;
    .local v5, rightBound:I
    :goto_1
    add-int v10, v7, v6

    invoke-virtual {p3, v3, v7, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 351
    .end local v3           #leftBound:I
    .end local v5           #rightBound:I
    :goto_2
    return-void

    .line 315
    .end local v1           #available:I
    .end local v7           #thumbPos:I
    :cond_0
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    sub-int v1, v10, v8

    .restart local v1       #available:I
    goto :goto_0

    .line 330
    .restart local v7       #thumbPos:I
    :cond_1
    move/from16 v3, p5

    .line 331
    .restart local v3       #leftBound:I
    add-int v5, p5, v8

    .restart local v5       #rightBound:I
    goto :goto_1

    .line 337
    .end local v3           #leftBound:I
    .end local v5           #rightBound:I
    .end local v7           #thumbPos:I
    :cond_2
    int-to-float v10, v1

    mul-float v10, v10, p4

    float-to-int v7, v10

    .line 339
    .restart local v7       #thumbPos:I
    const/high16 v10, -0x8000

    move/from16 v0, p5

    if-ne v0, v10, :cond_3

    .line 340
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 341
    .restart local v4       #oldBounds:Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 342
    .local v9, topBound:I
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 349
    .end local v4           #oldBounds:Landroid/graphics/Rect;
    .local v2, bottomBound:I
    :goto_3
    add-int v10, v7, v8

    invoke-virtual {p3, v7, v9, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 344
    .end local v2           #bottomBound:I
    .end local v9           #topBound:I
    :cond_3
    move/from16 v9, p5

    .line 345
    .restart local v9       #topBound:I
    add-int v2, p5, v6

    .restart local v2       #bottomBound:I
    goto :goto_3
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 468
    const/4 v3, 0x0

    .line 469
    .local v3, progress:F
    iget-boolean v8, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v8, :cond_2

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 471
    .local v1, height:I
    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 472
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 474
    .local v7, y:I
    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v7, v8, :cond_0

    .line 475
    const/high16 v4, 0x3f80

    .line 483
    .local v4, scale:F
    :goto_0
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getMax()I

    move-result v2

    .line 484
    .local v2, max:I
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 503
    .end local v1           #height:I
    .end local v7           #y:I
    :goto_1
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/musicfx/seekbar/ProgressBar;->setProgress(IZ)V

    .line 504
    return-void

    .line 476
    .end local v2           #max:I
    .end local v4           #scale:F
    .restart local v1       #height:I
    .restart local v7       #y:I
    :cond_0
    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_1

    .line 477
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_0

    .line 479
    .end local v4           #scale:F
    :cond_1
    const/high16 v8, 0x3f80

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 480
    .restart local v4       #scale:F
    iget v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 486
    .end local v0           #available:I
    .end local v1           #height:I
    .end local v4           #scale:F
    .end local v7           #y:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 487
    .local v5, width:I
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 488
    .restart local v0       #available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 490
    .local v6, x:I
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v6, v8, :cond_3

    .line 491
    const/4 v4, 0x0

    .line 499
    .restart local v4       #scale:F
    :goto_2
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getMax()I

    move-result v2

    .line 500
    .restart local v2       #max:I
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    goto :goto_1

    .line 492
    .end local v2           #max:I
    .end local v4           #scale:F
    :cond_3
    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_4

    .line 493
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_2

    .line 495
    .end local v4           #scale:F
    :cond_4
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 496
    .restart local v4       #scale:F
    iget v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2
.end method

.method private updateThumbPos(II)V
    .locals 13
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 239
    .local v6, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 240
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_6

    .line 241
    if-nez v3, :cond_3

    move v10, v5

    .line 244
    .local v10, thumbWidth:I
    :goto_0
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMaxWidth:I

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 246
    .local v12, trackWidth:I
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getMax()I

    move-result v8

    .line 247
    .local v8, max:I
    if-lez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v4, v0, v1

    .line 249
    .local v4, scale:F
    :cond_0
    if-le v10, v12, :cond_4

    .line 250
    if-eqz v3, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 251
    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 253
    :cond_1
    sub-int v0, v10, v12

    div-int/lit8 v7, v0, 0x2

    .line 254
    .local v7, gapForCenteringTrack:I
    if-eqz v6, :cond_2

    .line 256
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v7

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v7, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    .end local v7           #gapForCenteringTrack:I
    .end local v10           #thumbWidth:I
    .end local v12           #trackWidth:I
    :cond_2
    :goto_1
    return-void

    .line 241
    .end local v4           #scale:F
    .end local v8           #max:I
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    goto :goto_0

    .line 261
    .restart local v4       #scale:F
    .restart local v8       #max:I
    .restart local v10       #thumbWidth:I
    .restart local v12       #trackWidth:I
    :cond_4
    if-eqz v6, :cond_5

    .line 263
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    :cond_5
    sub-int v0, v12, v10

    div-int/lit8 v5, v0, 0x2

    .line 267
    .local v5, gap:I
    if-eqz v3, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_1

    .line 272
    .end local v4           #scale:F
    .end local v5           #gap:I
    .end local v8           #max:I
    .end local v10           #thumbWidth:I
    .end local v12           #trackWidth:I
    :cond_6
    if-nez v3, :cond_9

    move v9, v5

    .line 275
    .local v9, thumbHeight:I
    :goto_2
    iget v0, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMaxHeight:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 277
    .local v11, trackHeight:I
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getMax()I

    move-result v8

    .line 278
    .restart local v8       #max:I
    if-lez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v4, v0, v1

    .line 280
    .restart local v4       #scale:F
    :cond_7
    if-le v9, v11, :cond_a

    .line 281
    if-eqz v3, :cond_8

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 284
    :cond_8
    sub-int v0, v9, v11

    div-int/lit8 v7, v0, 0x2

    .line 285
    .restart local v7       #gapForCenteringTrack:I
    if-eqz v6, :cond_2

    .line 287
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, p2, v1

    sub-int/2addr v1, v7

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 272
    .end local v4           #scale:F
    .end local v7           #gapForCenteringTrack:I
    .end local v8           #max:I
    .end local v9           #thumbHeight:I
    .end local v11           #trackHeight:I
    :cond_9
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    goto :goto_2

    .line 292
    .restart local v4       #scale:F
    .restart local v8       #max:I
    .restart local v9       #thumbHeight:I
    .restart local v11       #trackHeight:I
    :cond_a
    if-eqz v6, :cond_b

    .line 294
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v1, p2, v1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    :cond_b
    sub-int v0, v11, v9

    div-int/lit8 v5, v0, 0x2

    .line 298
    .restart local v5       #gap:I
    if-eqz v3, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 299
    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 203
    invoke-super {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->drawableStateChanged()V

    .line 205
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 212
    .local v1, state:[I
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 214
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 207
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 198
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 199
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 356
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 360
    iget-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 361
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 365
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 366
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 539
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 540
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getProgress()I

    move-result v0

    .line 541
    .local v0, progress:I
    const/16 v2, 0x15

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x14

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 543
    :cond_1
    if-lez v0, :cond_5

    .line 544
    iget v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/android/musicfx/seekbar/ProgressBar;->setProgress(IZ)V

    .line 545
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onKeyChange()V

    .line 558
    .end local v0           #progress:I
    :goto_0
    return v1

    .line 548
    .restart local v0       #progress:I
    :cond_2
    const/16 v2, 0x16

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_4

    :cond_3
    const/16 v2, 0x13

    if-ne p1, v2, :cond_5

    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_5

    .line 550
    :cond_4
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 551
    iget v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/android/musicfx/seekbar/ProgressBar;->setProgress(IZ)V

    .line 552
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 558
    .end local v0           #progress:I
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 374
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 376
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 377
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 378
    .local v2, dw:I
    const/4 v1, 0x0

    .line 379
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 380
    iget v4, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 381
    iget v4, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/android/musicfx/seekbar/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 382
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 384
    :cond_0
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 385
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 387
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/musicfx/seekbar/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 393
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_1
    monitor-exit p0

    return-void

    .line 376
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 374
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 6
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Lcom/android/musicfx/seekbar/ProgressBar;->onProgressRefresh(FZ)V

    .line 219
    iget-object v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 220
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/high16 v5, -0x8000

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 229
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/musicfx/seekbar/AbsSeekBar;->updateThumbPos(II)V

    .line 235
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsDragging:Z

    .line 521
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsDragging:Z

    .line 529
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    iget-boolean v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v2

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    move v2, v3

    .line 464
    goto :goto_0

    .line 405
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mTouchDownX:F

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mTouchDownY:F

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 410
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 411
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 413
    :cond_4
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 414
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 415
    invoke-direct {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 420
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 421
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 423
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 424
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 425
    .local v1, y:F
    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mTouchDownY:F

    sub-float v2, v1, v2

    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 427
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 428
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 429
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 431
    :cond_6
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 432
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 433
    invoke-direct {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 425
    :cond_7
    iget v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    goto :goto_2

    .line 439
    .end local v0           #x:F
    .end local v1           #y:F
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_8

    .line 440
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    .line 442
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 453
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 446
    :cond_8
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 447
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 457
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_9

    .line 458
    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    .line 459
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 461
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 164
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    .line 165
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar;->setMax(I)V

    .line 183
    iget v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "thumb"

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 103
    const/4 v0, 0x1

    .line 107
    .local v0, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    iget-boolean v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mIsVertical:Z

    if-eqz v2, :cond_4

    .line 114
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    .line 120
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 128
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/musicfx/seekbar/AbsSeekBar;->updateThumbPos(II)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 134
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 137
    .end local v1           #state:[I
    :cond_2
    return-void

    .line 105
    .end local v0           #needUpdate:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    goto :goto_1
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 153
    iput p1, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumbOffset:I

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 155
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/musicfx/seekbar/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
