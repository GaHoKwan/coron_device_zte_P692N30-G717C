.class public Lorg/achartengine/TouchHandler;
.super Ljava/lang/Object;
.source "TouchHandler.java"

# interfaces
.implements Lorg/achartengine/ITouchHandler;


# instance fields
.field private graphicalView:Lorg/achartengine/GraphicalView;

.field private mPan:Lorg/achartengine/tools/Pan;

.field private mPinchZoom:Lorg/achartengine/tools/Zoom;

.field private mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

.field private oldX:F

.field private oldX2:F

.field private oldY:F

.field private oldY2:F

.field private zoomR:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lorg/achartengine/GraphicalView;Lorg/achartengine/chart/AbstractChart;)V
    .locals 3
    .parameter "view"
    .parameter "chart"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    .line 60
    iput-object p1, p0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    .line 61
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v0}, Lorg/achartengine/GraphicalView;->getZoomRectangle()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    .line 62
    instance-of v0, p2, Lorg/achartengine/chart/XYChart;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 63
    check-cast v0, Lorg/achartengine/chart/XYChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/XYChart;->getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    .line 67
    :goto_0
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isPanEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lorg/achartengine/tools/Pan;

    invoke-direct {v0, p2}, Lorg/achartengine/tools/Pan;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lorg/achartengine/tools/Zoom;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    invoke-direct {v0, p2, v1, v2}, Lorg/achartengine/tools/Zoom;-><init>(Lorg/achartengine/chart/AbstractChart;ZF)V

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    .line 73
    :cond_1
    return-void

    :cond_2
    move-object v0, p2

    .line 65
    check-cast v0, Lorg/achartengine/chart/RoundChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/RoundChart;->getRenderer()Lorg/achartengine/renderer/DefaultRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    goto :goto_0
.end method


