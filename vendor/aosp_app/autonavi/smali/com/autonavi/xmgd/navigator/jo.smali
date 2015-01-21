.class Lcom/autonavi/xmgd/navigator/jo;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Start;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Start;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jo;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->e()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jo;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->e()Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jo;->a:Lcom/autonavi/xmgd/navigator/Start;

    const-class v2, Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v2, v3

    const-string v3, "admincode"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/jo;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Start;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jo;->a:Lcom/autonavi/xmgd/navigator/Start;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Start;->finish()V

    return-void
.end method
