.class Lcom/autonavi/xmgd/navigator/az;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/az;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

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

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/utility/ADialogListener;->onListViewItemSelected(ILjava/util/List;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "sms_body"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/az;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    const v3, 0x7f0701c5

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/navigator/MainMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/az;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/az;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/MainMenu;->dismissDialog(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/az;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/BlueToothSender;->sendSelfApk(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/az;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/MainMenu;->dismissDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
