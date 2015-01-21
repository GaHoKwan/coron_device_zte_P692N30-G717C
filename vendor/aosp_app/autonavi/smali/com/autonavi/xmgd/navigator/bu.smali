.class Lcom/autonavi/xmgd/navigator/bu;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bu;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bu;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->T()V

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

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bu;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->U()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bu;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->T()V

    return-void
.end method
