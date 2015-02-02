.class Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$2;
.super Ljava/lang/Object;
.source "AudioSpeechLoggerX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$2;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 246
    const-string v1, "EM/Audio"

    const-string v2, "On Click mDumpSpeechInfo button."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v1, 0x61

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setAudioCommand(II)I

    move-result v0

    .line 248
    .local v0, ret:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 249
    const-string v1, "EM/Audio"

    const-string v2, "set mDumpSpeechInfo parameter failed"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$2;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    const v2, 0x7f0801a0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$2;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    const v2, 0x7f08019f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
