.class Lir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liq;


# direct methods
.method constructor <init>(Liq;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lir;->a:Liq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lir;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 543
    iget-object v0, p0, Lir;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lir;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lir;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 547
    iget-object v1, p0, Lir;->a:Liq;

    iget-object v1, v1, Liq;->a:Lim;

    invoke-static {v1}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 548
    iget-object v1, p0, Lir;->a:Liq;

    iget-object v1, v1, Liq;->a:Lim;

    invoke-static {v1}, Lim;->b(Lim;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lir;->a:Liq;

    iget-object v1, v1, Liq;->a:Lim;

    invoke-static {v1}, Lim;->b(Lim;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 550
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 551
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 552
    iget-object v0, p0, Lir;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    :cond_1
    iget-object v0, p0, Lir;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ca:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ca:I

    .line 555
    iget-object v0, p0, Lir;->a:Liq;

    iget-object v0, v0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fc:I

    .line 557
    :cond_2
    return-void
.end method
