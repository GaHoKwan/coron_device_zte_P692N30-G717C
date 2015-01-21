.class Lcom/zte/engineer/CamerasTest$1;
.super Ljava/lang/Object;
.source "CamerasTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/CamerasTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/CamerasTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/CamerasTest;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 83
    const-string v5, "CamerasTest"

    const-string v6, ">>>>>mCameraOpenThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/zte/engineer/CamerasTest;->access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;

    move-result-object v5

    if-nez v5, :cond_2

    .line 86
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-object v6, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    iget v6, v6, Lcom/zte/engineer/CamerasTest;->mCameraID:I

    invoke-static {v6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    #setter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5, v6}, Lcom/zte/engineer/CamerasTest;->access$002(Lcom/zte/engineer/CamerasTest;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 87
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-object v6, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    iget v6, v6, Lcom/zte/engineer/CamerasTest;->mCameraID:I

    #calls: Lcom/zte/engineer/CamerasTest;->getCameraDisplayOrientation(I)I
    invoke-static {v5, v6}, Lcom/zte/engineer/CamerasTest;->access$100(Lcom/zte/engineer/CamerasTest;I)I

    move-result v0

    .line 88
    .local v0, angle:I
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/zte/engineer/CamerasTest;->access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 89
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/zte/engineer/CamerasTest;->access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 90
    .local v3, mParameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, fm:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 93
    const-string v5, "continuous-picture"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    const-string v5, "continuous-picture"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 103
    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 104
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 105
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v4

    .line 106
    .local v4, previewformats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 109
    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-virtual {v3, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 110
    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-virtual {v3, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 111
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    iget v5, v5, Lcom/zte/engineer/CamerasTest;->mCameraID:I

    if-ne v7, v5, :cond_4

    .line 114
    const-string v5, "off"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_1
    const-string v5, "CamerasTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "picture size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/zte/engineer/CamerasTest;->access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 122
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/zte/engineer/CamerasTest;->mCameraOpen:Z

    .line 124
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-object v5, v5, Lcom/zte/engineer/CamerasTest;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0           #angle:I
    .end local v2           #fm:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #mParameters:Landroid/hardware/Camera$Parameters;
    .end local v4           #previewformats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    const-string v5, "CamerasTest"

    const-string v6, "<<<<<mCameraOpenThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 97
    .restart local v0       #angle:I
    .restart local v2       #fm:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #mParameters:Landroid/hardware/Camera$Parameters;
    :cond_3
    :try_start_1
    const-string v5, "infinity"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const-string v5, "infinity"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 126
    .end local v0           #angle:I
    .end local v2           #fm:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #mParameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "CamerasTest"

    const-string v6, "mCameraOpenThread++++++Camera_open fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-object v5, v5, Lcom/zte/engineer/CamerasTest;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 115
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #angle:I
    .restart local v2       #fm:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #mParameters:Landroid/hardware/Camera$Parameters;
    .restart local v4       #previewformats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/zte/engineer/CamerasTest$1;->this$0:Lcom/zte/engineer/CamerasTest;

    iget v5, v5, Lcom/zte/engineer/CamerasTest;->mCameraID:I

    if-nez v5, :cond_1

    .line 118
    const-string v5, "on"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
