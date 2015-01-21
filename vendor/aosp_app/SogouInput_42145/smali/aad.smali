.class public Laad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 725
    iget-object v0, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v1, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    const/16 v2, 0x17

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lqy;->a(II)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lsg;)Lsg;

    .line 727
    iget-object v0, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v1, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    iget-object v0, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;

    .line 730
    :cond_0
    iget-object v0, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()V

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 733
    :cond_2
    iget-object v0, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    iget-object v0, p0, Laad;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
