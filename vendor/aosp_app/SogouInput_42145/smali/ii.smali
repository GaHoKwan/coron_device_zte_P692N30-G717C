.class Lii;
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
    .line 1589
    iput-object p1, p0, Lii;->a:Lih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1593
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lii;->a:Lih;

    iget-object v0, v0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1594
    iget-object v0, p0, Lii;->a:Lih;

    iget-object v0, v0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1595
    iget-object v1, p0, Lii;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1596
    iget-object v1, p0, Lii;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 1597
    if-eqz v1, :cond_0

    .line 1598
    iget-object v2, p0, Lii;->a:Lih;

    iget-object v2, v2, Lih;->a:Lhr;

    invoke-static {v2, v0}, Lhr;->c(Lhr;Ljava/lang/String;)Ljava/lang/String;

    .line 1599
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1600
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1601
    iget-object v1, v1, Lhk;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1602
    iget-object v1, p0, Lii;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1607
    :cond_0
    return-void
.end method
