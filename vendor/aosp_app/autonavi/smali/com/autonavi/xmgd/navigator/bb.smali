.class Lcom/autonavi/xmgd/navigator/bb;
.super Lcom/autonavi/xmgd/view/GDMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bb;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/bb;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    const-class v2, Lcom/autonavi/xmgd/navigator/GPSInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/naviservice/h;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v6, [Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autonavi/xmgd/naviservice/h;->a([Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_0

    const-string v3, "satelliteCount"

    aget-object v2, v2, v5

    iget v2, v2, Lcom/autonavi/xm/navigation/server/location/GSatelliteInfo;->nNumberOfInView:I

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    new-array v2, v6, [Lcom/autonavi/xm/navigation/server/location/GGpsInfo;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/h;->a()Lcom/autonavi/xmgd/naviservice/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autonavi/xmgd/naviservice/h;->a([Lcom/autonavi/xm/navigation/server/location/GGpsInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_1

    const-string v3, "info"

    aget-object v2, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/bb;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/GPSInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    return-void
.end method
