.class public Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;
.super Ljava/lang/Object;
.source "DoodleOperationManager.java"


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

.field private mRemovedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    .line 13
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public addPathOp(Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;)Z
    .locals 2
    .parameter "op"

    .prologue
    .line 59
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    .local v0, result:Z
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;->onChange()V

    .line 63
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;->onChange()V

    .line 55
    :cond_0
    return-void
.end method

.method public clearRemovedList()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    return-void
.end method

.method public copy()Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;
    .locals 4

    .prologue
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in DoodleOperationManager copy(), mList = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-direct {v1}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;-><init>()V

    .line 31
    .local v1, manager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 38
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;>;"
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 44
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;>;"
    :cond_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    iput-object v2, v1, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    .line 45
    return-object v1

    .line 34
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;>;"
    :cond_2
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->copy()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_3
    iget-object v3, v1, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->copy()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getLastOp()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastRemovedOp()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRedoCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUndoCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public removeLastOp()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 77
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    .line 78
    .local v0, op:Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;->onChange()V

    .line 85
    .end local v0           #op:Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreLastOp()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mRemovedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    .line 100
    .local v0, op:Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in restoreLastOp, op = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;->onChange()V

    .line 106
    .end local v0           #op:Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    :cond_0
    return-void
.end method

.method public setDoodleChangeListener(Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 126
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "mList : [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 120
    .end local v0           #i:I
    :goto_1
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 114
    .restart local v0       #i:I
    :cond_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v0           #i:I
    :cond_1
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
