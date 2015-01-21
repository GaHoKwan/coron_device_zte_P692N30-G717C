.class Lcom/mediatek/voicecommand/adapter/JNITestAdapter$1;
.super Landroid/os/Handler;
.source "JNITestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/adapter/JNITestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voicecommand/adapter/JNITestAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/adapter/JNITestAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter$1;->this$0:Lcom/mediatek/voicecommand/adapter/JNITestAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    :pswitch_0
    return-void

    .line 32
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter$1;->this$0:Lcom/mediatek/voicecommand/adapter/JNITestAdapter;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    #calls: Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->sendVoiceTrainingCommand(ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->access$000(Lcom/mediatek/voicecommand/adapter/JNITestAdapter;ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter$1;->this$0:Lcom/mediatek/voicecommand/adapter/JNITestAdapter;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    #calls: Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->sendVoiceUICommand(ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->access$100(Lcom/mediatek/voicecommand/adapter/JNITestAdapter;ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
