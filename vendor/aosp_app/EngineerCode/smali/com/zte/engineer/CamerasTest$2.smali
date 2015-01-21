.class Lcom/zte/engineer/CamerasTest$2;
.super Ljava/lang/Object;
.source "CamerasTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/CamerasTest;->onCreate(Landroid/os/Bundle;)V
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
    .line 166
    iput-object p1, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 168
    const-string v0, "CamerasTest"

    const-string v1, ">>>>>setOnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mPreviewing:Z
    invoke-static {v0}, Lcom/zte/engineer/CamerasTest;->access$300(Lcom/zte/engineer/CamerasTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/zte/engineer/CamerasTest;->access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/zte/engineer/CamerasTest;->access$400(Lcom/zte/engineer/CamerasTest;)Landroid/media/MediaActionSound;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->play(I)V

    .line 171
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    #getter for: Lcom/zte/engineer/CamerasTest;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/zte/engineer/CamerasTest;->access$000(Lcom/zte/engineer/CamerasTest;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 172
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    #setter for: Lcom/zte/engineer/CamerasTest;->mPreviewing:Z
    invoke-static {v0, v3}, Lcom/zte/engineer/CamerasTest;->access$302(Lcom/zte/engineer/CamerasTest;Z)Z

    .line 174
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-object v0, v0, Lcom/zte/engineer/CamerasTest;->mShotbtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-object v0, v0, Lcom/zte/engineer/CamerasTest;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    :goto_0
    const-string v0, "CamerasTest"

    const-string v1, "<<<<<setOnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$2;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
