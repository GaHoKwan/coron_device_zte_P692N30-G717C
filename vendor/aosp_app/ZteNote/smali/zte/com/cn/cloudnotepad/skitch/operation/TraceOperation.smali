.class public Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
.super Ljava/lang/Object;
.source "TraceOperation.java"


# instance fields
.field public mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

.field public mTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V
    .locals 6
    .parameter "trace"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 27
    instance-of v2, p1, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    if-eqz v2, :cond_0

    .line 28
    new-instance v3, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mType:Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;

    invoke-direct {v3, v2}, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;-><init>(Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace$ShapeType;)V

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    move-object v2, p1

    .line 29
    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v0, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    .local v0, first:Landroid/graphics/PointF;
    move-object v2, p1

    .line 30
    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    iget-object v1, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    .line 31
    .local v1, last:Landroid/graphics/PointF;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointFirst:Landroid/graphics/PointF;

    .line 32
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/skitch/trace/DoodleShapeTrace;->mPointLast:Landroid/graphics/PointF;

    .line 37
    .end local v0           #first:Landroid/graphics/PointF;
    .end local v1           #last:Landroid/graphics/PointF;
    :goto_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    new-instance v4, Landroid/graphics/Path;

    move-object v2, p1

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-direct {v4, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v4, v3, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    .line 38
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    new-instance v3, Landroid/graphics/Paint;

    check-cast p1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    .end local p1
    iget-object v4, p1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v2, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    .line 39
    return-void

    .line 34
    .restart local p1
    :cond_0
    new-instance v2, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    invoke-direct {v2}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;-><init>()V

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    goto :goto_0
.end method


# virtual methods
.method public copy()Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;-><init>(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TraceOperation : [ mTrace = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPaint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/operation/TraceOperation;->mData:Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
