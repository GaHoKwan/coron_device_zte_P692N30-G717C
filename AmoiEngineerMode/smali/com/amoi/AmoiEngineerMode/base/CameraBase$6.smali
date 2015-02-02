.class Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;
.super Ljava/lang/Object;
.source "CameraBase.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/CameraBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "paramArrayOfByte"
    .parameter "paramCamera"

    .prologue
    .line 189
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/Button;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakeButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$100(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/sdcard/CameraBase_picture_test.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, localFile:Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 194
    .local v0, bos:Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 195
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 196
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    const v5, 0x7f0600d9

    invoke-virtual {v4, v5}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0           #bos:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, localException:Ljava/lang/Exception;
    const-string v3, "CameraBase"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    const v5, 0x7f0600da

    invoke-virtual {v4, v5}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->showToast(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 201
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$6;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    invoke-virtual {v3}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->retakePicture()V

    goto :goto_0
.end method
