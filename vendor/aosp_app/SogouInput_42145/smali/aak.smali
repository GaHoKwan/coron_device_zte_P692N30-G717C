.class public Laak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v3, -0x1

    const/16 v2, 0x17

    .line 404
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const-string v1, "===mUpgradeButton==="

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lqy;->a(II)I

    move-result v0

    .line 407
    if-ne v0, v3, :cond_3

    .line 408
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqy;->c(I)I

    move-result v0

    .line 409
    if-ne v0, v3, :cond_1

    .line 410
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    new-instance v1, Lalh;

    invoke-direct {v1}, Lalh;-><init>()V

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 411
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 413
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lqy;->b(I)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lsg;)Lsg;

    .line 418
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 420
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 421
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    new-instance v1, Lalh;

    invoke-direct {v1}, Lalh;-><init>()V

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 427
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 429
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V

    goto :goto_0

    .line 436
    :cond_3
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lqy;->a(II)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lsg;)Lsg;

    .line 437
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 438
    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 439
    :cond_4
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laak;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    goto/16 :goto_0
.end method
