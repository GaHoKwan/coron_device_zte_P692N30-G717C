.class public Lcom/android/email/activity/setup/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;,
        Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;
    }
.end annotation


# static fields
.field private static final PERFERENCE_KEY_AUTO_CLEAR_CACHE:Ljava/lang/String; = "auto_clear_cache"

.field private static final PERFERENCE_KEY_VIPSETTINGS:Ljava/lang/String; = "vip_settings"

.field private static final PERFERENCE_KEY_VIP_MEMBERS:Ljava/lang/String; = "vip_members"

.field private static final PREFERENCE_CATEGORY_KEY:Ljava/lang/String; = "category_general_preferences"

.field private static final PREFERENCE_KEY_AUTO_ADVANCE:Ljava/lang/String; = "auto_advance"

.field private static final PREFERENCE_KEY_CLEAR_TRUSTED_SENDERS:Ljava/lang/String; = "clear_trusted_senders"

.field private static final PREFERENCE_KEY_REPLY_ALL:Ljava/lang/String; = "reply_all"

.field private static final PREFERENCE_KEY_TEXT_ZOOM:Ljava/lang/String; = "text_zoom"


# instance fields
.field private mAutoAdvance:Landroid/preference/ListPreference;

.field private mAutoClearCache:Landroid/preference/CheckBoxPreference;

.field private mCountObserver:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;

.field private mMemberCount:I

.field private mPreferences:Lcom/android/email/Preferences;

.field mSizeSummaries:[Ljava/lang/CharSequence;

.field private mTextZoom:Landroid/preference/ListPreference;

.field private mVipCategory:Landroid/preference/PreferenceCategory;

.field private mVipMembers:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/GeneralPreferences;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mMemberCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/GeneralPreferences;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mMemberCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/GeneralPreferences;)Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mVipMembers:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/GeneralPreferences;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->updateVipMemberCount()V

    return-void
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    .line 155
    const-string v0, "auto_advance"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    .line 156
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 157
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string v0, "text_zoom"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    .line 160
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 161
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string v0, "auto_clear_cache"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoClearCache:Landroid/preference/CheckBoxPreference;

    .line 167
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoClearCache:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getAutoClearCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoClearCache:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->registerVipCountObserver()V

    .line 174
    return-void
.end method

.method private registerVipCountObserver()V
    .locals 5

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 212
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 213
    new-instance v1, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;-><init>(Lcom/android/email/activity/setup/GeneralPreferences;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mCountObserver:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;

    .line 214
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mCountObserver:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->updateVipMemberCount()V

    .line 218
    :cond_0
    return-void
.end method

.method private reloadDynamicSummaries()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    .line 182
    .local v1, textZoomIndex:I
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 187
    .local v0, summary:Ljava/lang/CharSequence;
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v2, v1

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method private unregisterVipCountObserver()V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 222
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mCountObserver:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mCountObserver:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberCountObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    :cond_0
    return-void
.end method

.method private updateVipMemberCount()V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/android/email/activity/setup/GeneralPreferences$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences$1;-><init>(Lcom/android/email/activity/setup/GeneralPreferences;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 250
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "AndroidMail.Main"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 86
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "category_general_preferences"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 91
    .local v0, pc:Landroid/preference/PreferenceCategory;
    const-string v1, "reply_all"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    .end local v0           #pc:Landroid/preference/PreferenceCategory;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 197
    const-string v0, "vip_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mVipCategory:Landroid/preference/PreferenceCategory;

    .line 198
    new-instance v0, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;-><init>(Lcom/android/email/activity/setup/GeneralPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mVipMembers:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;

    .line 199
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mVipMembers:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 200
    iget-object v0, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mVipCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mVipMembers:Lcom/android/email/activity/setup/GeneralPreferences$VipMemberPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, key:Ljava/lang/String;
    const-string v3, "auto_advance"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/Preferences;->setAutoAdvanceDirection(I)V

    .line 126
    :goto_0
    return v1

    .line 108
    .restart local p2
    :cond_0
    const-string v3, "text_zoom"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/Preferences;->setTextZoom(I)V

    .line 110
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    goto :goto_0

    .line 115
    .restart local p2
    :cond_1
    const-string v3, "auto_clear_cache"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    iget-object v2, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v2, v1}, Lcom/android/email/Preferences;->setAutoClearCache(Z)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/service/MailService;->actionClearOldAttachment(Landroid/content/Context;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v3, v2}, Lcom/android/email/Preferences;->setAutoClearCache(Z)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/service/MailService;->actionCancelClearOldAttachment(Landroid/content/Context;)V

    goto :goto_0

    .restart local p2
    :cond_3
    move v1, v2

    .line 126
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, key:Ljava/lang/String;
    const-string v3, "clear_trusted_senders"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v3}, Lcom/android/email/Preferences;->clearTrustedSenders()V

    .line 139
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0801f3

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 141
    const/4 v2, 0x1

    goto :goto_0

    .line 143
    :cond_2
    const-string v3, "vip_members"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-wide/high16 v4, 0x1000

    invoke-static {v3, v4, v5}, Lcom/mediatek/email/emailvip/activity/VipListActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 146
    .local v1, vipActivityIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->loadSettings()V

    .line 98
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 99
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/email/activity/setup/GeneralPreferences;->unregisterVipCountObserver()V

    .line 207
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 208
    return-void
.end method
