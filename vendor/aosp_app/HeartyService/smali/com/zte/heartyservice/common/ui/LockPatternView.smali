.class public Lcom/zte/heartyservice/common/ui/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/ui/LockPatternView$1;,
        Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;,
        Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;,
        Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;,
        Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "LockPatternView"


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v12, 0x80

    const/high16 v11, -0x4080

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 227
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-boolean v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mDrawingProfilingStarted:Z

    .line 53
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 75
    filled-new-array {v10, v10}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDrawLookup:[[Z

    .line 82
    iput v11, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressX:F

    .line 83
    iput v11, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressY:F

    .line 87
    sget-object v6, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    .line 88
    iput-boolean v8, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInputEnabled:Z

    .line 89
    iput-boolean v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInStealthMode:Z

    .line 90
    iput-boolean v8, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mEnableHapticFeedback:Z

    .line 91
    iput-boolean v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    .line 93
    const v6, 0x3dcccccd

    iput v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mDiameterFactor:F

    .line 94
    iput v12, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mStrokeAlpha:I

    .line 95
    const v6, 0x3f19999a

    iput v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mHitFactor:F

    .line 104
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 105
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 111
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 112
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 229
    sget-object v6, Landroid/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    .local v0, a:Landroid/content/res/TypedArray;
    iput v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mAspect:I

    .line 243
    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setClickable(Z)V

    .line 245
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 247
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 249
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 251
    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 254
    const v6, 0x7f020080

    invoke-direct {p0, v6}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 255
    const v6, 0x7f020081

    invoke-direct {p0, v6}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 256
    const v6, 0x7f02007f

    invoke-direct {p0, v6}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 259
    new-array v3, v10, [Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v6, v3, v9

    iget-object v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v6, v3, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v7, v3, v6

    .line 262
    .local v3, bitmaps:[Landroid/graphics/Bitmap;
    move-object v1, v3

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 263
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapWidth:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapWidth:I

    .line 264
    iget v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapHeight:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapHeight:I

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private addCellToPattern(Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;)V
    .locals 3
    .parameter "newCell"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 537
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->notifyCellAdded()V

    .line 539
    return-void
.end method

.method private checkForNewHit(FF)Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getRowHit(F)I

    move-result v1

    .line 545
    .local v1, rowHit:I
    if-gez v1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-object v2

    .line 548
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getColumnHit(F)I

    move-result v0

    .line 549
    .local v0, columnHit:I
    if-ltz v0, :cond_0

    .line 553
    iget-object v3, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 556
    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->of(II)Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 404
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 405
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 406
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 495
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->checkForNewHit(FF)Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    move-result-object v0

    .line 496
    .local v0, cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 499
    const/4 v4, 0x0

    .line 500
    .local v4, fillInGapCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    iget-object v7, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 501
    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 502
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 503
    .local v6, lastCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    iget v8, v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    iget v11, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 504
    .local v2, dRow:I
    iget v8, v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    iget v11, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 506
    .local v1, dColumn:I
    iget v5, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    .line 507
    .local v5, fillInRow:I
    iget v3, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    .line 509
    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 510
    iget v11, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 513
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 514
    iget v8, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 517
    :cond_2
    invoke-static {v5, v3}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->of(II)Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    move-result-object v4

    .line 520
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 522
    invoke-direct {p0, v4}, Lcom/zte/heartyservice/common/ui/LockPatternView;->addCellToPattern(Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;)V

    .line 524
    :cond_4
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->addCellToPattern(Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;)V

    .line 525
    iget-boolean v8, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 526
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lcom/zte/heartyservice/common/ui/LockPatternView;->performHapticFeedback(II)Z

    .line 532
    .end local v0           #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v4           #fillInGapCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0       #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .restart local v1       #dColumn:I
    .restart local v2       #dRow:I
    .restart local v3       #fillInColumn:I
    .restart local v4       #fillInGapCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .restart local v5       #fillInRow:I
    .restart local v6       #lastCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .restart local v7       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    .line 510
    goto :goto_0

    .line 532
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v4           #fillInGapCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 12
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    .line 980
    if-eqz p4, :cond_0

    iget-boolean v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInStealthMode:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    sget-object v10, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    if-eq v9, v10, :cond_1

    .line 982
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 997
    .local v3, outerCircle:Landroid/graphics/Bitmap;
    :goto_0
    iget v8, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapWidth:I

    .line 998
    .local v8, width:I
    iget v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapHeight:I

    .line 1000
    .local v0, height:I
    iget v5, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    .line 1001
    .local v5, squareWidth:F
    iget v4, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    .line 1003
    .local v4, squareHeight:F
    int-to-float v9, v8

    sub-float v9, v5, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    float-to-int v1, v9

    .line 1004
    .local v1, offsetX:I
    int-to-float v9, v0

    sub-float v9, v4, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    float-to-int v2, v9

    .line 1007
    .local v2, offsetY:I
    iget v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    iget v10, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1008
    .local v6, sx:F
    iget v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    iget v10, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1010
    .local v7, sy:F
    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v10, p2, v1

    int-to-float v10, v10

    add-int v11, p3, v2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1011
    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1012
    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1013
    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1015
    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1016
    return-void

    .line 983
    .end local v0           #height:I
    .end local v1           #offsetX:I
    .end local v2           #offsetY:I
    .end local v3           #outerCircle:Landroid/graphics/Bitmap;
    .end local v4           #squareHeight:F
    .end local v5           #squareWidth:F
    .end local v6           #sx:F
    .end local v7           #sy:F
    .end local v8           #width:I
    :cond_1
    iget-boolean v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    if-eqz v9, :cond_2

    .line 985
    iget-object v3, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .restart local v3       #outerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 986
    .end local v3           #outerCircle:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    sget-object v10, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    if-ne v9, v10, :cond_3

    .line 988
    iget-object v3, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .restart local v3       #outerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 989
    .end local v3           #outerCircle:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    sget-object v10, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    sget-object v10, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Animate:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    if-ne v9, v10, :cond_5

    .line 992
    :cond_4
    iget-object v3, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .restart local v3       #outerCircle:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 994
    .end local v3           #outerCircle:Landroid/graphics/Bitmap;
    :cond_5
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown display mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 834
    iget v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 838
    iget v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .parameter "x"

    .prologue
    .line 586
    iget v4, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    .line 587
    .local v4, squareWidth:F
    iget v5, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 589
    .local v1, hitSize:F
    iget v5, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 590
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 592
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 593
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 597
    .end local v0           #hitLeft:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 590
    .restart local v0       #hitLeft:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    .end local v0           #hitLeft:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .parameter "y"

    .prologue
    .line 566
    iget v4, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    .line 567
    .local v4, squareHeight:F
    iget v5, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 569
    .local v0, hitSize:F
    iget v5, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 570
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 572
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 573
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 577
    .end local v1           #hitTop:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 570
    .restart local v1       #hitTop:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .end local v1           #hitTop:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/high16 v8, 0x4000

    .line 801
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->resetPattern()V

    .line 802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 803
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 804
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lcom/zte/heartyservice/common/ui/LockPatternView;->detectAndAddHit(FF)Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    move-result-object v1

    .line 805
    .local v1, hitCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    if-eqz v1, :cond_1

    .line 806
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    .line 807
    sget-object v7, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    .line 808
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->notifyPatternStarted()V

    .line 813
    :goto_0
    if-eqz v1, :cond_0

    .line 814
    iget v7, v1, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 815
    .local v2, startX:F
    iget v7, v1, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 817
    .local v3, startY:F
    iget v7, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 818
    .local v4, widthOffset:F
    iget v7, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 820
    .local v0, heightOffset:F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/zte/heartyservice/common/ui/LockPatternView;->invalidate(IIII)V

    .line 823
    .end local v0           #heightOffset:F
    .end local v2           #startX:F
    .end local v3           #startY:F
    .end local v4           #widthOffset:F
    :cond_0
    iput v5, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressX:F

    .line 824
    iput v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressY:F

    .line 831
    return-void

    .line 810
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    .line 811
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31
    .parameter "event"

    .prologue
    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 656
    .local v8, historySize:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_d

    .line 657
    if-ge v10, v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .line 658
    .local v25, x:F
    :goto_1
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .line 659
    .local v26, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 660
    .local v18, patternSizePreHitDetect:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->detectAndAddHit(FF)Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    move-result-object v9

    .line 661
    .local v9, hitCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 662
    .local v17, patternSize:I
    if-eqz v9, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 663
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    .line 664
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->notifyPatternStarted()V

    .line 667
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 668
    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 669
    .local v6, dy:F
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2

    .line 670
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressX:F

    .line 671
    .local v14, oldX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressY:F

    .line 673
    .local v15, oldY:F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressX:F

    .line 674
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressY:F

    .line 676
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    if-lez v17, :cond_c

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 678
    .local v16, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f00

    mul-float v19, v27, v28

    .line 680
    .local v19, radius:F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 682
    .local v12, lastCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    iget v0, v12, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 683
    .local v21, startX:F
    iget v0, v12, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 690
    .local v22, startY:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 692
    .local v11, invalidateRect:Landroid/graphics/Rect;
    cmpg-float v27, v21, v25

    if-gez v27, :cond_5

    .line 693
    move/from16 v13, v21

    .line 694
    .local v13, left:F
    move/from16 v20, v25

    .line 700
    .local v20, right:F
    :goto_3
    cmpg-float v27, v22, v26

    if-gez v27, :cond_6

    .line 701
    move/from16 v23, v22

    .line 702
    .local v23, top:F
    move/from16 v4, v26

    .line 709
    .local v4, bottom:F
    :goto_4
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 712
    cmpg-float v27, v21, v14

    if-gez v27, :cond_7

    .line 713
    move/from16 v13, v21

    .line 714
    move/from16 v20, v14

    .line 720
    :goto_5
    cmpg-float v27, v22, v15

    if-gez v27, :cond_8

    .line 721
    move/from16 v23, v22

    .line 722
    move v4, v15

    .line 729
    :goto_6
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 733
    if-eqz v9, :cond_1

    .line 734
    iget v0, v9, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 735
    iget v0, v9, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 737
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 739
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    check-cast v9, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 740
    .restart local v9       #hitCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    iget v0, v9, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 741
    iget v0, v9, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 743
    cmpg-float v27, v21, v14

    if-gez v27, :cond_9

    .line 744
    move/from16 v13, v21

    .line 745
    move/from16 v20, v14

    .line 751
    :goto_7
    cmpg-float v27, v22, v15

    if-gez v27, :cond_a

    .line 752
    move/from16 v23, v22

    .line 753
    move v4, v15

    .line 763
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v24, v27, v28

    .line 764
    .local v24, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v7, v27, v28

    .line 766
    .local v7, heightOffset:F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 771
    .end local v7           #heightOffset:F
    .end local v24           #widthOffset:F
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/heartyservice/common/ui/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 656
    .end local v4           #bottom:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v13           #left:F
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_2
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 657
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    goto/16 :goto_1

    .line 658
    .restart local v25       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_2

    .line 696
    .restart local v5       #dx:F
    .restart local v6       #dy:F
    .restart local v9       #hitCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .restart local v11       #invalidateRect:Landroid/graphics/Rect;
    .restart local v12       #lastCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .restart local v14       #oldX:F
    .restart local v15       #oldY:F
    .restart local v16       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    .restart local v17       #patternSize:I
    .restart local v18       #patternSizePreHitDetect:I
    .restart local v19       #radius:F
    .restart local v21       #startX:F
    .restart local v22       #startY:F
    .restart local v26       #y:F
    :cond_5
    move/from16 v13, v25

    .line 697
    .restart local v13       #left:F
    move/from16 v20, v21

    .restart local v20       #right:F
    goto/16 :goto_3

    .line 704
    :cond_6
    move/from16 v23, v26

    .line 705
    .restart local v23       #top:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    goto/16 :goto_4

    .line 716
    :cond_7
    move v13, v14

    .line 717
    move/from16 v20, v21

    goto/16 :goto_5

    .line 724
    :cond_8
    move/from16 v23, v15

    .line 725
    move/from16 v4, v22

    goto/16 :goto_6

    .line 747
    :cond_9
    move v13, v14

    .line 748
    move/from16 v20, v21

    goto :goto_7

    .line 755
    :cond_a
    move/from16 v23, v15

    .line 756
    move/from16 v4, v22

    goto :goto_8

    .line 759
    :cond_b
    move/from16 v20, v21

    move/from16 v13, v21

    .line 760
    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_8

    .line 773
    .end local v4           #bottom:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v13           #left:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->invalidate()V

    goto :goto_9

    .line 777
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_d
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    .line 789
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->notifyPatternDetected()V

    .line 790
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->invalidate()V

    .line 798
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 360
    :cond_0
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 381
    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 374
    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 367
    :cond_0
    return-void
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1140
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1141
    const-string v4, ""

    .line 1150
    :goto_0
    return-object v4

    .line 1143
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1145
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 1146
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1147
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 1148
    .local v0, cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1150
    .end local v0           #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 395
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPatternDrawLookup()V

    .line 396
    sget-object v0, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    .line 397
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->invalidate()V

    .line 398
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 439
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 448
    move v0, v1

    .line 450
    :goto_0
    return v0

    .line 441
    :sswitch_0
    move v0, p2

    .line 442
    goto :goto_0

    .line 444
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 445
    goto :goto_0

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 781
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->sendAccessibilityEvent(I)V

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 783
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1126
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1127
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1128
    aget-byte v0, v1, v2

    .line 1129
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->of(II)Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1131
    .end local v0           #b:B
    :cond_0
    return-object v3
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->resetPattern()V

    .line 388
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInputEnabled:Z

    .line 417
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInputEnabled:Z

    .line 424
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 38
    .parameter "canvas"

    .prologue
    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 844
    .local v27, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 845
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDrawLookup:[[Z

    .line 847
    .local v12, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    move-object/from16 v34, v0

    sget-object v35, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Animate:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_2

    .line 852
    add-int/lit8 v34, v9, 0x1

    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x2bc

    move/from16 v24, v0

    .line 853
    .local v24, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v36, v0

    sub-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v34, v0

    rem-int v30, v34, v24

    .line 855
    .local v30, spotInCycle:I
    move/from16 v0, v30

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v22, v0

    .line 857
    .local v22, numCircles:I
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPatternDrawLookup()V

    .line 858
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 859
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 860
    .local v6, cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    invoke-virtual {v6}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getRow()I

    move-result v34

    aget-object v34, v12, v34

    invoke-virtual {v6}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getColumn()I

    move-result v35

    const/16 v36, 0x1

    aput-boolean v36, v34, v35

    .line 858
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 865
    .end local v6           #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    :cond_0
    if-lez v22, :cond_3

    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    const/16 v19, 0x1

    .line 868
    .local v19, needToUpdateInProgressPoint:Z
    :goto_1
    if-eqz v19, :cond_1

    .line 869
    move/from16 v0, v30

    rem-int/lit16 v0, v0, 0x2bc

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x442f

    div-float v28, v34, v35

    .line 873
    .local v28, percentageOfNextCircle:F
    add-int/lit8 v34, v22, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 874
    .local v10, currentCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    iget v0, v10, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterXForColumn(I)F

    move-result v7

    .line 875
    .local v7, centerX:F
    iget v0, v10, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterYForRow(I)F

    move-result v8

    .line 877
    .local v8, centerY:F
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 878
    .local v21, nextCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterXForColumn(I)F

    move-result v34

    sub-float v34, v34, v7

    mul-float v14, v28, v34

    .line 880
    .local v14, dx:F
    move-object/from16 v0, v21

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterYForRow(I)F

    move-result v34

    sub-float v34, v34, v8

    mul-float v15, v28, v34

    .line 882
    .local v15, dy:F
    add-float v34, v7, v14

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressX:F

    .line 883
    add-float v34, v8, v15

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressY:F

    .line 886
    .end local v7           #centerX:F
    .end local v8           #centerY:F
    .end local v10           #currentCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v14           #dx:F
    .end local v15           #dy:F
    .end local v21           #nextCell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v28           #percentageOfNextCircle:F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->invalidate()V

    .line 889
    .end local v16           #i:I
    .end local v19           #needToUpdateInProgressPoint:Z
    .end local v22           #numCircles:I
    .end local v24           #oneCycle:I
    .end local v30           #spotInCycle:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    move/from16 v32, v0

    .line 890
    .local v32, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    move/from16 v31, v0

    .line 892
    .local v31, squareHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mDiameterFactor:F

    move/from16 v34, v0

    mul-float v34, v34, v32

    const/high16 v35, 0x3f00

    mul-float v29, v34, v35

    .line 893
    .local v29, radius:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 895
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 896
    .local v11, currentPath:Landroid/graphics/Path;
    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingTop:I

    move/from16 v26, v0

    .line 900
    .local v26, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingLeft:I

    move/from16 v25, v0

    .line 902
    .local v25, paddingLeft:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_2
    const/16 v34, 0x3

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_5

    .line 903
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v31

    add-float v33, v34, v35

    .line 905
    .local v33, topY:F
    const/16 v17, 0x0

    .local v17, j:I
    :goto_3
    const/16 v34, 0x3

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    .line 906
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v32

    add-float v18, v34, v35

    .line 907
    .local v18, leftX:F
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v35, v0

    aget-object v36, v12, v16

    aget-boolean v36, v36, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/heartyservice/common/ui/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 905
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 865
    .end local v11           #currentPath:Landroid/graphics/Path;
    .end local v17           #j:I
    .end local v18           #leftX:F
    .end local v25           #paddingLeft:I
    .end local v26           #paddingTop:I
    .end local v29           #radius:F
    .end local v31           #squareHeight:F
    .end local v32           #squareWidth:F
    .end local v33           #topY:F
    .restart local v22       #numCircles:I
    .restart local v24       #oneCycle:I
    .restart local v30       #spotInCycle:I
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 902
    .end local v22           #numCircles:I
    .end local v24           #oneCycle:I
    .end local v30           #spotInCycle:I
    .restart local v11       #currentPath:Landroid/graphics/Path;
    .restart local v17       #j:I
    .restart local v25       #paddingLeft:I
    .restart local v26       #paddingTop:I
    .restart local v29       #radius:F
    .restart local v31       #squareHeight:F
    .restart local v32       #squareWidth:F
    .restart local v33       #topY:F
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 915
    .end local v17           #j:I
    .end local v33           #topY:F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInStealthMode:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    move-object/from16 v34, v0

    sget-object v35, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Wrong:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_c

    :cond_6
    const/4 v13, 0x1

    .line 919
    .local v13, drawPath:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Paint;->getFlags()I

    move-result v34

    and-int/lit8 v34, v34, 0x2

    if-eqz v34, :cond_d

    const/16 v23, 0x1

    .line 920
    .local v23, oldFlag:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 921
    if-eqz v13, :cond_7

    .line 922
    const/16 v16, 0x0

    :goto_6
    add-int/lit8 v34, v9, -0x1

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_7

    .line 923
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 924
    .restart local v6       #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    add-int/lit8 v34, v16, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 929
    .local v20, next:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v34, v0

    aget-object v34, v12, v34

    move-object/from16 v0, v20

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v35, v0

    aget-boolean v34, v34, v35

    if-nez v34, :cond_e

    .line 938
    .end local v6           #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .end local v20           #next:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    :cond_7
    if-eqz v13, :cond_b

    .line 939
    const/4 v5, 0x0

    .line 940
    .local v5, anyCircles:Z
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v0, v9, :cond_8

    .line 941
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 946
    .restart local v6       #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    iget v0, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v34, v0

    aget-object v34, v12, v34

    iget v0, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v35, v0

    aget-boolean v34, v34, v35

    if-nez v34, :cond_f

    .line 961
    .end local v6           #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    move/from16 v34, v0

    if-nez v34, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    move-object/from16 v34, v0

    sget-object v35, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Animate:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_a

    :cond_9
    if-eqz v5, :cond_a

    .line 963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressX:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressY:F

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 965
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 968
    .end local v5           #anyCircles:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 969
    return-void

    .line 915
    .end local v13           #drawPath:Z
    .end local v23           #oldFlag:Z
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 919
    .restart local v13       #drawPath:Z
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 933
    .restart local v6       #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .restart local v20       #next:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .restart local v23       #oldFlag:Z
    :cond_e
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    iget v0, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v32

    add-float v18, v34, v35

    .line 934
    .restart local v18       #leftX:F
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v34, v0

    iget v0, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v31

    add-float v34, v34, v35

    .line 922
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 949
    .end local v18           #leftX:F
    .end local v20           #next:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    .restart local v5       #anyCircles:Z
    :cond_f
    const/4 v5, 0x1

    .line 951
    iget v0, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->column:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterXForColumn(I)F

    move-result v7

    .line 952
    .restart local v7       #centerX:F
    iget v0, v6, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->row:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterYForRow(I)F

    move-result v8

    .line 953
    .restart local v8       #centerY:F
    if-nez v16, :cond_10

    .line 954
    invoke-virtual {v11, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 940
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 956
    :cond_10
    invoke-virtual {v11, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 602
    iget-object v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 604
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 615
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 616
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 618
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 606
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 609
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 612
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 468
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 469
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 470
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 472
    .local v2, viewHeight:I
    iget v4, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 484
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setMeasuredDimension(II)V

    .line 485
    return-void

    .line 474
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 475
    goto :goto_0

    .line 477
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 478
    goto :goto_0

    .line 480
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1029
    move-object v0, p1

    check-cast v0, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;

    .line 1030
    .local v0, ss:Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1031
    sget-object v1, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Correct:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setPattern(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1034
    invoke-static {}, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->values()[Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    .line 1035
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInputEnabled:Z

    .line 1036
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInStealthMode:Z

    .line 1037
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mEnableHapticFeedback:Z

    .line 1038
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1020
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1021
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/zte/heartyservice/common/ui/LockPatternView;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/zte/heartyservice/common/ui/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4040

    .line 428
    iget v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 429
    .local v1, width:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareWidth:F

    .line 431
    iget v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 432
    .local v0, height:I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mSquareHeight:F

    .line 433
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 623
    iget-boolean v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 649
    :goto_0
    return v0

    .line 627
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 649
    goto :goto_0

    .line 629
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 632
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 635
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 638
    :pswitch_3
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->resetPattern()V

    .line 639
    iput-boolean v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternInProgress:Z

    .line 640
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V
    .locals 3
    .parameter "displayMode"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDisplayMode:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    .line 341
    sget-object v1, Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;->Animate:Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mAnimatingPeriodStart:J

    .line 347
    iget-object v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 348
    .local v0, first:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressX:F

    .line 349
    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInProgressY:F

    .line 350
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPatternDrawLookup()V

    .line 352
    .end local v0           #first:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->invalidate()V

    .line 353
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mInStealthMode:Z

    .line 295
    return-void
.end method

.method public setOnPatternListener(Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mOnPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    .line 314
    return-void
.end method

.method public setPattern(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 325
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPatternDrawLookup()V

    .line 326
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;

    .line 327
    .local v0, cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    iget-object v2, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 330
    .end local v0           #cell:Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setDisplayMode(Lcom/zte/heartyservice/common/ui/LockPatternView$DisplayMode;)V

    .line 331
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/zte/heartyservice/common/ui/LockPatternView;->mEnableHapticFeedback:Z

    .line 305
    return-void
.end method
