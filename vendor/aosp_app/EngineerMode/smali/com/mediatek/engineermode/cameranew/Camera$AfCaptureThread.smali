.class Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AfCaptureThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x6a

    const/16 v3, 0x66

    .line 604
    const-string v1, "test/camera"

    const-string v2, "AfCaptureThread start."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mTakePicDone:Z
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4202(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 606
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #calls: Lcom/mediatek/engineermode/cameranew/Camera;->takePicture()V
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4300(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 607
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mTakePicDone:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4200(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "test/camera"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-nez v1, :cond_3

    .line 615
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfCaptureTimes:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsoValues:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4400(Lcom/mediatek/engineermode/cameranew/Camera;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 616
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 639
    :cond_1
    :goto_1
    const-string v1, "test/camera"

    const-string v2, "AfCaptureThread finish."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void

    .line 618
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 620
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 621
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfBracketRange:I
    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3200(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 622
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1800(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 623
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mIsBracketAddPos:Z
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 624
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mBracketTimes:I
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 625
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 627
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 630
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 632
    :cond_6
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 633
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 634
    :cond_7
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 635
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 636
    :cond_8
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mAfMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 637
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AfCaptureThread;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
