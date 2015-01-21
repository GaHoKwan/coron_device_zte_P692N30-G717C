.class public Lmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laov;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/engine/IMEInterface;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lmv;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1182
    iget-object v0, p0, Lmv;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v0, p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInputText(Ljava/lang/StringBuilder;)I

    .line 1183
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1174
    iget-object v1, p0, Lmv;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isComposingFullNative()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method
