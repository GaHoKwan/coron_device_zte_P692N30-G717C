.class public Lasi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laoq;


# instance fields
.field private a:Laoq;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 1
    .parameter

    .prologue
    .line 2823
    iput-object p1, p0, Lasi;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2824
    const/4 v0, 0x0

    iput-object v0, p0, Lasi;->a:Laoq;

    .line 2823
    return-void
.end method


# virtual methods
.method public a(Laoq;)V
    .locals 0
    .parameter

    .prologue
    .line 2826
    iput-object p1, p0, Lasi;->a:Laoq;

    .line 2827
    return-void
.end method

.method public a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2835
    iget-object v0, p0, Lasi;->a:Laoq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasi;->a:Laoq;

    invoke-interface {v0, p1, p2}, Laoq;->a(ILjava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2829
    const/4 v0, 0x0

    .line 2830
    iget-object v1, p0, Lasi;->a:Laoq;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lasi;->a:Laoq;

    invoke-interface {v0, p1, p2, p3, p4}, Laoq;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    .line 2831
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lasi;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->w(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2832
    :cond_1
    return v0
.end method

.method public a(ILjava/lang/CharSequence;III)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2843
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2838
    iget-object v0, p0, Lasi;->a:Laoq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasi;->a:Laoq;

    invoke-interface {v0, p1, p2}, Laoq;->b(ILjava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
