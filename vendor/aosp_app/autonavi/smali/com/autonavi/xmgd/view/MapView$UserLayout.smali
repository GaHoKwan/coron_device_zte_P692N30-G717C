.class final Lcom/autonavi/xmgd/view/MapView$UserLayout;
.super Ljava/lang/Object;


# instance fields
.field lat:I

.field lon:I

.field objId:I

.field resId:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->resId:I

    iput p4, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->objId:I

    iput p2, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lon:I

    iput p3, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lat:I

    return-void
.end method


# virtual methods
.method getIntArray()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->resId:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->objId:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lon:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lat:I

    aput v2, v0, v1

    return-object v0
.end method

.method setIntArray([I)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->resId:I

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->objId:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lon:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/MapView$UserLayout;->lat:I

    return-void
.end method
