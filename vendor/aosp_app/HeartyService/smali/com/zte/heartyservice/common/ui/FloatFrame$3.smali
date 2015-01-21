.class Lcom/zte/heartyservice/common/ui/FloatFrame$3;
.super Ljava/lang/Object;
.source "FloatFrame.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/ui/FloatFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/ui/FloatFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$3;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 88
    const-string v0, "OnGestureListener"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$3;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/common/ui/FloatFrame;->mTouchRawX:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/ui/FloatFrame;->access$202(Lcom/zte/heartyservice/common/ui/FloatFrame;F)F

    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$3;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/common/ui/FloatFrame;->mTouchRawY:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/ui/FloatFrame;->access$302(Lcom/zte/heartyservice/common/ui/FloatFrame;F)F

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 103
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$3;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/common/ui/FloatFrame;->mTouchRawX:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/ui/FloatFrame;->access$202(Lcom/zte/heartyservice/common/ui/FloatFrame;F)F

    .line 109
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$3;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    #setter for: Lcom/zte/heartyservice/common/ui/FloatFrame;->mTouchRawY:F
    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/ui/FloatFrame;->access$302(Lcom/zte/heartyservice/common/ui/FloatFrame;F)F

    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$3;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    iget-object v0, v0, Lcom/zte/heartyservice/common/ui/FloatFrame;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 117
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method
