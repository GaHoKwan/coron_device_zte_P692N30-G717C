.class Lcom/amoi/AmoiEngineerMode/base/CameraBase$1;
.super Landroid/os/Handler;
.source "CameraBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/CameraBase;->initHandler()V
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
    .line 80
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraBase;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraBase;->takeButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->access$000(Lcom/amoi/AmoiEngineerMode/base/CameraBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
