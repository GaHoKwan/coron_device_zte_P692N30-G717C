.class public Lcom/android/contacts/widget/PinnedHeaderListView;
.super Lcom/android/contacts/widget/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/PinnedHeaderListView$1;,
        Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x1

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x14

.field private static final FADING:I = 0x2

.field private static final MAX_ALPHA:I = 0xff

.field private static final TOP:I


# instance fields
.field private mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderPaddingLeft:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 114
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    .line 103
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 119
    invoke-super {p0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V
    .locals 8
    .parameter "canvas"
    .parameter "header"
    .parameter "currentTime"

    .prologue
    const/4 v7, 0x0

    .line 504
    iget-boolean v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v4, :cond_0

    .line 505
    iget-wide v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v4, p3

    long-to-int v2, v4

    .line 506
    .local v2, timeLeft:I
    if-gtz v2, :cond_3

    .line 508
    iget v0, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 510
    .local v0, headerY:I
    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 511
    iget-boolean v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 512
    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 514
    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-eq v0, v4, :cond_0

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 523
    .end local v0           #headerY:I
    .end local v2           #timeLeft:I
    :cond_0
    :goto_0
    iget-boolean v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_2

    .line 524
    iget-object v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 525
    .local v3, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 526
    .local v1, saveCount:I
    iget v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v4, v4

    iget v5, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 527
    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 528
    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 529
    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v5, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v6, 0x1f

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 531
    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 532
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 534
    .end local v1           #saveCount:I
    .end local v3           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 519
    .restart local v2       #timeLeft:I
    :cond_3
    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v5, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v6, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .parameter "viewIndex"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 357
    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 358
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 361
    .local v4, widthSpec:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 362
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    .line 363
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 367
    .local v1, heightSpec:I
    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 368
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 369
    .local v0, height:I
    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 370
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 372
    .end local v0           #height:I
    .end local v1           #heightSpec:I
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #widthSpec:I
    :cond_0
    return-void

    .line 365
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #widthSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #heightSpec:I
    goto :goto_0
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    .line 441
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_1

    .line 444
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 449
    :cond_0
    return-void

    .line 442
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5
    .parameter "partition"

    .prologue
    .line 423
    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .line 424
    .local v3, position:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 425
    const/4 v4, 0x0

    .line 437
    :goto_0
    return v4

    .line 428
    :cond_0
    const/4 v2, 0x0

    .line 429
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 430
    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 431
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 432
    iget v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    .line 429
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v2}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 437
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 453
    iget-boolean v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 455
    .local v1, currentTime:J
    :goto_0
    const/4 v7, 0x0

    .line 456
    .local v7, top:I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 457
    .local v0, bottom:I
    const/4 v3, 0x0

    .line 458
    .local v3, hasVisibleHeaders:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_4

    .line 459
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 460
    .local v4, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_0

    .line 461
    const/4 v3, 0x1

    .line 462
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_2

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v8, v0, :cond_2

    .line 463
    iget v0, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 458
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 453
    .end local v0           #bottom:I
    .end local v1           #currentTime:J
    .end local v3           #hasVisibleHeaders:Z
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v5           #i:I
    .end local v7           #top:I
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 464
    .restart local v0       #bottom:I
    .restart local v1       #currentTime:J
    .restart local v3       #hasVisibleHeaders:Z
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v5       #i:I
    .restart local v7       #top:I
    :cond_2
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_3

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_0

    .line 465
    :cond_3
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v9, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v6, v8, v9

    .line 466
    .local v6, newTop:I
    if-le v6, v7, :cond_0

    .line 467
    move v7, v6

    goto :goto_2

    .line 473
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v6           #newTop:I
    :cond_4
    if-eqz v3, :cond_5

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 475
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v8, v9, v7, v10, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 476
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 479
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 481
    if-eqz v3, :cond_a

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    .line 486
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 487
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_6

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_7

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_6

    .line 488
    :cond_7
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_3

    .line 492
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_8
    const/4 v5, 0x0

    :goto_4
    iget v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_a

    .line 493
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 494
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_9

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_9

    .line 495
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V

    .line 492
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 500
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_a
    invoke-direct {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 501
    return-void
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .parameter "viewIndex"

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 250
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPositionAt(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 393
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 400
    .end local v0           #position:I
    :goto_0
    return v0

    .line 398
    .restart local v0       #position:I
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 399
    if-gtz p1, :cond_0

    .line 400
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    .prologue
    .line 378
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 379
    iget-object v2, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    .line 380
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 381
    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    .line 384
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 405
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mScrollState:I

    if-nez v3, :cond_2

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 407
    .local v2, y:I
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 408
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v3, v1

    .line 409
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v3, v2, :cond_0

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 411
    invoke-direct {p0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result v3

    .line 419
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v1           #i:I
    .end local v2           #y:I
    :goto_0
    return v3

    .line 413
    .restart local v0       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v1       #i:I
    .restart local v2       #y:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 419
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v1           #i:I
    .end local v2           #y:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 212
    .local v7, height:I
    const/4 v11, 0x0

    .line 213
    .local v11, windowTop:I
    move v10, v7

    .line 215
    .local v10, windowBottom:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v8, v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v6, v0, v8

    .line 217
    .local v6, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v0, v6, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v0, :cond_0

    .line 218
    iget v0, v6, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v0, :cond_1

    .line 219
    iget v0, v6, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v6, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v11, v0, v1

    .line 215
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 220
    :cond_1
    iget v0, v6, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget v10, v6, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 227
    .end local v6           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 228
    .local v9, selectedView:Landroid/view/View;
    if-eqz v9, :cond_3

    .line 229
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v11, :cond_5

    .line 230
    invoke-virtual {p0, p3, v11}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 236
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 239
    :cond_4
    return-void

    .line 231
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 232
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0, p3, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    .line 131
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 132
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsListView;->onLayout(ZIIII)V

    .line 133
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v5, 0x0

    .line 160
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_4

    .line 161
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 162
    .local v0, count:I
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    .line 163
    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .line 164
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_2

    .line 165
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 173
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_3

    .line 174
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/widget/PinnedHeaderListView$1;)V

    aput-object v4, v3, v2

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 168
    .local v1, headers:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 169
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 180
    .end local v1           #headers:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v2       #i:I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 181
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V

    .line 182
    invoke-direct {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 185
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_5

    .line 186
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 188
    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 198
    iput p2, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mScrollState:I

    .line 199
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 202
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 141
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 142
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 7
    .parameter "viewIndex"
    .parameter "position"
    .parameter "fade"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 313
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v6, p1

    .line 316
    .local v2, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 317
    const/4 v6, 0x2

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 318
    const/16 v6, 0xff

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 319
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v5

    .line 322
    .local v5, top:I
    iput v5, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 323
    if-eqz p3, :cond_0

    .line 324
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v6, v5

    .line 325
    .local v0, bottom:I
    iget v3, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 326
    .local v3, headerHeight:I
    if-ge v0, v3, :cond_0

    .line 327
    sub-int v4, v0, v3

    .line 328
    .local v4, portion:I
    add-int v6, v3, v4

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v6, v3

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 329
    add-int v6, v5, v4

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .parameter "viewIndex"
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 341
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 342
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    .line 343
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 344
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 345
    iput-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 348
    :cond_1
    iput-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 349
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 350
    iput-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_2
    iput-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 3
    .parameter "viewIndex"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v2, 0x1

    .line 279
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 280
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 281
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iput v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 282
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 283
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 284
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 285
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 301
    :goto_0
    return-void

    .line 286
    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_3

    .line 287
    :cond_1
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    .line 288
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 293
    :goto_1
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 294
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 295
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 296
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    .line 290
    :cond_2
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 291
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1

    .line 298
    :cond_3
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 299
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .parameter "viewIndex"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 262
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 263
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 264
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 265
    iput v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 268
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 269
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 154
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 148
    invoke-super {p0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 149
    return-void
.end method

.method public setPinnedHeaderAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 137
    return-void
.end method
