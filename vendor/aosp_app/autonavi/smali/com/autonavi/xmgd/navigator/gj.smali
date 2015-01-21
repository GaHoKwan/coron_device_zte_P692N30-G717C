.class public Lcom/autonavi/xmgd/navigator/gj;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/autonavi/xmgd/navigator/RoutesSet;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/RoutesSet;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/gj;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gj;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->d(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V

    return-void
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "linrId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/gj;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/navigator/RoutesSet;->removeDialog(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/gj;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->showDialog(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gj;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->e(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V

    return-void
.end method
