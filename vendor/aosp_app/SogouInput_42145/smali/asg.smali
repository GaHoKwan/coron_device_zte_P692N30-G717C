.class public Lasg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laos;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method private constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 3531
    iput-object p1, p0, Lasg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;Lapt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3531
    invoke-direct {p0, p1}, Lasg;-><init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 3539
    iget-object v0, p0, Lasg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lapm;

    move-result-object v0

    iget-object v1, p0, Lasg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v1

    invoke-virtual {v0, v1}, Lapm;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 3534
    iget-object v0, p0, Lasg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lapm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3535
    iget-object v0, p0, Lasg;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lapm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lapm;->a(Ljava/util/List;)V

    .line 3536
    :cond_0
    return-void
.end method
