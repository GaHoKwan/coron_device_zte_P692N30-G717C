.class Lcom/autonavi/xmgd/navigator/ba;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ba;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onListViewItemSelected(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/utility/ADialogListener;->onListViewItemSelected(ILjava/util/List;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ba;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    const-class v2, Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/autonavi/xmgd/update/p;->a()Lcom/autonavi/xmgd/update/p;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/autonavi/xmgd/update/p;->a(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ba;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ba;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/MainMenu;->dismissDialog(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ba;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    const-class v2, Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/autonavi/xmgd/update/e;->a()Lcom/autonavi/xmgd/update/e;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/autonavi/xmgd/update/e;->a(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ba;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ba;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/MainMenu;->dismissDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
