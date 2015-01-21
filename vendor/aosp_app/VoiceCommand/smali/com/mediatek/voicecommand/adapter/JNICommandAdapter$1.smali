.class Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$1;
.super Landroid/os/Handler;
.source "JNICommandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$1;->this$0:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$1;->this$0:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;

    #calls: Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->handleNotifyVoiceError(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->access$000(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Landroid/os/Message;)V

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$1;->this$0:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;

    #calls: Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->handleNotifyVoiceUI(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->access$100(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Landroid/os/Message;)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$1;->this$0:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;

    #calls: Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->handleNotifyVoiceTraining(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->access$200(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Landroid/os/Message;)V

    goto :goto_0

    .line 206
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$1;->this$0:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;

    #calls: Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->handleNotifyVoiceRecognition(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->access$300(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Landroid/os/Message;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
