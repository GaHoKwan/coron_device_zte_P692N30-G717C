.class public Lcom/plugin/installapk/ar/util/GCoordInfo;
.super Ljava/lang/Object;


# static fields
.field public static final X:Ljava/lang/String; = "GCOORD_X"

.field public static final Y:Ljava/lang/String; = "GCOORD_Y"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleGCoord(Landroid/os/Bundle;)Lcom/autonavi/xm/navigation/server/GCoord;
    .locals 3

    const-string v0, "GCOORD_X"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "GCOORD_Y"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v2, v0, v1}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    return-object v2
.end method

.method public static disperseGCoord(Lcom/autonavi/xm/navigation/server/GCoord;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GCOORD_X"

    iget v2, p0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "GCOORD_Y"

    iget v2, p0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
