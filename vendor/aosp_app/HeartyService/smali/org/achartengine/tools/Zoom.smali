.class public Lorg/achartengine/tools/Zoom;
.super Lorg/achartengine/tools/AbstractTool;
.source "Zoom.java"


# instance fields
.field private limitsReachedX:Z

.field private limitsReachedY:Z

.field private mZoomIn:Z

.field private mZoomListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/tools/ZoomListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRate:F


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/AbstractChart;ZF)V
    .locals 2
    .parameter "chart"
    .parameter "in"
    .parameter "rate"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    .line 37
    iput-boolean v1, p0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    .line 39
    iput-boolean v1, p0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    .line 50
    iput-boolean p2, p0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    .line 51
    invoke-virtual {p0, p3}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 52
    return-void
.end method

.method private declared-synchronized notifyZoomListeners(Lorg/achartengine/tools/ZoomEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/achartengine/tools/ZoomListener;

    .line 137
    .local v1, listener:Lorg/achartengine/tools/ZoomListener;
    invoke-interface {v1, p1}, Lorg/achartengine/tools/ZoomListener;->zoomApplied(Lorg/achartengine/tools/ZoomEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/achartengine/tools/ZoomListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public apply()V
    .locals 31

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    instance-of v2, v2, Lorg/achartengine/chart/XYChart;

    if-eqz v2, :cond_b

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getScalesCount()I

    move-result v26

    .line 69
    .local v26, scales:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    .line 70
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/achartengine/tools/Zoom;->getRange(I)[D

    move-result-object v24

    .line 71
    .local v24, range:[D
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lorg/achartengine/tools/Zoom;->checkRange([DI)V

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomLimits()[D

    move-result-object v19

    .line 73
    .local v19, limits:[D
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v8, 0x4

    if-ne v2, v8, :cond_6

    const/16 v18, 0x1

    .line 75
    .local v18, limited:Z
    :goto_1
    const/4 v2, 0x0

    aget-wide v27, v24, v2

    const/4 v2, 0x1

    aget-wide v29, v24, v2

    add-double v27, v27, v29

    const-wide/high16 v29, 0x4000

    div-double v14, v27, v29

    .line 76
    .local v14, centerX:D
    const/4 v2, 0x2

    aget-wide v27, v24, v2

    const/4 v2, 0x3

    aget-wide v29, v24, v2

    add-double v27, v27, v29

    const-wide/high16 v29, 0x4000

    div-double v16, v27, v29

    .line 77
    .local v16, centerY:D
    const/4 v2, 0x1

    aget-wide v27, v24, v2

    const/4 v2, 0x0

    aget-wide v29, v24, v2

    sub-double v22, v27, v29

    .line 78
    .local v22, newWidth:D
    const/4 v2, 0x3

    aget-wide v27, v24, v2

    const/4 v2, 0x2

    aget-wide v29, v24, v2

    sub-double v20, v27, v29

    .line 79
    .local v20, newHeight:D
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    if-eqz v2, :cond_7

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    .line 82
    move-object/from16 v0, p0

    iget v2, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v0, v2

    move-wide/from16 v27, v0

    div-double v22, v22, v27

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v0, v2

    move-wide/from16 v27, v0

    div-double v20, v20, v27

    .line 100
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    const-wide/high16 v27, 0x4000

    div-double v27, v22, v27

    sub-double v3, v14, v27

    .line 102
    .local v3, newXMin:D
    const-wide/high16 v27, 0x4000

    div-double v27, v22, v27

    add-double v5, v14, v27

    .line 103
    .local v5, newXMax:D
    if-eqz v18, :cond_2

    const/4 v2, 0x0

    aget-wide v27, v19, v2

    cmpg-double v2, v27, v3

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    aget-wide v27, v19, v2

    cmpl-double v2, v27, v5

    if-ltz v2, :cond_9

    :cond_2
    move-object/from16 v2, p0

    .line 104
    invoke-virtual/range {v2 .. v7}, Lorg/achartengine/tools/Zoom;->setXRange(DDI)V

    .line 109
    .end local v3           #newXMin:D
    .end local v5           #newXMax:D
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    const-wide/high16 v27, 0x4000

    div-double v27, v20, v27

    sub-double v9, v16, v27

    .line 111
    .local v9, newYMin:D
    const-wide/high16 v27, 0x4000

    div-double v27, v20, v27

    add-double v11, v16, v27

    .line 112
    .local v11, newYMax:D
    if-eqz v18, :cond_4

    const/4 v2, 0x2

    aget-wide v27, v19, v2

    cmpg-double v2, v27, v9

    if-gtz v2, :cond_a

    const/4 v2, 0x3

    aget-wide v27, v19, v2

    cmpl-double v2, v27, v11

    if-ltz v2, :cond_a

    :cond_4
    move-object/from16 v8, p0

    move v13, v7

    .line 113
    invoke-virtual/range {v8 .. v13}, Lorg/achartengine/tools/Zoom;->setYRange(DDI)V

    .line 69
    .end local v9           #newYMin:D
    .end local v11           #newYMax:D
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 73
    .end local v14           #centerX:D
    .end local v16           #centerY:D
    .end local v18           #limited:Z
    .end local v20           #newHeight:D
    .end local v22           #newWidth:D
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 89
    .restart local v14       #centerX:D
    .restart local v16       #centerY:D
    .restart local v18       #limited:Z
    .restart local v20       #newHeight:D
    .restart local v22       #newWidth:D
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 90
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    if-eqz v2, :cond_8

    .line 91
    move-object/from16 v0, p0

    iget v2, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v0, v2

    move-wide/from16 v27, v0

    mul-double v22, v22, v27

    .line 94
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    if-eqz v2, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget v2, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v0, v2

    move-wide/from16 v27, v0

    mul-double v20, v20, v27

    goto/16 :goto_2

    .line 106
    .restart local v3       #newXMin:D
    .restart local v5       #newXMax:D
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    goto :goto_3

    .line 115
    .end local v3           #newXMin:D
    .end local v5           #newXMax:D
    .restart local v9       #newYMin:D
    .restart local v11       #newYMax:D
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    goto :goto_4

    .line 120
    .end local v7           #i:I
    .end local v9           #newYMin:D
    .end local v11           #newYMax:D
    .end local v14           #centerX:D
    .end local v16           #centerY:D
    .end local v18           #limited:Z
    .end local v19           #limits:[D
    .end local v20           #newHeight:D
    .end local v22           #newWidth:D
    .end local v24           #range:[D
    .end local v26           #scales:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Zoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v2, Lorg/achartengine/chart/RoundChart;

    invoke-virtual {v2}, Lorg/achartengine/chart/RoundChart;->getRenderer()Lorg/achartengine/renderer/DefaultRenderer;

    move-result-object v25

    .line 121
    .local v25, renderer:Lorg/achartengine/renderer/DefaultRenderer;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    if-eqz v2, :cond_d

    .line 122
    invoke-virtual/range {v25 .. v25}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget v8, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    mul-float/2addr v2, v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    .line 127
    .end local v25           #renderer:Lorg/achartengine/renderer/DefaultRenderer;
    :cond_c
    :goto_5
    new-instance v2, Lorg/achartengine/tools/ZoomEvent;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    invoke-direct {v2, v8, v13}, Lorg/achartengine/tools/ZoomEvent;-><init>(ZF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/achartengine/tools/Zoom;->notifyZoomListeners(Lorg/achartengine/tools/ZoomEvent;)V

    .line 128
    return-void

    .line 124
    .restart local v25       #renderer:Lorg/achartengine/renderer/DefaultRenderer;
    :cond_d
    invoke-virtual/range {v25 .. v25}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget v8, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    div-float/2addr v2, v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    goto :goto_5
.end method

.method public declared-synchronized notifyZoomResetListeners()V
    .locals 3

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/achartengine/tools/ZoomListener;

    .line 146
    .local v1, listener:Lorg/achartengine/tools/ZoomListener;
    invoke-interface {v1}, Lorg/achartengine/tools/ZoomListener;->zoomReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/achartengine/tools/ZoomListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 148
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setZoomRate(F)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 60
    iput p1, p0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    .line 61
    return-void
.end method