# virtual methods
.method public addPanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 169
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Pan;->addPanListener(Lorg/achartengine/tools/PanListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method public addZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 147
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Zoom;->addZoomListener(Lorg/achartengine/tools/ZoomListener;)V

    .line 150
    :cond_0
    return-void
.end method

.method public handleTouch(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 82
    .local v0, action:I
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    if-eqz v10, :cond_6

    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    .line 83
    iget v10, p0, Lorg/achartengine/TouchHandler;->oldX:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-gez v10, :cond_0

    iget v10, p0, Lorg/achartengine/TouchHandler;->oldY:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_b

    .line 84
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 85
    .local v3, newX:F
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 86
    .local v5, newY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    iget v10, p0, Lorg/achartengine/TouchHandler;->oldX2:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-gez v10, :cond_1

    iget v10, p0, Lorg/achartengine/TouchHandler;->oldY2:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    :cond_1
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v10}, Lorg/achartengine/renderer/DefaultRenderer;->isZoomEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 87
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 88
    .local v4, newX2:F
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 89
    .local v6, newY2:F
    sub-float v10, v3, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 90
    .local v1, newDeltaX:F
    sub-float v10, v5, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 91
    .local v2, newDeltaY:F
    iget v10, p0, Lorg/achartengine/TouchHandler;->oldX:F

    iget v11, p0, Lorg/achartengine/TouchHandler;->oldX2:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 92
    .local v7, oldDeltaX:F
    iget v10, p0, Lorg/achartengine/TouchHandler;->oldY:F

    iget v11, p0, Lorg/achartengine/TouchHandler;->oldY2:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 93
    .local v8, oldDeltaY:F
    const/high16 v9, 0x3f80

    .line 94
    .local v9, zoomRate:F
    iget v10, p0, Lorg/achartengine/TouchHandler;->oldX:F

    sub-float v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lorg/achartengine/TouchHandler;->oldY:F

    sub-float v11, v5, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4

    .line 95
    div-float v9, v1, v7

    .line 99
    :goto_0
    float-to-double v10, v9

    const-wide v12, 0x3fed16872b020c4aL

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    float-to-double v10, v9

    const-wide v12, 0x3ff199999999999aL

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 100
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v10, v9}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 101
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v10}, Lorg/achartengine/tools/Zoom;->apply()V

    .line 103
    :cond_2
    iput v4, p0, Lorg/achartengine/TouchHandler;->oldX2:F

    .line 104
    iput v6, p0, Lorg/achartengine/TouchHandler;->oldY2:F

    .line 110
    .end local v1           #newDeltaX:F
    .end local v2           #newDeltaY:F
    .end local v4           #newX2:F
    .end local v6           #newY2:F
    .end local v7           #oldDeltaX:F
    .end local v8           #oldDeltaY:F
    .end local v9           #zoomRate:F
    :cond_3
    :goto_1
    iput v3, p0, Lorg/achartengine/TouchHandler;->oldX:F

    .line 111
    iput v5, p0, Lorg/achartengine/TouchHandler;->oldY:F

    .line 112
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v10}, Lorg/achartengine/GraphicalView;->repaint()V

    .line 113
    const/4 v10, 0x1

    .line 138
    .end local v3           #newX:F
    .end local v5           #newY:F
    :goto_2
    return v10

    .line 97
    .restart local v1       #newDeltaX:F
    .restart local v2       #newDeltaY:F
    .restart local v3       #newX:F
    .restart local v4       #newX2:F
    .restart local v5       #newY:F
    .restart local v6       #newY2:F
    .restart local v7       #oldDeltaX:F
    .restart local v8       #oldDeltaY:F
    .restart local v9       #zoomRate:F
    :cond_4
    div-float v9, v2, v8

    goto :goto_0

    .line 105
    .end local v1           #newDeltaX:F
    .end local v2           #newDeltaY:F
    .end local v4           #newX2:F
    .end local v6           #newY2:F
    .end local v7           #oldDeltaX:F
    .end local v8           #oldDeltaY:F
    .end local v9           #zoomRate:F
    :cond_5
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v10}, Lorg/achartengine/renderer/DefaultRenderer;->isPanEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 106
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    iget v11, p0, Lorg/achartengine/TouchHandler;->oldX:F

    iget v12, p0, Lorg/achartengine/TouchHandler;->oldY:F

    invoke-virtual {v10, v11, v12, v3, v5}, Lorg/achartengine/tools/Pan;->apply(FFFF)V

    .line 107
    const/4 v10, 0x0

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldX2:F

    .line 108
    const/4 v10, 0x0

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldY2:F

    goto :goto_1

    .line 115
    .end local v3           #newX:F
    .end local v5           #newY:F
    :cond_6
    if-nez v0, :cond_9

    .line 116
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldX:F

    .line 117
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldY:F

    .line 118
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v10}, Lorg/achartengine/renderer/DefaultRenderer;->isZoomEnabled()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    iget v11, p0, Lorg/achartengine/TouchHandler;->oldX:F

    iget v12, p0, Lorg/achartengine/TouchHandler;->oldY:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 119
    iget v10, p0, Lorg/achartengine/TouchHandler;->oldX:F

    iget-object v11, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x4040

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 120
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v10}, Lorg/achartengine/GraphicalView;->zoomIn()V

    .line 126
    :goto_3
    const/4 v10, 0x1

    goto :goto_2

    .line 121
    :cond_7
    iget v10, p0, Lorg/achartengine/TouchHandler;->oldX:F

    iget-object v11, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x4000

    mul-float/2addr v12, v13

    const/high16 v13, 0x4040

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 122
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v10}, Lorg/achartengine/GraphicalView;->zoomOut()V

    goto :goto_3

    .line 124
    :cond_8
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v10}, Lorg/achartengine/GraphicalView;->zoomReset()V

    goto :goto_3

    .line 128
    :cond_9
    const/4 v10, 0x1

    if-eq v0, v10, :cond_a

    const/4 v10, 0x6

    if-ne v0, v10, :cond_b

    .line 129
    :cond_a
    const/4 v10, 0x0

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldX:F

    .line 130
    const/4 v10, 0x0

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldY:F

    .line 131
    const/4 v10, 0x0

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldX2:F

    .line 132
    const/4 v10, 0x0

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldY2:F

    .line 133
    const/4 v10, 0x6

    if-ne v0, v10, :cond_b

    .line 134
    const/high16 v10, -0x4080

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldX:F

    .line 135
    const/high16 v10, -0x4080

    iput v10, p0, Lorg/achartengine/TouchHandler;->oldY:F

    .line 138
    :cond_b
    iget-object v10, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v10}, Lorg/achartengine/renderer/DefaultRenderer;->isClickEnabled()Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method public removePanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 180
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Pan;->removePanListener(Lorg/achartengine/tools/PanListener;)V

    .line 183
    :cond_0
    return-void
.end method

.method public removeZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 158
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Zoom;->removeZoomListener(Lorg/achartengine/tools/ZoomListener;)V

    .line 161
    :cond_0
    return-void
.end method
