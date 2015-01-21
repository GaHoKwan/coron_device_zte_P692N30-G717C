.class Lcom/android/camera/manager/SettingManager$1;
.super Landroid/os/Handler;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/SettingManager;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/SettingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 68
    invoke-static {}, Lcom/android/camera/manager/SettingManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    iget-object v0, v0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    iget-object v0, v0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    iget-object v1, v1, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
