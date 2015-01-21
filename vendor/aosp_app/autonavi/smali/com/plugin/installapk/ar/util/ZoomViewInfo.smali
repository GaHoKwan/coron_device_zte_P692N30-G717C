.class public Lcom/plugin/installapk/ar/util/ZoomViewInfo;
.super Ljava/lang/Object;


# static fields
.field public static final CAR_ANGLE:Ljava/lang/String; = "ZOOMVIEW_CAR_ANGLE"

.field public static final CAR_POS_X:Ljava/lang/String; = "ZOOMVIEW_CAR_POS_X"

.field public static final CAR_POS_Y:Ljava/lang/String; = "ZOOMVIEW_CAR_POS_Y"

.field public static final LINE_ARRAY:Ljava/lang/String; = "ZOOMVIEW_LINE_ARRAY"

.field public static final LINE_NUM:Ljava/lang/String; = "ZOOMVIEW_LINE_NUM"

.field public static final PATH:Ljava/lang/String; = "ZOOMVIEW_PATH"

.field public static final POINT_ARRAY:Ljava/lang/String; = "ZOOMVIEW_POINT_ARRAY"

.field public static final POINT_NUM:Ljava/lang/String; = "ZOOMVIEW_POINT_NUM"

.field public static final REMAIN_DIS:Ljava/lang/String; = "ZOOMVIEW_REMAIN_DIS"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleGZoomObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GZoomObject;
    .locals 11

    const/4 v6, 0x0

    const-string v0, "ZOOMVIEW_REMAIN_DIS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "ZOOMVIEW_POINT_NUM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "ZOOMVIEW_POINT_ARRAY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    new-array v3, v2, [Lcom/autonavi/xm/navigation/server/map/GPointObject;

    move v4, v6

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/plugin/installapk/ar/util/PointObjectInfo;->assembleGPointObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GPointObject;

    move-result-object v0

    aput-object v0, v3, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    const-string v0, "ZOOMVIEW_LINE_NUM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "ZOOMVIEW_LINE_ARRAY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    new-array v5, v4, [Lcom/autonavi/xm/navigation/server/map/GLineObject;

    :goto_1
    if-ge v6, v4, :cond_1

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/plugin/installapk/ar/util/LineObjectInfo;->assembleGLineObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GLineObject;

    move-result-object v0

    aput-object v0, v5, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    const-string v0, "ZOOMVIEW_PATH"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/plugin/installapk/ar/util/PathObjectInfo;->assembleGPathObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GPathObject;

    move-result-object v6

    const-string v0, "ZOOMVIEW_CAR_POS_X"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "ZOOMVIEW_CAR_POS_Y"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "ZOOMVIEW_CAR_ANGLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;

    new-instance v7, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v7, v9, v10}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-direct/range {v0 .. v8}, Lcom/autonavi/xm/navigation/server/map/GZoomObject;-><init>(II[Lcom/autonavi/xm/navigation/server/map/GPointObject;I[Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/map/GPathObject;Lcom/autonavi/xm/navigation/server/GCoord;I)V

    return-object v0
.end method

.method public static disperseGZoomObject(Lcom/autonavi/xm/navigation/server/map/GZoomObject;)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ZOOMVIEW_REMAIN_DIS"

    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lRemainDis:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lPointNum:I

    const-string v1, "ZOOMVIEW_POINT_NUM"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v4, v1

    invoke-static {v6}, Lcom/plugin/installapk/ar/util/PointObjectInfo;->disperseGPointObject(Lcom/autonavi/xm/navigation/server/map/GPointObject;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "ZOOMVIEW_POINT_ARRAY"

    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v1, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->lLineNum:I

    const-string v3, "ZOOMVIEW_LINE_NUM"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/plugin/installapk/ar/util/LineObjectInfo;->disperseGLineObject(Lcom/autonavi/xm/navigation/server/map/GLineObject;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ZOOMVIEW_LINE_ARRAY"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "ZOOMVIEW_PATH"

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->Path:Lcom/autonavi/xm/navigation/server/map/GPathObject;

    invoke-static {v1}, Lcom/plugin/installapk/ar/util/PathObjectInfo;->disperseGPathObject(Lcom/autonavi/xm/navigation/server/map/GPathObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "ZOOMVIEW_CAR_POS_X"

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->stCarPos:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ZOOMVIEW_CAR_POS_Y"

    iget-object v1, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->stCarPos:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ZOOMVIEW_CAR_ANGLE"

    iget v1, p0, Lcom/autonavi/xm/navigation/server/map/GZoomObject;->nCarAngle:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2
.end method
