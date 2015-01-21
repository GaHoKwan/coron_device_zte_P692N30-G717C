.class Lcom/autonavi/xmgd/navigator/es;
.super Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/es;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSecondTitle()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->b:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/es;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_DAY:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_NIGHT:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    aget-object v0, v2, v0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->GMAP_DAYNIGHT_MODE_AUTO:Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GMapDayNightMode;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    goto :goto_0
.end method

.method public onItemClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/es;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/es;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->showDialog(I)V

    goto :goto_0
.end method

.method public onItemClickInCarMode()V
    .locals 4

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/es;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v2

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->b:I

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v1

    sget v2, Lcom/autonavi/xmgd/naviservice/l;->b:I

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method
