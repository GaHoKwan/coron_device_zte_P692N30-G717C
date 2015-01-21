.class public Lauo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lauo;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 714
    iget-object v0, p0, Lauo;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;Z)Z

    .line 715
    iget-object v0, p0, Lauo;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lauq;

    move-result-object v0

    invoke-interface {v0}, Lauq;->s()V

    .line 716
    iget-object v0, p0, Lauo;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lawk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lauo;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lawk;

    move-result-object v0

    invoke-virtual {v0}, Lawk;->c()V

    .line 718
    iget-object v0, p0, Lauo;->a:Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lawk;

    move-result-object v0

    invoke-virtual {v0}, Lawk;->d()V

    .line 720
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    return-void
.end method
