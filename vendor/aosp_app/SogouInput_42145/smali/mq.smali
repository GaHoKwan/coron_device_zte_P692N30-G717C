.class public Lmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laot;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/engine/IMEInterface;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/engine/IMEInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lmq;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1025
    iget-object v0, p0, Lmq;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->handlePageDown(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1019
    iget-object v0, p0, Lmq;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    #calls: Lcom/sohu/inputmethod/engine/IMEInterface;->appendCandidateWords(Ljava/util/List;I)I
    invoke-static {v0, p1, p3}, Lcom/sohu/inputmethod/engine/IMEInterface;->access$000(Lcom/sohu/inputmethod/engine/IMEInterface;Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1031
    iget-object v0, p0, Lmq;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sohu/inputmethod/engine/IMEInterface;->restoreSourceState(Ljava/util/List;II)V

    .line 1032
    return-void
.end method

.method public b(Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1028
    iget-object v0, p0, Lmq;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v0, p1, p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->handlePageUp(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1022
    iget-object v0, p0, Lmq;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    #getter for: Lcom/sohu/inputmethod/engine/IMEInterface;->mStringPool:Laze;
    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->access$100(Lcom/sohu/inputmethod/engine/IMEInterface;)Laze;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Laze;->a(Ljava/util/List;II)I

    move-result v0

    return v0
.end method
