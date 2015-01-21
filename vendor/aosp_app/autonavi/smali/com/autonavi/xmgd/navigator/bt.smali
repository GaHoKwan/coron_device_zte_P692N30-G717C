.class Lcom/autonavi/xmgd/navigator/bt;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bt;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSureClicked(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bt;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->D()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->nNumberOfList:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bt;->a:Lcom/autonavi/xmgd/navigator/Map;

    const-class v3, Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget v0, v1, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->nNumberOfList:I

    new-array v4, v0, [I

    iget v0, v1, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->nNumberOfList:I

    iget-object v5, v1, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->pAdminCodeList:[I

    array-length v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    iget-object v6, v1, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->pAdminCodeList:[I

    aget v6, v6, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "admincode"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "bundle"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bt;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/navigator/Map;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
