.class Lcom/autonavi/xmgd/navigator/ds;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onDismiss()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

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

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->s(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700a4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700a5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/c;->a()Lcom/autonavi/xmgd/e/c;

    move-result-object v2

    iput-object v1, v2, Lcom/autonavi/xmgd/e/c;->szName:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/c;

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/e/c;Lcom/autonavi/xmgd/e/c;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ds;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0
.end method
