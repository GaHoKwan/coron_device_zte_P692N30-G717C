.class Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;
.super Ljava/lang/Thread;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AFMode1Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x3e9

    const/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1063
    const-string v2, "EM/Camera"

    const-string v3, "mAFMode1Thread"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->setAeAwlock(Z)V
    invoke-static {v2, v6}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1700(Lcom/mediatek/engineermode/camera/CameraPreview;Z)V

    .line 1070
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1073
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1074
    sput-boolean v7, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1075
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "manual"

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1076
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1077
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1080
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v2, v7}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 1081
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2300(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1085
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->takePicture()V
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2400(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 1086
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2808(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    .line 1087
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "manual"

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setFocusEngMode(I)V

    .line 1089
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2800(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v3

    add-int/lit8 v3, v3, -0x18

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mStep:I
    invoke-static {v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2900(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusEngStep(I)V

    .line 1090
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1093
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1095
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->startPreview()V
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2500(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 1096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1097
    .local v0, dateTaken:J
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3200(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mModeName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3300(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->createName(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3400(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3500(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3102(Lcom/mediatek/engineermode/camera/CameraPreview;Ljava/lang/String;)Ljava/lang/String;

    .line 1098
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "rawfname"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3100(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1103
    sput-boolean v6, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1104
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    const-wide/16 v3, 0x7d0

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1600(Lcom/mediatek/engineermode/camera/CameraPreview;J)V

    .line 1105
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2800(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v2

    if-ge v2, v8, :cond_3

    .line 1106
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1108
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2800(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v2

    if-lt v2, v8, :cond_0

    .line 1109
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v2, v7}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 1110
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "manual"

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1111
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1113
    :cond_4
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1083
    .end local v0           #dateTaken:J
    :cond_5
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode1Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v2, v6}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    goto/16 :goto_1
.end method
