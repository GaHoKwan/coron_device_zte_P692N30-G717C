.class public Lcom/mediatek/settings/ext/DefaultBatteryExt;
.super Ljava/lang/Object;
.source "DefaultBatteryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IBatteryExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/ext/DefaultBatteryExt$GetPowerSavingStatusTask;,
        Lcom/mediatek/settings/ext/DefaultBatteryExt$PowerSavingTASK;
    }
.end annotation


# static fields
.field private static final CAT_POWER_SAVING_STATUS_COMMAND:Ljava/lang/String; = "cat /data/.tp.settings"

.field private static final DISABLE_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

.field private static final ENABLE_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.conf"

.field private static final H_CHECK_POWER_SAVING_MESSAGE:I = 0x3e9

.field private static final H_UNCHECK_POWER_SAVING_MESSAGE:I = 0x3ea

.field private static final KEY_CPU_DTM:Ljava/lang/String; = "cpu_dtm"

.field private static final RES_IDENTIFIER_STRING:Ljava/lang/String; = "string"

.field private static final RES_ID_CPU_DTM_SUMMARY:Ljava/lang/String; = "cpu_dtm_summary"

.field private static final RES_ID_CPU_DTM_TITLE:Ljava/lang/String; = "cpu_dtm_title"

.field private static final TAG:Ljava/lang/String; = "DefaultBatteryExt"


# instance fields
.field private mCpuDtmPrefGroup:Landroid/preference/PreferenceGroup;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/mediatek/settings/ext/DefaultBatteryExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/ext/DefaultBatteryExt$1;-><init>(Lcom/mediatek/settings/ext/DefaultBatteryExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt;->mHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/ext/DefaultBatteryExt;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt;->mCpuDtmPrefGroup:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/ext/DefaultBatteryExt;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getResIdWithoutR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "resName"
    .parameter "resType"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public loadPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 5
    .parameter "context"
    .parameter "listGroup"

    .prologue
    .line 69
    iput-object p2, p0, Lcom/mediatek/settings/ext/DefaultBatteryExt;->mCpuDtmPrefGroup:Landroid/preference/PreferenceGroup;

    .line 70
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, powerSavingPrf:Landroid/preference/CheckBoxPreference;
    const-string v1, "cpu_dtm"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 72
    const-string v1, "cpu_dtm_title"

    const-string v2, "string"

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/settings/ext/DefaultBatteryExt;->getResIdWithoutR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    const-string v1, "cpu_dtm_summary"

    const-string v2, "string"

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/settings/ext/DefaultBatteryExt;->getResIdWithoutR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 79
    new-instance v1, Lcom/mediatek/settings/ext/DefaultBatteryExt$GetPowerSavingStatusTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/settings/ext/DefaultBatteryExt$GetPowerSavingStatusTask;-><init>(Lcom/mediatek/settings/ext/DefaultBatteryExt;Lcom/mediatek/settings/ext/DefaultBatteryExt$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "cat /data/.tp.settings"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    const-string v1, "DefaultBatteryExt"

    const-string v2, "Add power saving pref"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 83
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    const-string v4, "cpu_dtm"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, p2

    .line 88
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 89
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    .line 90
    .local v0, command:Ljava/lang/String;
    :goto_0
    const-string v4, "DefaultBatteryExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick : command is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v4, Lcom/mediatek/settings/ext/DefaultBatteryExt$PowerSavingTASK;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mediatek/settings/ext/DefaultBatteryExt$PowerSavingTASK;-><init>(Lcom/mediatek/settings/ext/DefaultBatteryExt;Lcom/mediatek/settings/ext/DefaultBatteryExt$1;)V

    new-array v5, v2, [Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :goto_1
    return v2

    .line 89
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

    goto :goto_0

    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    move v2, v3

    .line 94
    goto :goto_1
.end method
