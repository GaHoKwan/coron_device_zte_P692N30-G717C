.class Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;
.super Ljava/lang/Thread;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AFMode4Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x3ec

    const/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1271
    const-string v2, "EM/Camera"

    const-string v3, "mAFMode4Thread"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1273
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1327
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    const-string v2, "EM/Camera"

    const-string v3, "mAFMode4Thread->judgeSdcard()"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->setAeAwlock(Z)V
    invoke-static {v2, v6}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1700(Lcom/mediatek/engineermode/camera/CameraPreview;Z)V

    .line 1279
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1282
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1283
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->judgeSdcard()Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$400(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1284
    const-string v2, "EM/Camera"

    const-string v3, "No SdCard in AFMode4Thread!"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0}, Ljava/lang/Thread;->stop()V

    .line 1287
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v2, v6}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 1288
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    const/4 v3, 0x4

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAFEngMode:I
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2702(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 1289
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "auto"

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1290
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v2, v7}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    .line 1291
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1294
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mAutoFocCalback:Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2300(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$AutoFocusCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1299
    :goto_1
    sput-boolean v7, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1300
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "auto"

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1301
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1303
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->takePicture()V
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2400(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 1304
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2808(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    .line 1305
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->startPreview()V
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2500(Lcom/mediatek/engineermode/camera/CameraPreview;)V

    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1307
    .local v0, dateTaken:J
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mImgBucketName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3200(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

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

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsoName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3500(Lcom/mediatek/engineermode/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mRawCptFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3102(Lcom/mediatek/engineermode/camera/CameraPreview;Ljava/lang/String;)Ljava/lang/String;

    .line 1308
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "rawfname"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

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

    .line 1309
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1312
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1314
    sput-boolean v6, Lcom/mediatek/engineermode/camera/CameraPreview;->sCanBack:Z

    .line 1315
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    const-wide/16 v3, 0x7d0

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->mySleep(J)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1600(Lcom/mediatek/engineermode/camera/CameraPreview;J)V

    .line 1317
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsOnPause:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2100(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2800(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v2

    if-ge v2, v8, :cond_4

    .line 1318
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1320
    :cond_4
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mPos:I
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2800(Lcom/mediatek/engineermode/camera/CameraPreview;)I

    move-result v2

    if-lt v2, v8, :cond_0

    .line 1321
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v2, v7}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1002(Lcom/mediatek/engineermode/camera/CameraPreview;Z)Z

    .line 1322
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    iget-object v3, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mCameraParam:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1800(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "auto"

    #calls: Lcom/mediatek/engineermode/camera/CameraPreview;->isSupportaf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1900(Lcom/mediatek/engineermode/camera/CameraPreview;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1323
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$3000(Lcom/mediatek/engineermode/camera/CameraPreview;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1325
    :cond_5
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v2}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1296
    .end local v0           #dateTaken:J
    :cond_6
    const-string v2, "EM/Camera"

    const-string v3, "AFMode4Thread does not support auto mode."

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/CameraPreview$AFMode4Thread;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #setter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsFocused:I
    invoke-static {v2, v6}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$2202(Lcom/mediatek/engineermode/camera/CameraPreview;I)I

    goto/16 :goto_1
.end method
