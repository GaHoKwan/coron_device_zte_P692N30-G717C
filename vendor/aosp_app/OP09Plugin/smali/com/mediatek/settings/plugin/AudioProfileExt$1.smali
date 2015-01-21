.class Lcom/mediatek/settings/plugin/AudioProfileExt$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/AudioProfileExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/AudioProfileExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/AudioProfileExt;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/settings/plugin/AudioProfileExt$1;->this$0:Lcom/mediatek/settings/plugin/AudioProfileExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/AudioProfileExt$1;->getResultCode()I

    move-result v1

    .line 107
    .local v1, resultCode:I
    const-string v2, "AudioProfileExt09"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "com.mediatek.ct.csm.action.ACTION_SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/mediatek/settings/plugin/AudioProfileExt$1;->this$0:Lcom/mediatek/settings/plugin/AudioProfileExt;

    #calls: Lcom/mediatek/settings/plugin/AudioProfileExt;->hideProgress()V
    invoke-static {v2}, Lcom/mediatek/settings/plugin/AudioProfileExt;->access$000(Lcom/mediatek/settings/plugin/AudioProfileExt;)V

    .line 110
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/mediatek/settings/plugin/AudioProfileExt$1;->this$0:Lcom/mediatek/settings/plugin/AudioProfileExt;

    const v3, 0x7f09006a

    #calls: Lcom/mediatek/settings/plugin/AudioProfileExt;->showInfoAsToast(I)V
    invoke-static {v2, v3}, Lcom/mediatek/settings/plugin/AudioProfileExt;->access$100(Lcom/mediatek/settings/plugin/AudioProfileExt;I)V

    .line 121
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #resultCode:I
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #resultCode:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/plugin/AudioProfileExt$1;->this$0:Lcom/mediatek/settings/plugin/AudioProfileExt;

    const v3, 0x7f09006b

    #calls: Lcom/mediatek/settings/plugin/AudioProfileExt;->showInfoAsToast(I)V
    invoke-static {v2, v3}, Lcom/mediatek/settings/plugin/AudioProfileExt;->access$100(Lcom/mediatek/settings/plugin/AudioProfileExt;I)V

    .line 114
    const-string v2, "AudioProfileExt09"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send sms failed! resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/plugin/AudioProfileExt$1;->this$0:Lcom/mediatek/settings/plugin/AudioProfileExt;

    #calls: Lcom/mediatek/settings/plugin/AudioProfileExt;->updateCrbtPreference()V
    invoke-static {v2}, Lcom/mediatek/settings/plugin/AudioProfileExt;->access$200(Lcom/mediatek/settings/plugin/AudioProfileExt;)V

    goto :goto_0
.end method
