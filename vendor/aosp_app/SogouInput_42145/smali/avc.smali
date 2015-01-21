.class public Lavc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/VerticalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lavc;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lavc;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Lcom/sohu/inputmethod/sogou/VerticalScrollView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lavc;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Lcom/sohu/inputmethod/sogou/VerticalScrollView;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lavc;->a:Lcom/sohu/inputmethod/sogou/VerticalScrollView;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/VerticalScrollView;->a(Lcom/sohu/inputmethod/sogou/VerticalScrollView;)Lcom/sohu/inputmethod/sogou/VerticalCandidateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/VerticalCandidateView;->d()V

    goto :goto_0
.end method
