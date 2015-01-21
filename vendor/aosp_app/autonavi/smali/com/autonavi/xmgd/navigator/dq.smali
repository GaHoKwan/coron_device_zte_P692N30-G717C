.class Lcom/autonavi/xmgd/navigator/dq;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dq;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

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

    const v3, 0x7f07003f

    const v2, 0x7f07003e

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dq;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dq;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->g(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dq;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/b;->O()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/b;->e(Lcom/autonavi/xmgd/e/k;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dq;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->g(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dq;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->b(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dq;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->g(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dq;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->c(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
