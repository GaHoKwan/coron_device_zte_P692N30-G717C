.class public Lmw;
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
    .line 1223
    iput-object p1, p0, Lmw;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lmw;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    iget-object v0, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mHWCommitedData:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1235
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmw;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    iget-object v0, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mHWCommitedData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1226
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1227
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1228
    iget-object v0, p0, Lmw;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    iget-object v0, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mHWCommitedData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lmw;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    iget-object v0, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mHWCommitedData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1247
    iget-object v1, p0, Lmw;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isComposingFullNative()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lmw;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    iget-object v0, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mHWCommitedData:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1240
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmw;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    iget-object v0, v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mHWCommitedData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1256
    const/4 v0, 0x0

    return v0
.end method
