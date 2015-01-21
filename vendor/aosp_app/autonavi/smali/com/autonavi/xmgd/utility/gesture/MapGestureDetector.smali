.class public Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

.field private mMapElevationGestureDetector:Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;

.field private mMapRotateGestureDetector:Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector;

.field private mMapScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mMapSimpleGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    return-object v0
.end method

.method private detectElevationGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapElevationGestureDetector:Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$3;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$3;-><init>(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector$OnElevationGestureListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapElevationGestureDetector:Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapElevationGestureDetector:Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/utility/gesture/ElevationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private detectRotateGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapRotateGestureDetector:Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$4;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$4;-><init>(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector$OnRotateGestureListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapRotateGestureDetector:Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapRotateGestureDetector:Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private detectScaleGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;-><init>(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private detectSingleGesture(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapSimpleGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;-><init>(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapSimpleGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mMapSimpleGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->detectSingleGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/naviservice/j;->d()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->detectRotateGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    :cond_0
    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->detectScaleGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->detectElevationGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method
