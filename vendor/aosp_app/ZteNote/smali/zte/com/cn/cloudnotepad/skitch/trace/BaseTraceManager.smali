.class public Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;
.super Ljava/lang/Object;
.source "BaseTraceManager.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;


# static fields
.field private static final EMPTY_X:F = -1.0f

.field private static final EMPTY_Y:F = -1.0f


# instance fields
.field private bottomMost:F

.field private leftMost:F

.field protected mTraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;",
            ">;"
        }
    .end annotation
.end field

.field private rightMost:F

.field private topMost:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x4080

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    .line 21
    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    .line 22
    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    .line 23
    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public addTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V
    .locals 1
    .parameter "trace"

    .prologue
    .line 35
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/high16 v1, -0x4080

    .line 41
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iput v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    .line 43
    iput v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    .line 44
    iput v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    .line 45
    iput v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    .line 46
    return-void
.end method

.method public bridge synthetic copy()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->copy()Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;-><init>()V

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->copy(Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;)Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;)Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;
    .locals 4
    .parameter "manager"

    .prologue
    .line 55
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :cond_0
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    iput v2, p1, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    .line 65
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    iput v2, p1, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    .line 66
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    iput v2, p1, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    .line 67
    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    iput v2, p1, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    .line 68
    return-object p1

    .line 59
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 60
    .local v1, itrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    iget-object v2, p1, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v1}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->copy()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public drawTraces(Landroid/graphics/Canvas;F)V
    .locals 2
    .parameter "canvas"
    .parameter "scale"

    .prologue
    .line 73
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 75
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :cond_0
    return-void

    .line 76
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v1, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->drawTrace(Landroid/graphics/Canvas;F)V

    goto :goto_0
.end method

.method public getBottomMost()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    return v0
.end method

.method public getLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeftMost()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    return v0
.end method

.method public getRightMost()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    return v0
.end method

.method public getTopMost()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v1, -0x4080

    .line 113
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 114
    :cond_0
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    .line 117
    :cond_1
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 118
    :cond_2
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    .line 121
    :cond_3
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_5

    .line 122
    :cond_4
    iput p2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    .line 125
    :cond_5
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_7

    .line 126
    :cond_6
    iput p2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    .line 128
    :cond_7
    return-void
.end method

.method public removeLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, iTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #iTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 136
    .restart local v0       #iTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
    :cond_0
    return-object v0
.end method

.method public removeTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)Z
    .locals 2
    .parameter "trace"

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, result:Z
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    :cond_0
    return v0
.end method

.method public restoreLastTrace()Z
    .locals 1

    .prologue
    .line 160
    const-string v0, "in restoreLastTrace()"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    const-string v0, "in BaseTraceManager : leftMost = %f, rightMost= %f, topMost = %f, bottomMost= %f, mTraces.size()=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 168
    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->leftMost:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->rightMost:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->topMost:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->bottomMost:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/trace/BaseTraceManager;->mTraces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
