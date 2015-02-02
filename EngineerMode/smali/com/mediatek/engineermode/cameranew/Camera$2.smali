.class Lcom/mediatek/engineermode/cameranew/Camera$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$2;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 834
    :try_start_0
    const-string v1, "test/camera"

    const-string v2, "mCameraOpenThread start"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v1, "client.appmode"

    const-string v2, "MtkEng"

    invoke-static {v1, v2}, Landroid/hardware/Camera;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$2;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$2;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$2;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #getter for: Lcom/mediatek/engineermode/cameranew/Camera;->mCameraId:I
    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/cameranew/Util;->openCamera(Landroid/app/Activity;I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/engineermode/cameranew/ActivityBase;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Lcom/mediatek/engineermode/cameranew/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/engineermode/cameranew/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 843
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, e:Lcom/mediatek/engineermode/cameranew/CameraHardwareException;
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$2;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mOpenCameraFail:Z
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5602(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    goto :goto_0

    .line 840
    .end local v0           #e:Lcom/mediatek/engineermode/cameranew/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 841
    .local v0, e:Lcom/mediatek/engineermode/cameranew/CameraDisabledException;
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$2;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    #setter for: Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDisabled:Z
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5702(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    goto :goto_0
.end method
