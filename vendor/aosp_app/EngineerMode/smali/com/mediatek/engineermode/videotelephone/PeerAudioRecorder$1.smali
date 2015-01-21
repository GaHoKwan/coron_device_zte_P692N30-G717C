.class Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$1;
.super Ljava/lang/Object;
.source "PeerAudioRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;

    const-string v3, "engineermode_vt_preferences"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "peer_audio_recoder_service"

    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;

    #getter for: Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mPeerAudioRecorServ:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->access$000(Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v2, "peer_audio_recoder_format"

    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;

    iget-object v3, v3, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mFormat:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 81
    return-void
.end method
