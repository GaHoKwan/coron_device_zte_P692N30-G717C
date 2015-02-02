.class Lcom/mediatek/engineermode/audio/AudioAudioLogger$1$1;
.super Ljava/lang/Thread;
.source "AudioAudioLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1$1;->this$1:Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 140
    const/16 v1, 0x62

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    .line 141
    .local v0, ret:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 142
    const-string v1, "EM/Audio"

    const-string v2, "set DumpAudioDbgInfo parameter failed"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1$1;->this$1:Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;

    iget-object v1, v1, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    iget-object v1, v1, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1$1;->this$1:Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;

    iget-object v1, v1, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    iget-object v1, v1, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
