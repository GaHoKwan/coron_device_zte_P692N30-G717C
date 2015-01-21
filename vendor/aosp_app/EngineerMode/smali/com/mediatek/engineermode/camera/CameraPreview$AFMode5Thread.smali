.class Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;
.super Ljava/lang/Thread;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AFMode5Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1357
    const-string v0, "EM/Camera"

    const-string v1, "mAFMode5Thread"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->setAeAwlock(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1700(Lcom/mediatek/engineermode/camera/CameraPreview;Z)V

    .line 1364
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1368
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 1369
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3600(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->handleMode5Stage1()V
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3700(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    goto :goto_0

    .line 1371
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mStage:I
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3600(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode5Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->handleMode5Stage2()V
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3800(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    goto :goto_0
.end method
