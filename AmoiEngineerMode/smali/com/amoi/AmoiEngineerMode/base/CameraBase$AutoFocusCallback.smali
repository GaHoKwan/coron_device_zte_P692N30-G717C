.class public final Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraBase.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/CameraBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "success"
    .parameter "camera"

    .prologue
    const/4 v1, 0x0

    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$600(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$300(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->rawPictureCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v2}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$400(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->jpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$500(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 222
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0600ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$AutoFocusCallback;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->focus_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$200(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
