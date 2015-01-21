.class Lcom/android/camera/actor/PhotoActor$MainHandler;
.super Landroid/os/Handler;
.source "PhotoActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$MainHandler;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->initializeAfterPreview()V

    .line 232
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->onPreviewStartDone()V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->onBurstSaveDone()V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->onImagePickSaveDone()V

    goto :goto_0

    .line 244
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->initializeAfterPreview()V

    goto :goto_0

    .line 247
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->restartPreview(Z)V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
