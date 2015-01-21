.class Lcom/autonavi/xmgd/navigator/bc;
.super Lcom/autonavi/xmgd/view/GDMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bc;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bc;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/bc;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    const-class v3, Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MainMenu;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bc;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->finish()V

    return-void
.end method
