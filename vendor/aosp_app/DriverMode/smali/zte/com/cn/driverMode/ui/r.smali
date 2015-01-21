.class final Lzte/com/cn/driverMode/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "DMConfirmDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click RightBtnListener---curConfirmType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget v2, v2, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget v0, v0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->k:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->finish()V

    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.ConfirmDownloadPoiGrammar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action"

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->j:Landroid/content/Context;

    const v3, 0x7f0801b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "DMConfirmDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click RightBtnListener---provinceDelete="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "PROVINCE"

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->j:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->l(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.ConfirmUpdatePoiGrammar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/r;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
