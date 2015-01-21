.class Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;
.super Landroid/os/Handler;
.source "CpuStressTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cpustress/CpuStressTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerVideoCodec"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 791
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 792
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 795
    const-string v0, "EM/CpuStressTestService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTestHandlerVideoCodec receive msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$300(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_4

    .line 798
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #setter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J
    invoke-static {v0, v5, v6}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$302(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;J)J

    .line 799
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #setter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$402(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Z)Z

    .line 800
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateWakeLock()V

    .line 801
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 816
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$300(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #getter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$400(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$310(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    if-eqz v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTest;

    if-eqz v0, :cond_3

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;->onUpdateTestResult()V

    .line 825
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 826
    return-void

    .line 803
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-boolean v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopSwCodec:Z

    if-eqz v0, :cond_5

    .line 804
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #setter for: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$402(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Z)Z

    .line 805
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iput-boolean v4, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopSwCodec:Z

    .line 806
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateWakeLock()V

    goto :goto_0

    .line 810
    :cond_5
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    #calls: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doVideoCodecTest()V
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$500(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)V

    .line 811
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
