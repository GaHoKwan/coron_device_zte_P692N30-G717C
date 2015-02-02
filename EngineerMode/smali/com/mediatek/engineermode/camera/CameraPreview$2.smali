.class Lcom/mediatek/engineermode/camera/CameraPreview$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/camera/CameraPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/camera/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/CameraPreview$2;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    const-string v0, "EM/Camera"

    const-string v1, "mCaptureBtn key down!"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$2;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mIsTest:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1000(Lcom/mediatek/engineermode/camera/CameraPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v2

    .line 232
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 233
    const-string v0, "EM/Camera"

    const-string v1, "mCaptureBtn key up!"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/CameraPreview$2;->this$0:Lcom/mediatek/engineermode/camera/CameraPreview;

    #getter for: Lcom/mediatek/engineermode/camera/CameraPreview;->mProgressDlgHdl:Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;
    invoke-static {v0}, Lcom/mediatek/engineermode/camera/CameraPreview;->access$1100(Lcom/mediatek/engineermode/camera/CameraPreview;)Lcom/mediatek/engineermode/camera/CameraPreview$ProgressDlgHandler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
