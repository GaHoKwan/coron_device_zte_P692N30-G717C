.class Lcom/autonavi/xmgd/navigator/el;
.super Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/el;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->k:I

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    return-void
.end method


# virtual methods
.method public getSecondTitle()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->k:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/el;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-ne v0, v3, :cond_0

    aget-object v0, v1, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public onItemClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/el;->onItemClickInCarMode()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/el;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;Z)Z

    return-void
.end method

.method public onItemClickInCarMode()V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->k:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/el;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/el;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/el;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method