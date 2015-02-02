.class Lcom/mediatek/engineermode/audio/AudioAudioLogger$3;
.super Landroid/os/Handler;
.source "AudioAudioLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/audio/AudioAudioLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$3;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$3;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    #getter for: Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->access$600(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$3;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    #getter for: Lcom/mediatek/engineermode/audio/AudioAudioLogger;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mediatek/engineermode/audio/AudioAudioLogger;->access$600(Lcom/mediatek/engineermode/audio/AudioAudioLogger;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$3;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    const v1, 0x7f0801a0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$3;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    const v1, 0x7f08019f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
