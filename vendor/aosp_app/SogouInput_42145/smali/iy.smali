.class Liy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Liu;


# direct methods
.method constructor <init>(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Liy;->a:Liu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 378
    :cond_0
    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 380
    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 381
    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Liy;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    return-void
.end method
