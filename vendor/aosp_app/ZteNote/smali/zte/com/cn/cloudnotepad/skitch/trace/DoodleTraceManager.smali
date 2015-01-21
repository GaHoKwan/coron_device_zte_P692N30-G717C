.class public Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;
.super Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;
.source "DoodleTraceManager.java"


# instance fields
.field private mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

.field protected mRemovedTraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    .line 21
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    .line 22
    return-void
.end method

.method private printListSize()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mTraces size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRemovedTraces size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "undo count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->getUndoCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "redo count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->getRedoCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private setTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;)V
    .locals 5
    .parameter "trace"
    .parameter "op"

    .prologue
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setTrace() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->w(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 105
    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    .line 106
    .local v1, penTrace:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
    iget-object v2, v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 107
    iget-object v2, v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 108
    iget-object v2, v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    iget-object v3, v3, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 109
    instance-of v2, p1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    instance-of v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    if-eqz v2, :cond_0

    .line 110
    iget-object v0, p2, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .local v0, data:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;
    move-object v2, p1

    .line 111
    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 112
    check-cast p1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    .end local p1
    iget-object v2, p1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 114
    .end local v0           #data:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V
    .locals 2
    .parameter "trace"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->addTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V

    .line 29
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->clearRemovedTraces()V

    .line 30
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    invoke-direct {v1, p1}, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;-><init>(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->addPathOp(Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;)Z

    .line 31
    return-void
.end method

.method public changeTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V
    .locals 2
    .parameter "trace"

    .prologue
    .line 43
    const-string v0, "changeTrace()"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    invoke-direct {v1, p1}, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;-><init>(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->addPathOp(Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;)Z

    .line 45
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->clear()V

    .line 51
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->clear()V

    .line 53
    return-void
.end method

.method public clearRemovedTraces()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->clearRemovedList()V

    .line 38
    return-void
.end method

.method public bridge synthetic copy()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->copy()Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->copy()Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;
    .locals 5

    .prologue
    .line 56
    new-instance v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;

    invoke-direct {v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;-><init>()V

    .line 57
    .local v2, manager:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;
    invoke-super {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->copy(Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;)Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;

    .line 58
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->copy()Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    move-result-object v3

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    .line 68
    return-object v2

    .line 62
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 63
    .local v1, itrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    iget-object v3, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->copy()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRedoCount()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->getRedoCount()I

    move-result v0

    return v0
.end method

.method public getUndoCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->getUndoCount()I

    move-result v0

    return v0
.end method

.method public removeLastRemovedTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, trace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #trace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 132
    .restart local v0       #trace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    :cond_0
    return-object v0
.end method

.method public removeLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    .locals 6

    .prologue
    .line 73
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->removeLastOp()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    move-result-object v2

    .line 74
    .local v2, removedOp:Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remove Last op : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->getLastOp()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    move-result-object v1

    .line 76
    .local v1, op:Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get last op : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->getLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v0

    .line 78
    .local v0, lastTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-ne v4, v0, :cond_0

    if-eqz v0, :cond_0

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in removeLastTrace, setTrace : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->setTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;)V

    .line 91
    .end local v0           #lastTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    :goto_0
    return-object v0

    .line 84
    .restart local v0       #lastTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    :cond_0
    invoke-super {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->removeLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v3

    .line 85
    .local v3, trace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in removeLastTrace, removed trace = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    if-eqz v3, :cond_1

    .line 87
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->printListSize()V

    move-object v0, v3

    .line 91
    goto :goto_0
.end method

.method public removeTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)Z
    .locals 1
    .parameter "trace"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->removeTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mRemovedTraces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreLastTrace()Z
    .locals 6

    .prologue
    .line 137
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->getLastOp()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    move-result-object v0

    .line 138
    .local v0, lastOp:Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->getLastRemovedOp()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    move-result-object v1

    .line 139
    .local v1, lastRemovedOp:Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in restoreLastTrace, lastRemovedOp = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    if-nez v1, :cond_0

    .line 141
    const/4 v2, 0x0

    .line 159
    :goto_0
    return v2

    .line 143
    :cond_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->restoreLastOp()V

    .line 144
    if-eqz v0, :cond_1

    iget-object v4, v0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    iget-object v5, v1, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-ne v4, v5, :cond_1

    .line 145
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->getLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->setTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;)V

    .line 146
    const/4 v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-super {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->restoreLastTrace()Z

    .line 150
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->removeLastRemovedTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v3

    .line 151
    .local v3, trace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in restoreLastTrace, restored trace = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, result:Z
    if-eqz v3, :cond_2

    .line 154
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const/4 v2, 0x1

    .line 158
    :cond_2
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->printListSize()V

    goto :goto_0
.end method

.method public setDoodleChangeListener(Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 196
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;->setDoodleChangeListener(Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;)V

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "mTraces : [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mTraces:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 176
    .end local v0           #i:I
    :goto_1
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mOpManager:Lzte/com/cn/cloudnotepad/skitch/operation/DoodleOperationManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 168
    .restart local v0       #i:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trace = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, ", mPath = "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, ", mPaint = "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0           #i:I
    :cond_1
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
