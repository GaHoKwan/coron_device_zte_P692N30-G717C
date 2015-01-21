.class public Larc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14155
    iput-object p1, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput p2, p0, Larc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, -0xfd

    .line 14157
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget v1, p0, Larc;->a:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->deleteWord(I)I

    .line 14158
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->t(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    iget v0, v0, Lasd;->b:I

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14159
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v0

    invoke-virtual {v0}, Lash;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14160
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lash;

    move-result-object v1

    invoke-virtual {v1}, Lash;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    .line 14167
    :goto_0
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 14168
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 14169
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14170
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->O:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->O:I

    .line 14171
    :cond_0
    return-void

    .line 14162
    :cond_1
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->handleInput(II)I

    goto :goto_0

    .line 14165
    :cond_2
    iget-object v0, p0, Larc;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->refresh()I

    goto :goto_0
.end method
