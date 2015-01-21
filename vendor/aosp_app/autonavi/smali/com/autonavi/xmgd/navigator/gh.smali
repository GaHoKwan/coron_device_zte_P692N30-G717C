.class Lcom/autonavi/xmgd/navigator/gh;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/RoutesSet;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/RoutesSet;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/gh;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gh;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->dismissDialog(I)V

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

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gh;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c(Lcom/autonavi/xmgd/navigator/RoutesSet;)V

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xmgd/e/k;

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/af;->a([Lcom/autonavi/xmgd/e/k;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/gh;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/navigator/RoutesSet;[Lcom/autonavi/xmgd/e/k;)[Lcom/autonavi/xmgd/e/k;

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/af;->a(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gh;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->d(Lcom/autonavi/xmgd/navigator/RoutesSet;)V

    return-void
.end method
