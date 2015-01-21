.class Lcom/android/settings/VipModeSettingsActivity$2;
.super Ljava/lang/Object;
.source "VipModeSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VipModeSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VipModeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VipModeSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    #getter for: Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreference:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings/VipModeSettingsActivity;->access$000(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    #getter for: Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreference:Landroid/preference/RingtonePreference;
    invoke-static {v2}, Lcom/android/settings/VipModeSettingsActivity;->access$000(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/android/settings/VipModeSettingsActivity;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/VipModeSettingsActivity;->access$400(Lcom/android/settings/VipModeSettingsActivity;ILandroid/preference/Preference;I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    #getter for: Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreferenceSecond:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings/VipModeSettingsActivity;->access$200(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    #getter for: Lcom/android/settings/VipModeSettingsActivity;->mRingtonePreferenceSecond:Landroid/preference/RingtonePreference;
    invoke-static {v2}, Lcom/android/settings/VipModeSettingsActivity;->access$200(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v2

    const/4 v3, 0x3

    #calls: Lcom/android/settings/VipModeSettingsActivity;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/VipModeSettingsActivity;->access$400(Lcom/android/settings/VipModeSettingsActivity;ILandroid/preference/Preference;I)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    #getter for: Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreference:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings/VipModeSettingsActivity;->access$100(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    const/16 v1, 0x40

    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    #getter for: Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreference:Landroid/preference/RingtonePreference;
    invoke-static {v2}, Lcom/android/settings/VipModeSettingsActivity;->access$100(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v2

    const/4 v3, 0x2

    #calls: Lcom/android/settings/VipModeSettingsActivity;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/VipModeSettingsActivity;->access$400(Lcom/android/settings/VipModeSettingsActivity;ILandroid/preference/Preference;I)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    #getter for: Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreferenceSecond:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings/VipModeSettingsActivity;->access$300(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    const/16 v1, 0x80

    iget-object v2, p0, Lcom/android/settings/VipModeSettingsActivity$2;->this$0:Lcom/android/settings/VipModeSettingsActivity;

    #getter for: Lcom/android/settings/VipModeSettingsActivity;->mNotificationPreferenceSecond:Landroid/preference/RingtonePreference;
    invoke-static {v2}, Lcom/android/settings/VipModeSettingsActivity;->access$300(Lcom/android/settings/VipModeSettingsActivity;)Landroid/preference/RingtonePreference;

    move-result-object v2

    const/4 v3, 0x4

    #calls: Lcom/android/settings/VipModeSettingsActivity;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/VipModeSettingsActivity;->access$400(Lcom/android/settings/VipModeSettingsActivity;ILandroid/preference/Preference;I)V

    .line 158
    :cond_3
    return-void
.end method
