.class Lcom/mediatek/settings/VTAdvancedSettingEx$1;
.super Landroid/content/BroadcastReceiver;
.source "VTAdvancedSettingEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VTAdvancedSettingEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/VTAdvancedSettingEx;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/VTAdvancedSettingEx;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$1;->this$0:Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 127
    .local v1, count:I
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 128
    const-string v2, "Settings/VTAdvancedSettingEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Activity finished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$1;->this$0:Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 135
    .end local v1           #count:I
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v1       #count:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$1;->this$0:Lcom/mediatek/settings/VTAdvancedSettingEx;

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$1;->this$0:Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/mediatek/settings/VTAdvancedSettingEx;->m3GSimList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$002(Lcom/mediatek/settings/VTAdvancedSettingEx;Ljava/util/List;)Ljava/util/List;

    .line 132
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx$1;->this$0:Lcom/mediatek/settings/VTAdvancedSettingEx;

    #calls: Lcom/mediatek/settings/VTAdvancedSettingEx;->setScreenEnabled()V
    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->access$100(Lcom/mediatek/settings/VTAdvancedSettingEx;)V

    goto :goto_0
.end method
