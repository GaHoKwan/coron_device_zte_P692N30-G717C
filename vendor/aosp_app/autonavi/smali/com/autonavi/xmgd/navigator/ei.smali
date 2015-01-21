.class Lcom/autonavi/xmgd/navigator/ei;
.super Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ei;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ei;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->showDialog(I)V

    return-void
.end method

.method private a(I)V
    .locals 2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    const-string v0, "LLJ"

    const-string v1, "setting"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    return-void
.end method


# virtual methods
.method public getSecondTitle()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->a:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ei;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public onItemClick()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ei;->a()V

    return-void
.end method

.method public onItemClickInCarMode()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v2

    sget v3, Lcom/autonavi/xmgd/naviservice/l;->a:I

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v2

    if-ne v2, v0, :cond_4

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    const-string v0, "LLJ"

    const-string v1, "lValue == 2"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    const-string v1, "LLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lValue == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/ei;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ei;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ei;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(Lcom/autonavi/xmgd/navigator/NaviSetting;I)V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    const-string v0, "LLJ"

    const-string v1, "onItemClickInCarMode"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-ne v2, v1, :cond_5

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    const-string v1, "LLJ"

    const-string v2, "lValue == 1"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v2, :cond_7

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    const-string v0, "LLJ"

    const-string v2, "lValue == 0"

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method
