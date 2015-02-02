.class Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;
.super Ljava/lang/Thread;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AFMode2Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1130
    const-string v0, "EM/Camera"

    const-string v1, "mAFMode2Thread"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->setAeAwlock(Z)V
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1700(Lcom/mediatek/engineermode/camera/CameraPreview;Z)V

    .line 1133
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 1134
    sput-boolean v3, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1135
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    const/4 v1, 0x2

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2702(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 1137
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "fullscan"

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1138
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2700(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusEngMode(I)V

    .line 1139
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mStep:I
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2900(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusEngStep(I)V

    .line 1140
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "focus-mode"

    const-string v2, "fullscan"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1145
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 1146
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2300(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1147
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1158
    :goto_1
    sput-boolean v4, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1159
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->takePicture()V
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2400(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 1160
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->startPreview()V
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2500(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 1161
    sput-boolean v3, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1162
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 1163
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    const-wide/16 v1, 0x7d0

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1600(Lcom/mediatek/engineermode/camera/CameraPreview;J)V

    .line 1164
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1149
    :cond_2
    const-string v0, "EM/Camera"

    const-string v1, "AFMode2Thread does not support fullscan mode."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1151
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1155
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 1156
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode2Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
