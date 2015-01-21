.class public Lcom/autonavi/xmgd/navigator/jk;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/autonavi/xmgd/navigator/SetDataPath;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Lcom/autonavi/xmgd/navigator/SetDataPath;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Lcom/autonavi/xmgd/navigator/SetDataPath;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->dismissDialog(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Lcom/autonavi/xmgd/navigator/SetDataPath;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Lcom/autonavi/xmgd/navigator/SetDataPath;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->dismissDialog(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->a(Lcom/autonavi/xmgd/navigator/SetDataPath;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->b(Lcom/autonavi/xmgd/navigator/SetDataPath;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jk;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/SetDataPath;->showDialog(I)V

    goto :goto_0
.end method
