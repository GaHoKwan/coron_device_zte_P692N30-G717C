.class public Lcom/plugin/installapk/ar/util/PointObjectInfo;
.super Ljava/lang/Object;


# static fields
.field public static final LEVLE:Ljava/lang/String; = "POINT_OBJECT_LEVEL"

.field public static final NAME:Ljava/lang/String; = "POINT_OBJECT_NAME"

.field public static final PNT_X:Ljava/lang/String; = "POINT_OBJECT_PNT_X"

.field public static final PNT_Y:Ljava/lang/String; = "POINT_OBJECT_PNT_Y"

.field public static final PTNAME_X:Ljava/lang/String; = "POINT_OBJECT_PTNAME_X"

.field public static final PTNAME_Y:Ljava/lang/String; = "POINT_OBJECT_PTNAME_Y"

.field public static final REVER:Ljava/lang/String; = "POINT_OBJECT_REVER"

.field public static final TYPE:Ljava/lang/String; = "POINT_OBJECT_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleGPointObject(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/map/GPointObject;
    .locals 10

    const-string v0, "POINT_OBJECT_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "POINT_OBJECT_LEVEL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    const-string v0, "POINT_OBJECT_REVER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v3

    const-string v0, "POINT_OBJECT_PNT_X"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "POINT_OBJECT_PNT_Y"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "POINT_OBJECT_PTNAME_X"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "POINT_OBJECT_PTNAME_Y"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "POINT_OBJECT_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GPointObject;

    new-instance v4, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v4, v5, v7}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    new-instance v5, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v5, v8, v9}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xm/navigation/server/map/GPointObject;-><init>(IBBLcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;Ljava/lang/String;)V

    return-object v0
.end method

.method public static disperseGPointObject(Lcom/autonavi/xm/navigation/server/map/GPointObject;)Landroid/os/Bundle;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "POINT_OBJECT_TYPE"

    iget v2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->lType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "POINT_OBJECT_LEVEL"

    iget-byte v2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->cZLevel:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v1, "POINT_OBJECT_REVER"

    iget-byte v2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->cRever:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v1, "POINT_OBJECT_PNT_X"

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->ptPnt:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "POINT_OBJECT_PNT_Y"

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->ptPnt:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "POINT_OBJECT_PTNAME_X"

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->ptName:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "POINT_OBJECT_PTNAME_Y"

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->ptName:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "POINT_OBJECT_NAME"

    iget-object v2, p0, Lcom/autonavi/xm/navigation/server/map/GPointObject;->szName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
