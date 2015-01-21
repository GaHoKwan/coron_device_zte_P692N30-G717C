.class public Lapj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/HorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lapj;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lapj;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(Lcom/sohu/inputmethod/sogou/HorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lapj;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(Lcom/sohu/inputmethod/sogou/HorizontalScrollView;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lapj;->a:Lcom/sohu/inputmethod/sogou/HorizontalScrollView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/HorizontalScrollView;->a(Lcom/sohu/inputmethod/sogou/HorizontalScrollView;)Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/HorizontalCandidateView;->d()V

    goto :goto_0
.end method
