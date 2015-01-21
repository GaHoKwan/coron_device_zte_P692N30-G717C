.class Lcom/autonavi/xmgd/update/n;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/update/SoftUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/update/SoftUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/SoftUpdate;->a(Lcom/autonavi/xmgd/update/SoftUpdate;)Lcom/autonavi/xmgd/update/f;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/xmgd/update/f;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/SoftUpdate;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/SoftUpdate;->finish()V

    iget-object v0, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.plugin.action.exit_app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/update/SoftUpdate;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-static {v2}, Lcom/autonavi/xmgd/update/SoftUpdate;->a(Lcom/autonavi/xmgd/update/SoftUpdate;)Lcom/autonavi/xmgd/update/f;

    move-result-object v2

    iget-object v2, v2, Lcom/autonavi/xmgd/update/f;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/update/SoftUpdate;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/SoftUpdate;->a(Lcom/autonavi/xmgd/update/SoftUpdate;)Lcom/autonavi/xmgd/update/f;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/xmgd/update/f;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/SoftUpdate;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/SoftUpdate;->finish()V

    iget-object v0, p0, Lcom/autonavi/xmgd/update/n;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.plugin.action.exit_app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/update/SoftUpdate;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
