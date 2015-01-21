.class Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultipleSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/MultipleSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipleSimReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/MultipleSimActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;Lcom/mediatek/settings/MultipleSimActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/app/Activity;->removeDialog(I)V

    .line 112
    const-string v6, "simId"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 113
    .local v5, slotId:I
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver  slotId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 114
    const-string v6, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v7, "BroadcastReceiver: network mode change failed! restore the old value."

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 116
    const-string v6, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 117
    .local v3, oldMode:I
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/mediatek/settings/MultipleSimActivity;->access$200(Lcom/mediatek/settings/MultipleSimActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->getNetworkModeName(I)Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/mediatek/settings/MultipleSimActivity;->access$300(Lcom/mediatek/settings/MultipleSimActivity;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver, oldMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 120
    const-string v6, "NETWORK_MODE"

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/settings/MultipleSimActivity;->access$400(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v7, "setValue  to oldMode "

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .local v4, p:Landroid/preference/Preference;
    move-object v6, v4

    .line 124
    check-cast v6, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v6}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 125
    check-cast v4, Landroid/preference/ListPreference;

    .end local v4           #p:Landroid/preference/Preference;
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    .end local v2           #i:I
    .end local v3           #oldMode:I
    .end local v5           #slotId:I
    :cond_0
    :goto_1
    return-void

    .line 122
    .restart local v2       #i:I
    .restart local v3       #oldMode:I
    .restart local v4       #p:Landroid/preference/Preference;
    .restart local v5       #slotId:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2           #i:I
    .end local v3           #oldMode:I
    .end local v4           #p:Landroid/preference/Preference;
    .end local v5           #slotId:I
    :cond_2
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 134
    :cond_3
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver, action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 135
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V
    invoke-static {v6}, Lcom/mediatek/settings/MultipleSimActivity;->access$500(Lcom/mediatek/settings/MultipleSimActivity;)V

    goto :goto_1

    .line 136
    :cond_4
    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 137
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 138
    .local v1, count:I
    if-ge v1, v10, :cond_0

    .line 139
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Activity finished"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 140
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 142
    .end local v1           #count:I
    :cond_5
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
