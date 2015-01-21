.class public Lmt;
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
    .line 1075
    iput-object p1, p0, Lmt;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/util/List;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1078
    iget-object v0, p0, Lmt;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    #getter for: Lcom/sohu/inputmethod/engine/IMEInterface;->mStringPool:Laze;
    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->access$100(Lcom/sohu/inputmethod/engine/IMEInterface;)Laze;

    move-result-object v0

    invoke-virtual {v0, p1}, Laze;->a(Ljava/util/List;)I

    .line 1079
    iget-object v0, p0, Lmt;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    #calls: Lcom/sohu/inputmethod/engine/IMEInterface;->appendCandidateStroke(Ljava/util/List;I)I
    invoke-static {v0, p1, p3}, Lcom/sohu/inputmethod/engine/IMEInterface;->access$400(Lcom/sohu/inputmethod/engine/IMEInterface;Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1091
    iget-object v0, p0, Lmt;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sohu/inputmethod/engine/IMEInterface;->restoreSourceState(Ljava/util/List;II)V

    .line 1092
    return-void
.end method

.method public b(Ljava/util/List;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1082
    iget-object v0, p0, Lmt;->a:Lcom/sohu/inputmethod/engine/IMEInterface;

    #getter for: Lcom/sohu/inputmethod/engine/IMEInterface;->mStringPool:Laze;
    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->access$100(Lcom/sohu/inputmethod/engine/IMEInterface;)Laze;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Laze;->a(Ljava/util/List;II)I

    move-result v0

    return v0
.end method
