.class Lcom/autonavi/xmgd/navigator/bd;
.super Lcom/autonavi/xmgd/view/GDMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bd;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/bd;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    const-class v2, Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/update/e;->a(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/bd;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
