.class public Lcom/plugin/installapk/ar/util/PathObjectInfo;
.super Ljava/lang/Object;


# static fields
.field public static final ANGLE:Ljava/lang/String; = "PATH_ANGLE"

.field public static final ARROW_X:Ljava/lang/String; = "PATH_ARROW_X"

.field public static final ARROW_Y:Ljava/lang/String; = "PATH_ARROW_Y"

.field public static final LINES:Ljava/lang/String; = "PATH_LINES"

.field public static final LINE_NUM:Ljava/lang/String; = "PATH_LINE_NUM"

.field public static final POINTS:Ljava/lang/String; = "PATH_POINTS"

.field public static final POINT_NUM:Ljava/lang/String; = "PATH_POINT_NUM"

.field public static final TAILS:Ljava/lang/String; = "PATH_TAILS"

.field public static final TAIL_NUM:Ljava/lang/String; = "PATH_TAIL_NUM"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleGPathObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GPathObject;
    .locals 11

    const/4 v9, 0x0

    const-string v0, "PATH_POINT_NUM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "PATH_POINTS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-array v2, v1, [Lcom/autonavi/xm/navigation/server/map/GPointObject;

    move v3, v9

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/plugin/installapk/ar/util/PointObjectInfo;->assembleGPointObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GPointObject;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const-string v0, "PATH_LINE_NUM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "PATH_LINES"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    new-array v4, v3, [Lcom/autonavi/xm/navigation/server/map/GLineObject;

    move v5, v9

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/plugin/installapk/ar/util/LineObjectInfo;->assembleGLineObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GLineObject;

    move-result-object v0

    aput-object v0, v4, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_1
    const-string v0, "PATH_ARROW_X"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, "PATH_ARROW_Y"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    new-instance v5, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v5, v0, v6}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    const-string v0, "PATH_ANGLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "PATH_TAIL_NUM"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "PATH_TAILS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    new-array v8, v7, [Lcom/autonavi/xm/navigation/server/map/GLineObject;

    :goto_2
    if-ge v9, v7, :cond_2

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/plugin/installapk/ar/util/LineObjectInfo;->assembleGLineObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GLineObject;

    move-result-object v0

    aput-object v0, v8, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GPathObject;

    invoke-direct/range {v0 .. v8}, Lcom/autonavi/xm/navigation/server/map/GPathObject;-><init>(I[Lcom/autonavi/xm/navigation/server/map/GPointObject;I[Lcom/autonavi/xm/navigation/server/map/GLineObject;Lcom/autonavi/xm/navigation/server/GCoord;II[Lcom/autonavi/xm/navigation/server/map/GLineObject;)V

    return-object v0
.end method

.method public static disperseGPathObject(Lcom/autonavi/xm/navigation/server/map/GPathObject;)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->lPointNum:I

    const-string v1, "PATH_POINT_NUM"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pPoint:[Lcom/autonavi/xm/navigation/server/map/GPointObject;

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
    const-string v1, "PATH_POINTS"

    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->lLineNum:I

    const-string v1, "PATH_LINE_NUM"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pLine:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v6, v4, v1

    invoke-static {v6}, Lcom/plugin/installapk/ar/util/LineObjectInfo;->disperseGLineObject(Lcom/autonavi/xm/navigation/server/map/GLineObject;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "PATH_LINES"

    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "PATH_ARROW_X"

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->ptArrow:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PATH_ARROW_Y"

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->ptArrow:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PATH_ANGLE"

    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->nAngle:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->lTailNum:I

    const-string v3, "PATH_TAIL_NUM"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/map/GPathObject;->pArrowTail:[Lcom/autonavi/xm/navigation/server/map/GLineObject;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v0, v1, :cond_2

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/plugin/installapk/ar/util/LineObjectInfo;->disperseGLineObject(Lcom/autonavi/xm/navigation/server/map/GLineObject;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "PATH_TAILS"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v2
.end method
