.class Lagf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lage;


# direct methods
.method constructor <init>(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lagf;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 538
    iget-object v0, p0, Lagf;->a:Lage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin mCurrentTab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lagf;->a:Lage;

    invoke-static {v2}, Lage;->a(Lage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lage;->c(Lage;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lagf;->a:Lage;

    invoke-static {v1}, Lage;->a(Lage;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 556
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lage;->a(Lage;I)I

    .line 542
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-static {v0}, Lage;->c(Lage;)V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-virtual {v0}, Lhr;->h()V

    .line 546
    :cond_2
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-static {v0}, Lage;->c(Lage;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 547
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gc:I

    .line 551
    :goto_1
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lage;->b(Lage;I)I

    .line 552
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-static {v0, v3}, Lage;->a(Lage;I)I

    .line 553
    iget-object v0, p0, Lagf;->a:Lage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lage;->a(Lage;Landroid/content/Intent;)V

    .line 554
    iget-object v0, p0, Lagf;->a:Lage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end mCurrentTab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lagf;->a:Lage;

    invoke-static {v2}, Lage;->a(Lage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lage;->c(Lage;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_3
    iget-object v0, p0, Lagf;->a:Lage;

    invoke-static {v0, v3}, Lage;->a(Lage;Z)Z

    goto :goto_1
.end method
