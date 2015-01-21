.class public Lasm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasf;


# instance fields
.field public a:Lasf;

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method private constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 2108
    iput-object p1, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;Lapt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2108
    invoke-direct {p0, p1}, Lasm;-><init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    return-void
.end method


# virtual methods
.method public a(Lasf;)Lasf;
    .locals 1
    .parameter

    .prologue
    .line 2111
    iget-object v0, p0, Lasm;->a:Lasf;

    .line 2112
    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lasm;->a:Lasf;

    .line 2113
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2136
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2137
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iput-boolean v2, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2138
    iget-object v0, p0, Lasm;->a:Lasf;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lasm;->a:Lasf;

    invoke-interface {v0}, Lasf;->a()V

    .line 2143
    :goto_0
    return-void

    .line 2142
    :cond_0
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->d(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 2146
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2147
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2148
    iget-object v0, p0, Lasm;->a:Lasf;

    if-eqz v0, :cond_0

    .line 2149
    iget-object v0, p0, Lasm;->a:Lasf;

    invoke-interface {v0, p1}, Lasf;->a(I)V

    .line 2153
    :goto_0
    return-void

    .line 2152
    :cond_0
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;I)V

    goto :goto_0
.end method

.method public a(I[III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2118
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v1, v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mSogouIMEComposingSource:Laov;

    iput-object v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mComposingSource:Laov;

    .line 2119
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mSourceFromSougIME:Z

    .line 2120
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 2121
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->o(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    .line 2133
    :goto_0
    return-void

    .line 2124
    :cond_0
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    invoke-static {v0}, Lasd;->a(Lasd;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/sogou/SogouKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c()Z

    move-result v0

    .line 2125
    :goto_1
    if-eqz v0, :cond_1

    .line 2126
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 2129
    :cond_1
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    int-to-char v1, p1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;I)V

    .line 2130
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;Landroid/view/inputmethod/EditorInfo;)V

    .line 2131
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->p(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0

    .line 2124
    :cond_2
    iget-object v0, p0, Lasm;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(Lcom/sohu/inputmethod/sogou/SogouIME;)Z

    move-result v0

    goto :goto_1
.end method
