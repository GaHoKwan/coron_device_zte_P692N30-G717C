.class public Lcom/autonavi/xmgd/naviservice/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;


# static fields
.field private static a:Lcom/autonavi/xmgd/naviservice/h;


# instance fields
.field private b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

.field private c:Z

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/naviservice/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/naviservice/h;->a:Lcom/autonavi/xmgd/naviservice/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/h;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-virtual {v0, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/naviservice/h;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/naviservice/h;->a:Lcom/autonavi/xmgd/naviservice/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/naviservice/h;

    invoke-direct {v0}, Lcom/autonavi/xmgd/naviservice/h;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/naviservice/h;->a:Lcom/autonavi/xmgd/naviservice/h;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/naviservice/h;->a:Lcom/autonavi/xmgd/naviservice/h;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/h;->a:Lcom/autonavi/xmgd/naviservice/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/naviservice/h;->a:Lcom/autonavi/xmgd/naviservice/h;

    iput-object v1, v0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    sget-object v0, Lcom/autonavi/xmgd/naviservice/h;->a:Lcom/autonavi/xmgd/naviservice/h;

    iget-object v0, v0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-object v1, Lcom/autonavi/xmgd/naviservice/h;->a:Lcom/autonavi/xmgd/naviservice/h;

    :cond_0
    return-void
.end method


# virtual methods
.method public a([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->GDBL_GetGPSInfo([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_FAILED:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-virtual {v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->GDBL_GetSatelliteInfo([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/xmgd/naviservice/i;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/autonavi/xmgd/naviservice/i;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->b:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->startRequest()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/h;->c:Z

    return v0
.end method

.method public onDeviate()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/i;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/i;->G()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/i;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/naviservice/i;->a(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLocationUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/i;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/i;->F()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStatusChanged(II)V
    .locals 2

    if-ne p1, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/h;->c:Z

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/naviservice/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/naviservice/i;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/naviservice/i;->a(II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/naviservice/h;->c:Z

    goto :goto_0
.end method
