.class Lcom/android/settings/SubCardRingtoneSettings$2;
.super Ljava/lang/Object;
.source "SubCardRingtoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SubCardRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SubCardRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SubCardRingtoneSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 116
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mSub:I
    invoke-static {v0}, Lcom/android/settings/SubCardRingtoneSettings;->access$200(Lcom/android/settings/SubCardRingtoneSettings;)I

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mRingtonePreference:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings/SubCardRingtoneSettings;->access$000(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    iget-object v1, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mRingtonePreference:Landroid/preference/RingtonePreference;
    invoke-static {v1}, Lcom/android/settings/SubCardRingtoneSettings;->access$000(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;

    move-result-object v1

    #calls: Lcom/android/settings/SubCardRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings/SubCardRingtoneSettings;->access$300(Lcom/android/settings/SubCardRingtoneSettings;ILandroid/preference/Preference;I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mNotificationPreference:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings/SubCardRingtoneSettings;->access$100(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    iget-object v1, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mNotificationPreference:Landroid/preference/RingtonePreference;
    invoke-static {v1}, Lcom/android/settings/SubCardRingtoneSettings;->access$100(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;

    move-result-object v1

    #calls: Lcom/android/settings/SubCardRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v4, v1, v4}, Lcom/android/settings/SubCardRingtoneSettings;->access$300(Lcom/android/settings/SubCardRingtoneSettings;ILandroid/preference/Preference;I)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mRingtonePreference:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings/SubCardRingtoneSettings;->access$000(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mRingtonePreference:Landroid/preference/RingtonePreference;
    invoke-static {v2}, Lcom/android/settings/SubCardRingtoneSettings;->access$000(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;

    move-result-object v2

    #calls: Lcom/android/settings/SubCardRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/SubCardRingtoneSettings;->access$300(Lcom/android/settings/SubCardRingtoneSettings;ILandroid/preference/Preference;I)V

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mNotificationPreference:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings/SubCardRingtoneSettings;->access$100(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    const/16 v1, 0x200

    iget-object v2, p0, Lcom/android/settings/SubCardRingtoneSettings$2;->this$0:Lcom/android/settings/SubCardRingtoneSettings;

    #getter for: Lcom/android/settings/SubCardRingtoneSettings;->mNotificationPreference:Landroid/preference/RingtonePreference;
    invoke-static {v2}, Lcom/android/settings/SubCardRingtoneSettings;->access$100(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;

    move-result-object v2

    #calls: Lcom/android/settings/SubCardRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/settings/SubCardRingtoneSettings;->access$300(Lcom/android/settings/SubCardRingtoneSettings;ILandroid/preference/Preference;I)V

    goto :goto_0
.end method
