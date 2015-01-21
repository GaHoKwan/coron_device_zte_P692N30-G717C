.class public Laap;
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
    .line 654
    iput-object p1, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 658
    iget-object v0, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Z

    .line 659
    iget-object v0, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->releaseBigramDict()V

    .line 661
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    .line 662
    iget-object v0, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lafp;->u(Z)V

    .line 663
    iget-object v0, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->v(Z)V

    .line 664
    iget-object v0, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->t(Z)V

    .line 665
    iget-object v0, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1, v2}, Lafp;->a(IZ)V

    .line 666
    iget-object v0, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->a(Ljava/lang/Float;)V

    .line 667
    iget-object v0, p0, Laap;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 668
    return-void
.end method
