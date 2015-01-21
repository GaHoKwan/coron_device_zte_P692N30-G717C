.class public Lcom/plugin/installapk/ar/util/LineObjectInfo;
.super Ljava/lang/Object;


# static fields
.field public static final COUNT:Ljava/lang/String; = "LINE_OBJECT_COUNT"

.field public static final LEVEL:Ljava/lang/String; = "LINE_OBJECT_LEVEL"

.field public static final PNT_ARRAY:Ljava/lang/String; = "LINE_OBJECT_PNT_ARRAY"

.field public static final TYPE:Ljava/lang/String; = "LINE_OBJECT_TYPE"

.field public static final TYPEDT:Ljava/lang/String; = "LINE_OBJECT_TYPEDT"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleGLineObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GLineObject;
    .locals 8

    const-string v0, "LINE_OBJECT_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    const-string v0, "LINE_OBJECT_TYPEDT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    const-string v0, "LINE_OBJECT_LEVEL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v3

    const-string v0, "LINE_OBJECT_COUNT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "LINE_OBJECT_PNT_ARRAY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    new-array v5, v4, [Lcom/autonavi/xm/navigation/server/GCoord;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v4, :cond_0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/plugin/installapk/ar/util/GCoordInfo;->assembleGCoord(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/GCoord;

    move-result-object v0

    aput-object v0, v5, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLineObject;

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xm/navigation/server/map/GLineObject;-><init>(BBBI[Lcom/autonavi/xm/navigation/server/GCoord;)V

    return-object v0
.end method

.method public static disperseGLineObject(Lcom/autonavi/xm/navigation/server/map/GLineObject;)Landroid/os/Bundle;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "LINE_OBJECT_TYPE"

    iget-byte v2, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->cType:B

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v0, "LINE_OBJECT_TYPEDT"

    iget-byte v2, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->cTypeDt:B

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v0, "LINE_OBJECT_LEVEL"

    iget-byte v2, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->cZLevel:B

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v0, "LINE_OBJECT_COUNT"

    iget v2, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->nCount:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->nCount:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/autonavi/xm/navigation/server/map/GLineObject;->pPntArray:[Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/plugin/installapk/ar/util/GCoordInfo;->disperseGCoord(Lcom/autonavi/xm/navigation/server/GCoord;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "LINE_OBJECT_PNT_ARRAY"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto :goto_0
.end method
