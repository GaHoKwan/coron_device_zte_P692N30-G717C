.class public Laal;
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
    .line 446
    iput-object p1, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v0

    iget-object v1, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-nez v0, :cond_2

    .line 454
    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    const/16 v2, 0x17

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lqy;->a(II)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lsg;)Lsg;

    .line 455
    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v1, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 458
    :cond_2
    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Laal;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->b()V

    goto :goto_0
.end method
