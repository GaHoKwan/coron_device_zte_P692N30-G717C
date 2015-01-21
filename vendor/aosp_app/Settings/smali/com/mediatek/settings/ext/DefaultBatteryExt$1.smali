.class Lcom/mediatek/settings/ext/DefaultBatteryExt$1;
.super Landroid/os/Handler;
.source "DefaultBatteryExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/ext/DefaultBatteryExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/ext/DefaultBatteryExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/ext/DefaultBatteryExt;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt$1;->this$0:Lcom/mediatek/settings/ext/DefaultBatteryExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 46
    const-string v0, "DefaultBatteryExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt$1;->this$0:Lcom/mediatek/settings/ext/DefaultBatteryExt;

    #getter for: Lcom/mediatek/settings/ext/DefaultBatteryExt;->mCpuDtmPrefGroup:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/mediatek/settings/ext/DefaultBatteryExt;->access$000(Lcom/mediatek/settings/ext/DefaultBatteryExt;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt$1;->this$0:Lcom/mediatek/settings/ext/DefaultBatteryExt;

    #getter for: Lcom/mediatek/settings/ext/DefaultBatteryExt;->mCpuDtmPrefGroup:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/mediatek/settings/ext/DefaultBatteryExt;->access$000(Lcom/mediatek/settings/ext/DefaultBatteryExt;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "cpu_dtm"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt$1;->this$0:Lcom/mediatek/settings/ext/DefaultBatteryExt;

    #getter for: Lcom/mediatek/settings/ext/DefaultBatteryExt;->mCpuDtmPrefGroup:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/mediatek/settings/ext/DefaultBatteryExt;->access$000(Lcom/mediatek/settings/ext/DefaultBatteryExt;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt$1;->this$0:Lcom/mediatek/settings/ext/DefaultBatteryExt;

    #getter for: Lcom/mediatek/settings/ext/DefaultBatteryExt;->mCpuDtmPrefGroup:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/mediatek/settings/ext/DefaultBatteryExt;->access$000(Lcom/mediatek/settings/ext/DefaultBatteryExt;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "cpu_dtm"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
