.class public Lasj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laoq;


# instance fields
.field private a:I

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 1
    .parameter

    .prologue
    .line 2796
    iput-object p1, p0, Lasj;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2797
    const v0, 0x7fffffff

    iput v0, p0, Lasj;->a:I

    .line 2796
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2799
    const v0, 0x7fffffff

    iput v0, p0, Lasj;->a:I

    .line 2800
    return-void
.end method

.method public a(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2810
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILjava/lang/CharSequence;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2802
    iget v0, p0, Lasj;->a:I

    if-eq v0, p1, :cond_0

    .line 2803
    iput p1, p0, Lasj;->a:I

    .line 2804
    iget-object v0, p0, Lasj;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;I)I

    .line 2805
    iget-object v0, p0, Lasj;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;I)V

    .line 2807
    :cond_0
    const/4 v0, 0x0

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
    .line 2818
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILjava/lang/CharSequence;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2813
    invoke-virtual {p0, p1, p2, v0, v0}, Lasj;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
