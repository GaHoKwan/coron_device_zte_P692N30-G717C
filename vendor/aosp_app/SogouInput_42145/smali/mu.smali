.class public Lmu;
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
    .line 1141
    iput-object p1, p0, Lmu;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lmu;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getComposingInfo(I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1143
    iget-object v0, p0, Lmu;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    #calls: Lcom/sohu/inputmethod/engine/IMEInterface;->updateComposingText(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    invoke-static {v0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->access$500(Lcom/sohu/inputmethod/engine/IMEInterface;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1144
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1154
    iget-object v1, p0, Lmu;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isComposingFullNative()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lmu;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getComposingInfo(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lmu;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getComposingInfo(I)I

    move-result v0

    return v0
.end method
