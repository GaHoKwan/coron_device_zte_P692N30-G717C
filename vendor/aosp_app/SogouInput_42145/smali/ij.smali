.class Lij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lih;


# direct methods
.method constructor <init>(Lih;)V
    .locals 0
    .parameter

    .prologue
    .line 1610
    iput-object p1, p0, Lij;->a:Lih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1614
    iget-object v0, p0, Lij;->a:Lih;

    iget-object v0, v0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->g(Lhr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lij;->a:Lih;

    iget-object v0, v0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1616
    iget-object v0, p0, Lij;->a:Lih;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lih;->a(Lih;I)I

    .line 1617
    iget-object v0, p0, Lij;->a:Lih;

    iget-object v0, v0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lij;->a:Lih;

    invoke-static {v1}, Lih;->a(Lih;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1618
    iget-object v1, p0, Lij;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    iget-object v1, p0, Lij;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 1620
    if-eqz v0, :cond_0

    .line 1621
    iget-boolean v1, v0, Lhk;->f:Z

    if-eqz v1, :cond_0

    .line 1622
    iget-object v1, v0, Lhk;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1623
    iget-object v1, p0, Lij;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1, v0}, Lhr;->a(Lhr;Lhk;)V

    .line 1625
    :cond_2
    iget-object v1, p0, Lij;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->b(Lhr;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1626
    iget-object v1, p0, Lij;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->b(Lhr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1627
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1628
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1629
    iget-object v0, p0, Lij;->a:Lih;

    iget-object v0, v0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->b(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1631
    :cond_3
    iget-object v0, p0, Lij;->a:Lih;

    iget-object v0, v0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ca:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ca:I

    goto/16 :goto_0
.end method
