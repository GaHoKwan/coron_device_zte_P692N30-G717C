.class Lcom/amoi/AmoiEngineerMode/base/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder$MyHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    .line 57
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder$MyHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder$MyHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    #getter for: Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->mUsers:I
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->access$000(Lcom/amoi/AmoiEngineerMode/base/CameraHolder;)I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/CameraHolder$MyHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/CameraHolder;

    #calls: Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->releaseCamera()V
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/base/CameraHolder;->access$100(Lcom/amoi/AmoiEngineerMode/base/CameraHolder;)V

    .line 72
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
