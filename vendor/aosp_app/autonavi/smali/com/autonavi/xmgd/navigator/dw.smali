.class Lcom/autonavi/xmgd/navigator/dw;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dw;->b:Lcom/autonavi/xmgd/navigator/MyNavigate;

    iput p2, p0, Lcom/autonavi/xmgd/navigator/dw;->a:I

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    return-void
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

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/xmgd/navigator/dw;->a:I

    aput v2, v0, v1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/dw;->b:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const-class v3, Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "admincode"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "bundle"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dw;->b:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
