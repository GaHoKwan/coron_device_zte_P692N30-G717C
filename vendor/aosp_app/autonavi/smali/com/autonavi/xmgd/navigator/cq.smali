.class Lcom/autonavi/xmgd/navigator/cq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/ad;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    invoke-static {p1}, Lcom/autonavi/xmgd/logic/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/autonavi/xmgd/logic/ac;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->n(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/j;->m()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->H(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->I(Lcom/autonavi/xmgd/navigator/Map;)V

    invoke-static {p1}, Lcom/autonavi/xmgd/logic/ac;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/autonavi/xmgd/logic/ac;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->k(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->J(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/cz;->a()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->K(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/ct;->b()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->C(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->C(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->C(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getPluginExist_Voice()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/autonavi/xmgd/logic/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->L(Lcom/autonavi/xmgd/navigator/Map;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cq;->a:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->L(Lcom/autonavi/xmgd/navigator/Map;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
