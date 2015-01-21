.class public interface abstract Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
.super Ljava/lang/Object;
.source "ITraceManager.java"


# virtual methods
.method public abstract addTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V
.end method

.method public abstract clear()V
.end method

.method public abstract copy()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
.end method

.method public abstract drawTraces(Landroid/graphics/Canvas;F)V
.end method

.method public abstract getBottomMost()F
.end method

.method public abstract getLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
.end method

.method public abstract getLeftMost()F
.end method

.method public abstract getRightMost()F
.end method

.method public abstract getTopMost()F
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract onTouch(FF)V
.end method

.method public abstract removeLastTrace()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
.end method

.method public abstract removeTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)Z
.end method

.method public abstract restoreLastTrace()Z
.end method
