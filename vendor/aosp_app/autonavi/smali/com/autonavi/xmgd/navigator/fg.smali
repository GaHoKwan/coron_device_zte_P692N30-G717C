.class Lcom/autonavi/xmgd/navigator/fg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/naviservice/m;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/fg;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Lcom/autonavi/xmgd/navigator/ei;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/fg;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    return-void
.end method


# virtual methods
.method public onNaviDayNightChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fg;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/fg;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/fg;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/NaviSetting;->i(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;I)V

    return-void
.end method

.method public onNaviSettingChanged(III)V
    .locals 3

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->b:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fg;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/fg;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/fg;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/NaviSetting;->h(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;I)V

    :cond_0
    return-void
.end method
