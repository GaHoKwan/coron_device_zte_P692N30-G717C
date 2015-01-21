.class Lcom/mediatek/voicecommand/mgr/NativeDataManager$1;
.super Landroid/os/Handler;
.source "NativeDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/mgr/NativeDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voicecommand/mgr/NativeDataManager;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager$1;->this$0:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 92
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager$1;->this$0:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    #getter for: Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceUI:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    invoke-static {v0}, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->access$000(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-virtual {v1, v0}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 95
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager$1;->this$0:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    #getter for: Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceTraining:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    invoke-static {v0}, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->access$100(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-virtual {v1, v0}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 98
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager$1;->this$0:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    #getter for: Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceRecognize:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    invoke-static {v0}, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->access$200(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-virtual {v1, v0}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 102
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager$1;->this$0:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    #getter for: Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceServiceInternal:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    invoke-static {v0}, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->access$300(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-virtual {v1, v0}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_3
    .end sparse-switch
.end method
