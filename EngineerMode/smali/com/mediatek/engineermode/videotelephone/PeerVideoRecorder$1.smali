.class Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$1;
.super Ljava/lang/Object;
.source "PeerVideoRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 69
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;

    const-string v3, "engineermode_vt_preferences"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "peer_video_recoder_service"

    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;

    #getter for: Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mCheckBoxVideoRecService:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->access$000(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v2, "peer_video_recoder_format"

    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;

    #getter for: Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->mFormat:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;->access$100(Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder$1;->this$0:Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 80
    return-void
.end method
