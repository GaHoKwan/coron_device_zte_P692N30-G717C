.class Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;
.super Landroid/os/Handler;
.source "CpuStressTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cpustress/CpuStressTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerApMcu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 751
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 752
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 755
    const-string v0, "EM/CpuStressTestService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTestHandlerApMcu receive msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$000(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_4

    .line 758
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #setter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J
    invoke-static {v0, v5, v6}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$002(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;J)J

    .line 759
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #setter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$102(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Z)Z

    .line 760
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateWakeLock()V

    .line 761
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 775
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$000(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$100(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$010(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    if-eqz v0, :cond_3

    .line 779
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/ApMcu;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    if-eqz v0, :cond_3

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;->onUpdateTestResult()V

    .line 784
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 785
    return-void

    .line 763
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-boolean v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopApmcu:Z

    if-eqz v0, :cond_5

    .line 764
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #setter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$102(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Z)Z

    .line 765
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iput-boolean v4, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopApmcu:Z

    .line 766
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateWakeLock()V

    goto :goto_0

    .line 770
    :cond_5
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #calls: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doApMcuTest()V
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$200(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)V

    .line 771
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
