.class Lcom/autonavi/xmgd/logic/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/naviservice/f;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/logic/MapLogicImpl;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->k()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->K()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v1, v1, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->f(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 2

    const/4 v1, 0x1

    sget v0, Lcom/autonavi/xmgd/naviservice/l;->k:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/autonavi/xmgd/logic/c;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/autonavi/xmgd/naviservice/l;->e:I

    if-ne p1, v0, :cond_0

    if-ne p3, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Z)V

    goto :goto_0
.end method

.method public a(ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(ILcom/autonavi/xm/navigation/server/GStatus;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/logic/c;->a(ILcom/autonavi/xm/navigation/server/GStatus;)V

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->t()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Landroid/location/Location;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GSpeachText;->GSPEACH_TEXT_SAFE:Lcom/autonavi/xm/navigation/server/GSpeachText;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/GSpeachText;->ordinal()I

    move-result v0

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GSpeachText;->GSPEACH_TEXT_USERSAFE:Lcom/autonavi/xm/navigation/server/GSpeachText;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/GSpeachText;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ah()V

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/GSpeachText;->GSPEACH_TEXT_GUIDE_END:Lcom/autonavi/xm/navigation/server/GSpeachText;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/GSpeachText;->ordinal()I

    move-result v0

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/autonavi/xm/navigation/server/GSpeachText;->GSPEACH_TEXT_VIA:Lcom/autonavi/xm/navigation/server/GSpeachText;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/server/GSpeachText;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Ljava/lang/String;ZZ)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, p1, v2, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->l()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(II)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ai()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ai()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ai()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->c(II)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->m()V

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->n()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->B()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/logic/c;->c(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->o()V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->aj()V

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->aj()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->b(Lcom/autonavi/xmgd/logic/MapLogicImpl;)Lcom/autonavi/xmgd/logic/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/c;->o()V

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->aj()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->i(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->aj()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->j(Lcom/autonavi/xmgd/logic/MapLogicImpl;)V

    goto :goto_1
.end method

.method public g()V
    .locals 4

    const v2, 0x7f0700ab

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ag()V

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/y;->a:Lcom/autonavi/xmgd/logic/MapLogicImpl;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method
