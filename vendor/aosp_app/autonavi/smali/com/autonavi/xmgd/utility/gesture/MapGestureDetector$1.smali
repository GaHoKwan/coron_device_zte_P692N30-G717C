.class Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$1;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
