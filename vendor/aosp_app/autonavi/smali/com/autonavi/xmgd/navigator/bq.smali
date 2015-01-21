.class Lcom/autonavi/xmgd/navigator/bq;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bq;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->removeDialog(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.navigator.broadcast.APP_READY_TO_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/bq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->u(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method
