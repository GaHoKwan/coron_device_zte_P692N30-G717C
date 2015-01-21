.class public Lcom/hf/preference/SettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAboutPreference:Landroid/preference/Preference;

.field private mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

.field private mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

.field private mChangeBgPreference:Landroid/preference/Preference;

.field private mCheckNewVersionPreference:Landroid/preference/Preference;

.field private mOldTempValue:Ljava/lang/String;

.field private mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

.field private mPreferCategory:Landroid/preference/PreferenceCategory;

.field private mRecommendPreference:Landroid/preference/Preference;

.field private mRootView:Landroid/widget/ListView;

.field private mSharePreference:Landroid/preference/ListPreference;

.field private mTemperaturePreference:Landroid/preference/ListPreference;

.field private mUpdatePreference:Landroid/preference/ListPreference;

.field private mUpdateValue:Ljava/lang/String;

.field private mWarningPreference:Landroid/preference/ListPreference;

.field private mWindPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/preference/SettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hf/preference/SettingActivity;->mOldTempValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/preference/SettingActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/hf/preference/SettingActivity;->mOldTempValue:Ljava/lang/String;

    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 187
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/preference/SettingActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/hf/preference/SettingActivity$1;-><init>(Lcom/hf/preference/SettingActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f080027

    const/4 v7, 0x7

    const v11, 0x7f030025

    const v10, 0x7f030022

    const/4 v9, 0x0

    .line 51
    invoke-virtual {p0, v7}, Lcom/hf/preference/SettingActivity;->requestWindowFeature(I)Z

    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 54
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Lcom/hf/preference/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 56
    .local v5, window:Landroid/view/Window;
    const v6, 0x7f03000b

    invoke-virtual {v5, v7, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 57
    const v6, 0x7f0b0032

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 58
    .local v4, title:Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 61
    .local v3, preferences:Landroid/content/SharedPreferences;
    const v6, 0x7f080134

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mOldTempValue:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v8}, Lcom/hf/preference/SettingActivity;->setTitle(I)V

    .line 63
    const/high16 v6, 0x7f05

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/hf/preference/SettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mRootView:Landroid/widget/ListView;

    .line 65
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mRootView:Landroid/widget/ListView;

    const v7, 0x7f09000a

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 66
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mRootView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/hf/preference/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020076

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mRootView:Landroid/widget/ListView;

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 68
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mRootView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/hf/preference/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200da

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const v6, 0x7f080134

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mTemperaturePreference:Landroid/preference/ListPreference;

    .line 71
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mTemperaturePreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    const v6, 0x7f080135

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mUpdatePreference:Landroid/preference/ListPreference;

    .line 74
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mUpdatePreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mUpdatePreference:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mUpdateValue:Ljava/lang/String;

    .line 77
    const v6, 0x7f080136

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mSharePreference:Landroid/preference/ListPreference;

    .line 78
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mSharePreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const v6, 0x7f080137

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mWarningPreference:Landroid/preference/ListPreference;

    .line 81
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mWarningPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    const v6, 0x7f080138

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mChangeBgPreference:Landroid/preference/Preference;

    .line 84
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mChangeBgPreference:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    const v6, 0x7f08013f

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mAboutPreference:Landroid/preference/Preference;

    .line 89
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mAboutPreference:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    const v6, 0x7f08013a

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mRecommendPreference:Landroid/preference/Preference;

    .line 92
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mRecommendPreference:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    const v6, 0x7f080140

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mWindPreference:Landroid/preference/Preference;

    .line 95
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mWindPreference:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    const-string v6, "prefer_set"

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mPreferCategory:Landroid/preference/PreferenceCategory;

    .line 100
    new-instance v6, Lcom/hf/UI/HFCheckBoxPreference;

    invoke-direct {v6, p0}, Lcom/hf/UI/HFCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    .line 101
    const v6, 0x7f08013e

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, notifyKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v2}, Lcom/hf/UI/HFCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 103
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v10}, Lcom/hf/UI/HFCheckBoxPreference;->setLayoutResource(I)V

    .line 104
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/hf/UI/HFCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 105
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    const v7, 0x7f0800b9

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setTitle(I)V

    .line 106
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    const v7, 0x7f0800ba

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setSummary(I)V

    .line 107
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 108
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mPreferCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 109
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, p0}, Lcom/hf/UI/HFCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-static {p0}, Lcom/hf/utils/Util;->isZTE(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    :cond_0
    new-instance v6, Lcom/hf/UI/HFCheckBoxPreference;

    invoke-direct {v6, p0}, Lcom/hf/UI/HFCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

    .line 113
    const v6, 0x7f08013c

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, bootKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v0}, Lcom/hf/UI/HFCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 115
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v10}, Lcom/hf/UI/HFCheckBoxPreference;->setLayoutResource(I)V

    .line 116
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/hf/UI/HFCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 117
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

    const v7, 0x7f0800b7

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setTitle(I)V

    .line 118
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

    const v7, 0x7f0800b8

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setSummary(I)V

    .line 119
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 120
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mPreferCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/hf/preference/SettingActivity;->mBootPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 122
    new-instance v6, Lcom/hf/UI/HFCheckBoxPreference;

    invoke-direct {v6, p0}, Lcom/hf/UI/HFCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

    .line 123
    const v6, 0x7f08013d

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, bootLocationKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v1}, Lcom/hf/UI/HFCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v10}, Lcom/hf/UI/HFCheckBoxPreference;->setLayoutResource(I)V

    .line 126
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v11}, Lcom/hf/UI/HFCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 127
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

    const v7, 0x7f0800bb

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setTitle(I)V

    .line 128
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

    const v7, 0x7f0800bc

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setSummary(I)V

    .line 129
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/hf/UI/HFCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 130
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mPreferCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/hf/preference/SettingActivity;->mAutoLocationPreference:Lcom/hf/UI/HFCheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    .end local v0           #bootKey:Ljava/lang/String;
    .end local v1           #bootLocationKey:Ljava/lang/String;
    :cond_1
    const v6, 0x7f080139

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hf/preference/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/preference/SettingActivity;->mCheckNewVersionPreference:Landroid/preference/Preference;

    .line 135
    iget-object v6, p0, Lcom/hf/preference/SettingActivity;->mCheckNewVersionPreference:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 149
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 150
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 158
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 159
    const-string v2, "onPreferenceChange"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPreferenceChange; newValue = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 162
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/hf/preference/SettingActivity;->mTemperaturePreference:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 163
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/hf/preference/SettingActivity;->sendBroadcast(Ljava/lang/String;)V

    .line 183
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 164
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/hf/preference/SettingActivity;->mUpdatePreference:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 166
    iget-object v3, p0, Lcom/hf/preference/SettingActivity;->mUpdateValue:Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "update_hours"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v2, "com.hf.CHANGE_UPDATE_TIME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/hf/preference/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/hf/preference/SettingActivity;->mUpdateValue:Ljava/lang/String;

    goto :goto_0

    .line 173
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/hf/preference/SettingActivity;->mOpenNotifyPreference:Lcom/hf/UI/HFCheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 174
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 175
    .local v1, value:Z
    if-eqz v1, :cond_4

    .line 176
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.hf.NOTIFY_OPEN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hf/preference/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    :cond_4
    invoke-static {p0}, Lcom/hf/manager/WeatherNotifyManager;->cancleWeatherNotify(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/hf/preference/SettingActivity;->mChangeBgPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hf/UI/UpdateBackgroundActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hf/preference/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/hf/preference/SettingActivity;->mAboutPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hf/UI/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hf/preference/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/hf/preference/SettingActivity;->mRecommendPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_3

    .line 219
    invoke-static {}, Lcom/hf/ad/AdManager;->instance()Lcom/hf/ad/AdManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/hf/ad/AdManager;->showWall(Landroid/app/Activity;)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/hf/preference/SettingActivity;->mWindPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_4

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hf/UI/WindIntroduceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hf/preference/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/hf/preference/SettingActivity;->mCheckNewVersionPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 224
    invoke-static {p0}, Lcom/hf/utils/UpdateUtils;->onForceUpdate(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 142
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 143
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 156
    return-void
.end method
