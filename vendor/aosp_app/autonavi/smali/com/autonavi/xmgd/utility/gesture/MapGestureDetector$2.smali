.class Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onScale(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onScaleBegin()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$2;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onScaleEnd()V

    :cond_0
    return-void
.end method
