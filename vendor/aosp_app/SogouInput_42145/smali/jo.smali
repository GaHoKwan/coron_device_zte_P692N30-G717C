.class Ljo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljn;


# direct methods
.method constructor <init>(Ljn;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Ljo;->a:Ljn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Ljo;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lgw;

    move-result-object v0

    iget v0, v0, Lgw;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 835
    iget-object v0, p0, Ljo;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljo;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Ljo;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 838
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 840
    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 842
    :goto_0
    iget-object v1, v0, Lhk;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 843
    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    iget-object v2, v0, Lhk;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ljf;->a(Ljf;Ljava/lang/String;)Ljava/lang/String;

    .line 844
    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    iget-object v2, v0, Lhk;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Ljf;->b(Ljf;Ljava/lang/String;)Ljava/lang/String;

    .line 845
    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->k(Ljf;)V

    .line 846
    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    iget-object v0, v0, Lhk;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Ljf;->b(Ljf;Ljava/lang/String;)V

    .line 856
    :cond_1
    :goto_1
    iget-object v0, p0, Ljo;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ca:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ca:I

    .line 858
    :cond_2
    return-void

    .line 841
    :cond_3
    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->c(Ljf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    goto :goto_0

    .line 850
    :cond_4
    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, p0, Ljo;->a:Ljn;

    iget-object v1, v1, Ljn;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 852
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 853
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 854
    iget-object v0, p0, Ljo;->a:Ljn;

    iget-object v0, v0, Ljn;->a:Ljf;

    invoke-static {v0}, Ljf;->b(Ljf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
