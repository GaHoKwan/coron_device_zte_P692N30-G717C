.class Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;
.super Ljava/lang/Object;
.source "AudioAudioLogger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/audio/AudioAudioLogger;->onCreate(Landroid/os/Bundle;)V
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
    .line 133
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;->this$0:Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 137
    new-instance v0, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/audio/AudioAudioLogger$1$1;-><init>(Lcom/mediatek/engineermode/audio/AudioAudioLogger$1;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method
