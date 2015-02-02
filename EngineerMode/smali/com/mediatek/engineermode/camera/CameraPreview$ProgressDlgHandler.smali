.class Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
.super Landroid/os/Handler;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressDlgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v2, 0x3e8

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 401
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 402
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1202(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 406
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgresDlgExist:Z
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1202(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCaptureBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1300(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 410
    const-string v0, "EM/Camera"

    const-string v1, "Enabled mCaptureBtn"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Enabled mCaptureBtn mFocusFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCaptureBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1300(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 415
    const-string v0, "EM/Camera"

    const-string v1, "Disabled mCaptureBtn"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_4
    const-string v0, "EM/Camera"

    const-string v1, "EVENT_WAIT_FOCUES"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v0, Lcom/mediatek/engineermode/camera/CameraPreview$WaitFocusThread;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview$WaitFocusThread;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 422
    :pswitch_5
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After while mFocusFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->capturePicture()V
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1500(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 424
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1402(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 425
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After CapturePicture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 427
    const-string v0, "EM/Camera"

    const-string v1, "EVENT_FOCUES_COMPLETE"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
