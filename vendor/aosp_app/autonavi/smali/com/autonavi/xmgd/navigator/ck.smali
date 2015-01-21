.class Lcom/autonavi/xmgd/navigator/ck;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Lcom/autonavi/xmgd/navigator/Map;

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/xmgd/navigator/cl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/cl;-><init>(Lcom/autonavi/xmgd/navigator/ck;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v0, 0x4

    iput v0, p0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/ck;->d:Z

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 22

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/xmgd/utility/Tool;->getScreenSize()[I

    move-result-object v4

    const/4 v3, 0x0

    aget v3, v4, v3

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    if-le v5, v6, :cond_0

    const/4 v3, 0x1

    aget v3, v4, v3

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v5, 0x0

    new-instance v6, Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v6, 0x0

    new-instance v7, Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    aput-object v7, v5, v6

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v7

    sget-object v8, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    invoke-virtual {v7, v8, v4, v3}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v4

    sget-object v7, Lcom/autonavi/xm/navigation/server/GCoordConvert;->GCC_SCR_TO_GEO:Lcom/autonavi/xm/navigation/server/GCoordConvert;

    invoke-virtual {v4, v7, v5, v6}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoordConvert;[Lcom/autonavi/xm/navigation/server/GCoord;[Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x0

    aget-object v5, v6, v5

    invoke-virtual {v4, v3, v5}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/xmgd/logic/b;->s()Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v11

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v11, v0}, Lcom/autonavi/xmgd/naviservice/j;->a(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/xmgd/logic/b;->m()I

    move-result v3

    invoke-static {v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    move-result-object v4

    move v5, v3

    :goto_0
    if-ltz v5, :cond_d

    invoke-static {v5}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GZoomLevel;

    move-result-object v3

    iget v7, v3, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->zoomValue:I

    iget v8, v4, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->zoomValue:I

    div-int/2addr v7, v8

    mul-int/2addr v7, v10

    if-ge v6, v7, :cond_5

    :goto_1
    move-object/from16 v0, p1

    iget v5, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v7, v11, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    sub-int v12, v5, v7

    move-object/from16 v0, p1

    iget v5, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iget v7, v11, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    sub-int v13, v5, v7

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    const/4 v8, 0x0

    iget v9, v11, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    const/4 v14, 0x0

    invoke-virtual {v5, v7, v8, v9, v14}, Lcom/autonavi/xmgd/naviservice/j;->a(IIII)I

    move-result v14

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    const/4 v8, 0x0

    iget v9, v11, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    const/4 v15, 0x0

    invoke-virtual {v5, v7, v8, v9, v15}, Lcom/autonavi/xmgd/naviservice/j;->a(IIII)I

    move-result v15

    invoke-virtual {v4}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v5

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->ordinal()I

    move-result v7

    sub-int v16, v5, v7

    iget v5, v3, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->zoomValue:I

    iget v7, v4, Lcom/autonavi/xm/navigation/server/map/GZoomLevel;->zoomValue:I

    div-int/2addr v5, v7

    mul-int/2addr v5, v10

    if-eqz v16, :cond_6

    mul-int/lit8 v7, v16, 0x8

    mul-int/lit8 v6, v6, 0xf

    div-int v5, v6, v5

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    :goto_2
    const/4 v5, -0x1

    if-lez v12, :cond_c

    const/4 v5, 0x1

    move v9, v5

    :goto_3
    const/4 v5, -0x1

    if-lez v13, :cond_1

    const/4 v5, 0x1

    :cond_1
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v7, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    if-ge v6, v7, :cond_b

    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    const/16 v7, 0xe

    move-object/from16 v0, v17

    iput v7, v0, Landroid/os/Message;->what:I

    if-lt v14, v10, :cond_2

    if-ge v15, v10, :cond_7

    :cond_2
    mul-int v7, v12, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    div-int/2addr v7, v8

    iget v8, v11, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    add-int/2addr v8, v7

    mul-int v7, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    move/from16 v18, v0

    div-int v7, v7, v18

    iget v0, v11, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move/from16 v18, v0

    add-int v7, v7, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3

    move-object/from16 v0, p1

    iget v8, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :cond_3
    move-object/from16 v0, v17

    iput v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/os/Message;->arg2:I

    :goto_5
    if-eq v3, v4, :cond_4

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v8

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v7, v8

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const-wide/16 v18, 0x32

    int-to-long v0, v6

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iput v5, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    goto/16 :goto_2

    :cond_7
    mul-int/lit8 v7, v16, 0x4

    if-ge v6, v7, :cond_8

    div-int/lit8 v7, v10, 0x2

    iget v8, v11, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    mul-int v18, v7, v6

    mul-int v18, v18, v9

    mul-int/lit8 v19, v16, 0x4

    div-int v18, v18, v19

    add-int v8, v8, v18

    iget v0, v11, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move/from16 v18, v0

    mul-int/2addr v7, v6

    mul-int/2addr v7, v5

    mul-int/lit8 v19, v16, 0x4

    div-int v7, v7, v19

    add-int v7, v7, v18

    move-object/from16 v0, v17

    iput v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/os/Message;->arg2:I

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    mul-int/lit8 v8, v16, 0x4

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_a

    div-int/lit8 v7, v10, 0x2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v18, v18, v6

    mul-int v18, v18, v7

    mul-int v18, v18, v9

    mul-int/lit8 v19, v16, 0x4

    div-int v18, v18, v19

    sub-int v8, v8, v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v19, v19, v6

    mul-int v7, v7, v19

    mul-int/2addr v7, v5

    mul-int/lit8 v19, v16, 0x4

    div-int v7, v7, v19

    sub-int v7, v18, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_9

    move-object/from16 v0, p1

    iget v8, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    :cond_9
    move-object/from16 v0, v17

    iput v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v7, v0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    mul-int/lit8 v8, v16, 0x8

    sub-int/2addr v7, v8

    sub-int v8, v12, v10

    mul-int/lit8 v18, v16, 0x4

    sub-int v18, v6, v18

    mul-int v8, v8, v18

    div-int/2addr v8, v7

    iget v0, v11, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    move/from16 v18, v0

    add-int v8, v8, v18

    div-int/lit8 v18, v10, 0x2

    mul-int v18, v18, v9

    add-int v8, v8, v18

    sub-int v18, v13, v10

    mul-int/lit8 v19, v16, 0x4

    sub-int v19, v6, v19

    mul-int v18, v18, v19

    div-int v7, v18, v7

    iget v0, v11, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    move/from16 v18, v0

    add-int v7, v7, v18

    div-int/lit8 v18, v10, 0x2

    mul-int v18, v18, v5

    add-int v7, v7, v18

    move-object/from16 v0, v17

    iput v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_5

    :cond_b
    return-void

    :cond_c
    move v9, v5

    goto/16 :goto_3

    :cond_d
    move-object v3, v4

    goto/16 :goto_1
.end method

.method private a(Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/ck;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->U(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->e()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->y(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/map/GMoveMap;-><init>()V

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, p1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v3, p1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_GEO_DIRECT:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, p1, p2}, Lcom/autonavi/xmgd/navigator/Map;->b(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/ck;->d:Z

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->d()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->V(Lcom/autonavi/xmgd/navigator/Map;)I

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xm/navigation/server/GCoord;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    iget v4, p0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private a(Lcom/autonavi/xmgd/e/k;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Lcom/autonavi/xmgd/e/k;ZZ)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/ck;->d:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->r(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/b;->e()Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/map/GMapViewMode;->GMAPVIEW_MODE_3D:Lcom/autonavi/xm/navigation/server/map/GMapViewMode;

    if-eq v1, v2, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    new-instance v1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;

    invoke-direct {v1}, Lcom/autonavi/xm/navigation/server/map/GMoveMap;-><init>()V

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-direct {v2, v3, v0}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v2, v1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->deltaCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;->MOVEMAP_OP_GEO_DIRECT:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iput-object v0, v1, Lcom/autonavi/xm/navigation/server/map/GMoveMap;->eOP:Lcom/autonavi/xm/navigation/server/map/GMoveMapOp;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/map/GMoveMap;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;Lcom/autonavi/xmgd/e/k;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/ck;->d:Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->T(Lcom/autonavi/xmgd/navigator/Map;)I

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xm/navigation/server/GCoord;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    iget v4, p0, Lcom/autonavi/xmgd/navigator/ck;->c:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->f()V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/ck;Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/ck;Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/ck;->b(Lcom/autonavi/xmgd/e/k;)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/ck;Lcom/autonavi/xmgd/e/k;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xmgd/e/k;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/ck;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/ck;->a([I)V

    return-void
.end method

.method private a([I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/ck;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/navigator/ck;->d:Z

    return p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private b(Lcom/autonavi/xmgd/e/k;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->e()V

    return-void
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/ck;Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/ck;->a(Lcom/autonavi/xmgd/e/k;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private c(Lcom/autonavi/xmgd/e/k;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->i()V

    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/ck;Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/ck;->c(Lcom/autonavi/xmgd/e/k;)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->b:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->J(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/cz;->b()V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->g()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/ck;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/ck;->d:Z

    return v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->c()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic h(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->a()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ck;->a:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic i(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->b()V

    return-void
.end method

.method static synthetic j(Lcom/autonavi/xmgd/navigator/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ck;->d()V

    return-void
.end method
