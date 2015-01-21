.class final Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;Lcom/mediatek/engineermode/camera/CameraPreview$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1467
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;-><init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 1471
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAFEngMode value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2700(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2700(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2700(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1474
    :cond_0
    const-string v0, "EM/Camera"

    const-string v1, "AutoFocusCallback send EVENT_FULL_SCAN_COMPLETE message "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1477
    :cond_1
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In mAutoFocusCallback before set CapturePicture mFocusFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z
    invoke-static {v0, p1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1402(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 1480
    const-string v0, "EM/Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In mAutoFocusCallback after set CapturePicture mFocusFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mFocusFlag:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    return-void
.end method
