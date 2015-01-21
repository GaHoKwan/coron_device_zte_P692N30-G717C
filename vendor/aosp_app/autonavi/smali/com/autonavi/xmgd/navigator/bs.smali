.class Lcom/autonavi/xmgd/navigator/bs;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bs;->a:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->dismissDialog(I)V

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->J(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/cz;->a()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->K(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/ct;->b()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bs;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/ck;->b(Lcom/autonavi/xmgd/navigator/ck;)V

    return-void
.end method
