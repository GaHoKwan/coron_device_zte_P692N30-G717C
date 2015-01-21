.class public Lasl;
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
    .line 2848
    iput-object p1, p0, Lasl;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2849
    const/4 v0, 0x0

    iput-object v0, p0, Lasl;->a:Laoq;

    .line 2848
    return-void
.end method


# virtual methods
.method public a(Laoq;)V
    .locals 0
    .parameter

    .prologue
    .line 2851
    iput-object p1, p0, Lasl;->a:Laoq;

    .line 2852
    return-void
.end method

.method public a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2858
    iget-object v0, p0, Lasl;->a:Laoq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasl;->a:Laoq;

    invoke-interface {v0, p1, p2}, Laoq;->a(ILjava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2854
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lasl;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 2855
    :cond_0
    iget-object v1, p0, Lasl;->a:Laoq;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lasl;->a:Laoq;

    invoke-interface {v0, p1, p2, p3, p4}, Laoq;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

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
    .line 2866
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2861
    iget-object v0, p0, Lasl;->a:Laoq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasl;->a:Laoq;

    invoke-interface {v0, p1, p2}, Laoq;->b(ILjava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
