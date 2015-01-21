.class Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$4;
.super Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector$SimpleOnRotateGestureListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$4;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/gesture/RotateGestureDetector$SimpleOnRotateGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(F)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$4;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$4;->this$0:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;

    #getter for: Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->mListener:Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;
    invoke-static {v0}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;->access$000(Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector;)Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/utility/gesture/MapGestureDetector$OnMapGestureListener;->onRotate(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
