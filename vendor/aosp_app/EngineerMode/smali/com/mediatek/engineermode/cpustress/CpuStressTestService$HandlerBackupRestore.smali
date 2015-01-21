.class Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;
.super Landroid/os/Handler;
.source "CpuStressTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cpustress/CpuStressTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerBackupRestore"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 832
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 833
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 836
    const-string v0, "EM/CpuStressTestService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTestHandlerBackupRestore receive msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 845
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget-object v0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    invoke-interface {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;->onUpdateTestResult()V

    .line 848
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 849
    return-void

    .line 840
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doBackupRestore(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->access$600(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;I)V

    goto :goto_0

    .line 837
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
