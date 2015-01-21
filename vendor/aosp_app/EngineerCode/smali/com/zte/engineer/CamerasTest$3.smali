.class Lcom/zte/engineer/CamerasTest$3;
.super Landroid/os/Handler;
.source "CamerasTest.java"


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
    .line 297
    iput-object p1, p0, Lcom/zte/engineer/CamerasTest$3;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 300
    const-string v1, "CamerasTest"

    const-string v2, ">>>>mHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 322
    :goto_0
    const-string v1, "CamerasTest"

    const-string v2, "<<<<mHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 303
    :pswitch_0
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest$3;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-object v1, v1, Lcom/zte/engineer/CamerasTest;->mShotbtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 306
    :pswitch_1
    const-string v1, "CamerasTest"

    const-string v2, "CAMERA_OPEN_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest$3;->this$0:Lcom/zte/engineer/CamerasTest;

    iget-object v1, v1, Lcom/zte/engineer/CamerasTest;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 309
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest$3;->this$0:Lcom/zte/engineer/CamerasTest;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/zte/engineer/CamerasTest;->mCameraOpenThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "CamerasTest"

    const-string v2, "mCameraOpenThread.join--Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :pswitch_2
    const-string v1, "CamerasTest"

    const-string v2, "CAMERA_OPEN_FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest$3;->this$0:Lcom/zte/engineer/CamerasTest;

    const-string v2, "cannot connect camera devices!"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 317
    iget-object v1, p0, Lcom/zte/engineer/CamerasTest$3;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-virtual {v1}, Lcom/zte/engineer/CamerasTest;->showErrorAndFinish()V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
