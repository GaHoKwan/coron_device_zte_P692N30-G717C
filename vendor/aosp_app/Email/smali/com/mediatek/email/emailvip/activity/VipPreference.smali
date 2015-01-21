.class public Lcom/mediatek/email/emailvip/activity/VipPreference;
.super Ljava/lang/Object;
.source "VipPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;,
        Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final KEY_VIPMEMBER:Ljava/lang/String; = "vip_members"

.field private static final KEY_VIPNOTIFICATION:Ljava/lang/String; = "vip_notification"

.field private static final KEY_VIPRINGTONE:Ljava/lang/String; = "vip_ringtone"

.field private static final KEY_VIPSETTINGS:Ljava/lang/String; = "vip_settings"

.field private static final KEY_VIPVIBRATE:Ljava/lang/String; = "vip_vibarate"

.field private static final RINGTONE_DEFAULT:Ljava/lang/String; = "content://settings/system/notification_sound"

.field private static final VIP_SELECTION:Ljava/lang/String; = "accountKey =?"


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mContext:Landroid/content/Context;

.field private mCountObserver:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;

.field private mCountObserverRegistered:Z

.field private mMemberCount:I

.field private mVipCategory:Landroid/preference/PreferenceCategory;

.field private mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

.field private mVipNotify:Landroid/preference/CheckBoxPreference;

.field private mVipRingTone:Landroid/preference/RingtonePreference;

.field private mVipVibarate:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/email/emailvip/activity/VipPreference;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserverRegistered:Z

    .line 54
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    .line 56
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;-><init>(Lcom/mediatek/email/emailvip/activity/VipPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    .line 57
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    .line 58
    new-instance v0, Landroid/preference/RingtonePreference;

    invoke-direct {v0, p1}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    .line 59
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/emailvip/activity/VipPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mediatek/email/emailvip/activity/VipPreference;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/email/emailvip/activity/VipPreference;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/email/emailvip/activity/VipPreference;)Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/email/emailvip/activity/VipPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mMemberCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/email/emailvip/activity/VipPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mMemberCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/email/emailvip/activity/VipPreference;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipPreference;->getVipMemberCount(Landroid/content/Context;)V

    return-void
.end method

.method private getVipMemberCount(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 166
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipPreference$2;

    invoke-direct {v0, p0}, Lcom/mediatek/email/emailvip/activity/VipPreference$2;-><init>(Lcom/mediatek/email/emailvip/activity/VipPreference;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    return-void
.end method


# virtual methods
.method public addVipPreferences(Landroid/preference/PreferenceScreen;IJ)V
    .locals 5
    .parameter "preferenceScreen"
    .parameter "order"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, p4}, Lcom/mediatek/email/emailvip/activity/VipListActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, VipActivityIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vip_settings"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 69
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 72
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    const-string v3, "vip_members"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 74
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    new-instance v3, Lcom/mediatek/email/emailvip/activity/VipPreference$1;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/email/emailvip/activity/VipPreference$1;-><init>(Lcom/mediatek/email/emailvip/activity/VipPreference;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    const v3, 0x7f04005b

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 84
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    const-string v3, "vip_notification"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f08003a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 86
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f08003b

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 90
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 91
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    const-string v3, "vip_ringtone"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 93
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/R$styleable;->TogglePrefAttrs:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 94
    .local v1, a:Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 95
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    const-string v3, "content://settings/system/notification_sound"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080044

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 99
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    const-string v3, "vip_vibarate"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 101
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080045

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 102
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 103
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipMember:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 106
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 108
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 110
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    const-string v3, "vip_notification"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    const-string v3, "vip_notification"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setOrder(I)V

    .line 114
    return-void
.end method

.method public disposeVipPreferences()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserver:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserver:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserverRegistered:Z

    .line 154
    :cond_0
    return-void
.end method

.method public initVipPreferences(Lcom/android/emailcommon/provider/Account;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 6
    .parameter "account"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "vip_ringtone"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getVipRingtone()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 129
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 133
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/mediatek/email/emailvip/activity/VipPreference;->getVipMemberCount(Landroid/content/Context;)V

    .line 134
    new-instance v1, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v4}, Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;-><init>(Lcom/mediatek/email/emailvip/activity/VipPreference;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserver:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;

    .line 136
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserver:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    iput-boolean v2, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserverRegistered:Z

    .line 139
    return-void

    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    move v1, v3

    .line 119
    goto :goto_0
.end method

.method public saveVipSettings(Lcom/android/emailcommon/provider/Account;I)I
    .locals 4
    .parameter "account"
    .parameter "accountFlags"

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipRingTone:Landroid/preference/RingtonePreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "vip_ringtone"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/Account;->setVipRingtone(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2000

    :goto_0
    or-int/2addr p2, v1

    .line 161
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mVipVibarate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x4000

    :cond_0
    or-int/2addr p2, v2

    .line 162
    return p2

    :cond_1
    move v1, v2

    .line 160
    goto :goto_0
.end method

.method public updateVipCount()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserverRegistered:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mCountObserver:Lcom/mediatek/email/emailvip/activity/VipPreference$VipMemberCountObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/email/emailvip/activity/VipPreference;->getVipMemberCount(Landroid/content/Context;)V

    .line 147
    :cond_0
    return-void
.end method
