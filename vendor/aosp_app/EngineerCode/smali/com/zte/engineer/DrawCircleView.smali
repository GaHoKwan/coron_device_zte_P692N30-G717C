.class public Lcom/zte/engineer/DrawCircleView;
.super Landroid/view/SurfaceView;
.source "DrawCircleView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawCircleView"


# instance fields
.field final RADIUS:I

.field bFirst:Z

.field private debug:Z

.field hadFill:[Z

.field mCanvas:Landroid/graphics/Canvas;

.field mCircleRects:[Landroid/graphics/Rect;

.field mCurPoint:Landroid/graphics/Point;

.field mHolder:Landroid/view/SurfaceHolder;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v1, p0, Lcom/zte/engineer/DrawCircleView;->mPaint:Landroid/graphics/Paint;

    .line 22
    new-array v0, v2, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mCircleRects:[Landroid/graphics/Rect;

    .line 23
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/zte/engineer/DrawCircleView;->hadFill:[Z

    .line 24
    const/16 v0, 0x37

    iput v0, p0, Lcom/zte/engineer/DrawCircleView;->RADIUS:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/engineer/DrawCircleView;->bFirst:Z

    .line 26
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mCanvas:Landroid/graphics/Canvas;

    .line 27
    iput-object v1, p0, Lcom/zte/engineer/DrawCircleView;->mCurPoint:Landroid/graphics/Point;

    .line 28
    iput-object v1, p0, Lcom/zte/engineer/DrawCircleView;->mHolder:Landroid/view/SurfaceHolder;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/DrawCircleView;->debug:Z

    .line 36
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mHolder:Landroid/view/SurfaceHolder;

    .line 37
    iget-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 38
    return-void
.end method

.method private drawHollowCircle()V
    .locals 9

    .prologue
    .line 91
    iget-object v5, p0, Lcom/zte/engineer/DrawCircleView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 92
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/zte/engineer/DrawCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mCircleRects:[Landroid/graphics/Rect;

    .local v0, arr$:[Landroid/graphics/Rect;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 96
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x425c

    iget-object v8, p0, Lcom/zte/engineer/DrawCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lcom/zte/engineer/DrawCircleView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method private drawSolidCircle(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/zte/engineer/DrawCircleView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/zte/engineer/DrawCircleView;->mCircleRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 107
    .local v0, canvas:Landroid/graphics/Canvas;
    const-string v1, "DrawCircleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "________draw fill circle INDEX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/zte/engineer/DrawCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v1, p0, Lcom/zte/engineer/DrawCircleView;->mCircleRects:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zte/engineer/DrawCircleView;->mCircleRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x425c

    iget-object v4, p0, Lcom/zte/engineer/DrawCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    iget-object v1, p0, Lcom/zte/engineer/DrawCircleView;->hadFill:[Z

    invoke-virtual {p0, v1}, Lcom/zte/engineer/DrawCircleView;->fillAll([Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/zte/engineer/DrawCircleView$1;

    invoke-direct {v2, p0}, Lcom/zte/engineer/DrawCircleView$1;-><init>(Lcom/zte/engineer/DrawCircleView;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/zte/engineer/DrawCircleView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 126
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    return-void
.end method

.method private setCircleRects([Landroid/graphics/Rect;)V
    .locals 10
    .parameter "rects"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x6e

    const/4 v6, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 50
    .local v1, width:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 51
    .local v0, height:I
    rem-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_0

    .line 52
    :goto_0
    const-string v2, "DrawCircleView"

    const-string v3, "____setCircleRects(...)______measure width: %d, measure height : %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, p1, v6

    .line 57
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v1, -0x6e

    invoke-direct {v2, v3, v6, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, p1, v8

    .line 58
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v0, -0x6e

    invoke-direct {v2, v6, v3, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, p1, v9

    .line 59
    const/4 v2, 0x3

    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v1, -0x6e

    add-int/lit8 v5, v0, -0x6e

    invoke-direct {v3, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, p1, v2

    .line 60
    const/4 v2, 0x4

    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, -0x37

    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, -0x37

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x37

    div-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x37

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, p1, v2

    .line 61
    return-void

    .line 51
    :cond_0
    div-int/lit8 v2, v0, 0xa

    mul-int/lit8 v0, v2, 0xa

    goto :goto_0
.end method


# virtual methods
.method fillAll([Z)Z
    .locals 7
    .parameter "bArray"

    .prologue
    .line 134
    move-object v0, p1

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    .line 136
    .local v1, b:Z
    if-nez v1, :cond_0

    .line 138
    const-string v4, "DrawCircleView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "____fillAll____b :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v4, 0x0

    .line 142
    .end local v1           #b:Z
    :goto_1
    return v4

    .line 134
    .restart local v1       #b:Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v1           #b:Z
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 68
    .local v0, action:I
    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 71
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 72
    .local v4, y:I
    iget-object v5, p0, Lcom/zte/engineer/DrawCircleView;->mCircleRects:[Landroid/graphics/Rect;

    array-length v2, v5

    .line 73
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 76
    iget-object v5, p0, Lcom/zte/engineer/DrawCircleView;->mCircleRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    const-string v5, "DrawCircleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "______draw stroken circle no."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v5, p0, Lcom/zte/engineer/DrawCircleView;->hadFill:[Z

    aput-boolean v8, v5, v1

    .line 80
    invoke-direct {p0, v1}, Lcom/zte/engineer/DrawCircleView;->drawSolidCircle(I)V

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_1
    return v8
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 150
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/zte/engineer/DrawCircleView;->initPaint()V

    .line 157
    iget-object v0, p0, Lcom/zte/engineer/DrawCircleView;->mCircleRects:[Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/zte/engineer/DrawCircleView;->setCircleRects([Landroid/graphics/Rect;)V

    .line 158
    invoke-direct {p0}, Lcom/zte/engineer/DrawCircleView;->drawHollowCircle()V

    .line 159
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 165
    return-void
.end method
