.class Lcom/autonavi/xmgd/update/a;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/update/MapdataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/update/MapdataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->a(Lcom/autonavi/xmgd/update/MapdataUpdate;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget v0, v0, Lcom/autonavi/xmgd/update/j;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->finish()V

    iget-object v0, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.plugin.action.exit_app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/update/MapdataUpdate;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 4
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

    iget-object v1, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    const-class v2, Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "updateMap"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "updateMapVersion"

    iget-object v3, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-static {v3}, Lcom/autonavi/xmgd/update/MapdataUpdate;->a(Lcom/autonavi/xmgd/update/MapdataUpdate;)Lcom/autonavi/xmgd/update/j;

    move-result-object v3

    iget-object v3, v3, Lcom/autonavi/xmgd/update/j;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    iget-object v3, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-static {v3}, Lcom/autonavi/xmgd/update/MapdataUpdate;->a(Lcom/autonavi/xmgd/update/MapdataUpdate;)Lcom/autonavi/xmgd/update/j;

    move-result-object v3

    iget v3, v3, Lcom/autonavi/xmgd/update/j;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resversion"

    iget-object v3, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-static {v3}, Lcom/autonavi/xmgd/update/MapdataUpdate;->a(Lcom/autonavi/xmgd/update/MapdataUpdate;)Lcom/autonavi/xmgd/update/j;

    move-result-object v3

    iget v3, v3, Lcom/autonavi/xmgd/update/j;->f:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/update/a;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->finish()V

    return-void
.end method
