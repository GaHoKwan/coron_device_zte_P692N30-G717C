.class Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;
.super Ljava/lang/Thread;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AFMode0Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 947
    const-string v0, "EM/Camera"

    const-string v1, "AFMode0Thread"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 950
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->setAeAwlock(Z)V
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1700(Lcom/mediatek/engineermode/camera/CameraPreview;Z)V

    .line 951
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "auto"

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusEngMode(I)V

    .line 953
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "focus-meter"

    const-string v2, "spot"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 960
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 961
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2300(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 970
    :goto_1
    sput-boolean v3, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 971
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->takePicture()V
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2400(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 972
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->startPreview()V
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2500(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 973
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 974
    sput-boolean v4, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 975
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    const-wide/16 v1, 0x7d0

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1600(Lcom/mediatek/engineermode/camera/CameraPreview;J)V

    .line 976
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAFMode0FirstThread after Sleep(2000) mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2600(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 978
    const-string v0, "EM/Camera"

    const-string v1, "mAFMode1FirstThread finish."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAFMode1FirstThread mCanBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :cond_2
    const-string v0, "EM/Camera"

    const-string v1, "AFMode0Thread does not support auto mode."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 968
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode0Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    goto/16 :goto_1
.end method
