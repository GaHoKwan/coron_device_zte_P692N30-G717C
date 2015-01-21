.class public Lcom/mediatek/settings/plugin/DeviceInfoSettingsExt;
.super Lcom/mediatek/settings/ext/DefaultDeviceInfoSettingsExt;
.source "DeviceInfoSettingsExt.java"


# static fields
.field private static final E_PUSH_KEY:Ljava/lang/String; = "cdma_epush"

.field private static final KEY_STATUS_INFO:Ljava/lang/String; = "status_info"

.field private static final KEY_STATUS_INFO_GEMINI:Ljava/lang/String; = "status_info_gemini"

.field private static final TAG:Ljava/lang/String; = "DeviceInfoSettingsExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mediatek/settings/ext/DefaultDeviceInfoSettingsExt;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DeviceInfoSettingsExt;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private getEpushLayout(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    new-instance v0, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    .local v0, pref:Landroid/preference/PreferenceScreen;
    const-string v1, "cdma_epush"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/mediatek/settings/plugin/DeviceInfoSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/mediatek/settings/plugin/DeviceInfoSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    return-object v0
.end method

.method private setEpushEnabledOrNot(Landroid/preference/Preference;)V
    .locals 5
    .parameter "preferenceScreen"

    .prologue
    const/4 v4, 0x0

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.ctc.epush"

    const-string v3, "com.ctc.epush.IndexActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/mediatek/settings/plugin/DeviceInfoSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 98
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public addEpushPreference(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/DeviceInfoSettingsExt;->getEpushLayout(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v1

    .line 64
    .local v1, preferenceScreen:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 65
    const v0, 0x7fffffff

    .line 67
    .local v0, order:I
    const-string v2, "status_info_gemini"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 71
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/DeviceInfoSettingsExt;->setEpushEnabledOrNot(Landroid/preference/Preference;)V

    .line 75
    .end local v0           #order:I
    :cond_0
    return-void
.end method
