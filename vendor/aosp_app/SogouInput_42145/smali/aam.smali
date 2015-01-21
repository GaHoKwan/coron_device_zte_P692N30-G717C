.class public Laam;
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
    .line 464
    iput-object p1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x6

    const/16 v2, 0x17

    .line 467
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqy;->c(I)I

    move-result v0

    .line 468
    if-ne v0, v1, :cond_4

    .line 469
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lqy;->a(II)I

    move-result v0

    .line 470
    if-ne v0, v1, :cond_1

    .line 471
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    new-instance v1, Lalh;

    invoke-direct {v1}, Lalh;-><init>()V

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 472
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 474
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lqy;->b(I)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lsg;)Lsg;

    .line 478
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 480
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 481
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V

    goto :goto_0

    .line 485
    :cond_2
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lqy;->a(II)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lsg;)Lsg;

    .line 486
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 487
    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 488
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 489
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V

    goto/16 :goto_0

    .line 491
    :cond_3
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    new-instance v1, Lalh;

    invoke-direct {v1}, Lalh;-><init>()V

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 492
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 494
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V

    goto/16 :goto_0

    .line 502
    :cond_4
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lqy;->a(II)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lsg;)Lsg;

    .line 503
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 504
    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 505
    :cond_5
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 507
    iget-object v0, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laam;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V

    goto/16 :goto_0
.end method
