.class Lcom/android/camera/VoiceManager$MainHandler;
.super Landroid/os/Handler;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VoiceManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/VoiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/VoiceManager$MainHandler;->this$0:Lcom/android/camera/VoiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VoiceManager;Lcom/android/camera/VoiceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/camera/VoiceManager$MainHandler;-><init>(Lcom/android/camera/VoiceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 104
    const-string v0, "VoiceManager"

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

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VoiceManager$MainHandler;->this$0:Lcom/android/camera/VoiceManager;

    #calls: Lcom/android/camera/VoiceManager;->notifyUserGuideIfNeed()V
    invoke-static {v0}, Lcom/android/camera/VoiceManager;->access$100(Lcom/android/camera/VoiceManager;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VoiceManager$MainHandler;->this$0:Lcom/android/camera/VoiceManager;

    #calls: Lcom/android/camera/VoiceManager;->notifyStateChangedIfNeed()V
    invoke-static {v0}, Lcom/android/camera/VoiceManager;->access$200(Lcom/android/camera/VoiceManager;)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/VoiceManager$MainHandler;->this$0:Lcom/android/camera/VoiceManager;

    iget-object v1, p0, Lcom/android/camera/VoiceManager$MainHandler;->this$0:Lcom/android/camera/VoiceManager;

    #getter for: Lcom/android/camera/VoiceManager;->mCommandId:I
    invoke-static {v1}, Lcom/android/camera/VoiceManager;->access$300(Lcom/android/camera/VoiceManager;)I

    move-result v1

    #calls: Lcom/android/camera/VoiceManager;->notifyCommandIfNeed(I)V
    invoke-static {v0, v1}, Lcom/android/camera/VoiceManager;->access$400(Lcom/android/camera/VoiceManager;I)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/VoiceManager$MainHandler;->this$0:Lcom/android/camera/VoiceManager;

    iget-object v1, p0, Lcom/android/camera/VoiceManager$MainHandler;->this$0:Lcom/android/camera/VoiceManager;

    #getter for: Lcom/android/camera/VoiceManager;->mVoiceCommandId:I
    invoke-static {v1}, Lcom/android/camera/VoiceManager;->access$500(Lcom/android/camera/VoiceManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VoiceManager;->playVoiceCommandSound(I)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method