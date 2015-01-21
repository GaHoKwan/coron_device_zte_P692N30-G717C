.class Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field mCurPoints:[Landroid/graphics/Point;

.field mLastPoints:[Landroid/graphics/Point;

.field private mListener:Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector$OnElevationGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector$OnElevationGestureListener;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    new-array v0, v5, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector$OnElevationGestureListener;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0xc

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    mul-int v4, v2, v3

    if-lez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_0

    add-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector$OnElevationGestureListener;

    invoke-interface {v3, v2}, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector$OnElevationGestureListener;->onElevation(F)Z

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    aget-object v0, v3, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v2, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mCurPoints:[Landroid/graphics/Point;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iput v4, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iput v4, v2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iput v4, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->mLastPoints:[Landroid/graphics/Point;

    aget-object v1, v2, v1

    iput v4, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method
