.class public Lwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lwc;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 869
    iget-object v0, p0, Lwc;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lwc;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lwc;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lwc;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    new-instance v1, Lwd;

    invoke-direct {v1, p0}, Lwd;-><init>(Lwc;)V

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 879
    iget-object v0, p0, Lwc;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 881
    :cond_0
    return-void
.end method
