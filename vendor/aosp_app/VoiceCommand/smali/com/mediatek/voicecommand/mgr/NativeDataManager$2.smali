.class Lcom/mediatek/voicecommand/mgr/NativeDataManager$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 171
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager$2;->this$0:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 174
    new-instance v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v0}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 175
    .local v0, msg:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    const/16 v1, 0x2711

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 176
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const/4 v1, 0x2

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager$2;->this$0:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    #getter for: Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceServiceInternal:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    invoke-static {v1}, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->access$300(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 182
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    goto :goto_0
.end method
