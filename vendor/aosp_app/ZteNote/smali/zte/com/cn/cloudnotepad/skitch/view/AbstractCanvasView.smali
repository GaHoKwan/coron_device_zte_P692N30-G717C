.class public abstract Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;
.super Landroid/widget/ImageView;
.source "AbstractCanvasView.java"


# instance fields
.field public curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 28
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->clear()V

    .line 29
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->invalidate()V

    .line 30
    return-void
.end method

.method protected abstract createTraceTool()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;
.end method

.method protected abstract getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
.end method

.method public handlePossibleOffsetOnActionUp(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V
    .locals 0
    .parameter "trace"

    .prologue
    .line 44
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 37
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-interface {v0, p1, v1}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->drawTraces(Landroid/graphics/Canvas;F)V

    .line 38
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 47
    const/4 v0, 0x1

    .line 48
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 49
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 51
    .local v3, y:F
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->getTraceManager()Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;

    move-result-object v1

    .line 52
    .local v1, traceManager:Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;
    invoke-interface {v1, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->onTouch(FF)V

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->createTraceTool()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v4

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 59
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v4, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->startTrace(FF)V

    .line 60
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->invalidate()V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-nez v4, :cond_0

    .line 64
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->createTraceTool()Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    move-result-object v4

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    .line 66
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v4, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->startTrace(FF)V

    .line 70
    :goto_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->invalidate()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v4, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->continueTrace(FF)V

    goto :goto_1

    .line 73
    :pswitch_2
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v4}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v4, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;->continueTrace(FF)V

    .line 75
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-interface {v1, v4}, Lzte/com/cn/cloudnotepad/skitch/iface/ITraceManager;->addTrace(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V

    .line 76
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->handlePossibleOffsetOnActionUp(Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;)V

    .line 77
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->invalidate()V

    .line 79
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractCanvasView;->curTrace:Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
