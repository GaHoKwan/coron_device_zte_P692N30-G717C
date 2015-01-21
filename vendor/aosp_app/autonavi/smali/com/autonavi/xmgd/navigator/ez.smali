.class Lcom/autonavi/xmgd/navigator/ez;
.super Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ez;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    return-void
.end method


# virtual methods
.method public getSecondTitle()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->c:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ez;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_LOW:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_NORMAL:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    aget-object v0, v2, v0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_HIGH:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v0, 0x2

    aget-object v0, v2, v0

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_JUMP:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v3}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    goto :goto_0
.end method

.method public onItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ez;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->showDialog(I)V

    return-void
.end method

.method public onItemClickInCarMode()V
    .locals 5

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v3

    sget v4, Lcom/autonavi/xmgd/naviservice/l;->c:I

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/ez;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ez;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ez;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;I)V

    return-void

    :cond_0
    if-ne v3, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-ne v3, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method
