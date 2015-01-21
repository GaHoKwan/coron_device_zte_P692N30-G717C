.class public Lcom/android/settings/SubCardRingtoneSettings;
.super Landroid/preference/PreferenceActivity;
.source "SubCardRingtoneSettings.java"


# static fields
.field private static final KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "SUBSCRIPTION_ID"

.field private static final TAG:Ljava/lang/String; = "SubCardRingtoneSettings"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNotificationPreference:Landroid/preference/RingtonePreference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/RingtonePreference;

.field private mSub:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mSub:I

    .line 69
    new-instance v0, Lcom/android/settings/SubCardRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SubCardRingtoneSettings$1;-><init>(Lcom/android/settings/SubCardRingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mRingtonePreference:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SubCardRingtoneSettings;)Landroid/preference/RingtonePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mNotificationPreference:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SubCardRingtoneSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mSub:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SubCardRingtoneSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SubCardRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SubCardRingtoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 8
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 160
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x1040406

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 163
    const v0, 0x1040404

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 179
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SubCardRingtoneSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 167
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 169
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 173
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SUBSCRIPTION_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mSub:I

    .line 91
    iget v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mSub:I

    if-nez v0, :cond_1

    .line 93
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 102
    :goto_0
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    iput-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mRingtonePreference:Landroid/preference/RingtonePreference;

    .line 103
    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RingtonePreference;

    iput-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mNotificationPreference:Landroid/preference/RingtonePreference;

    .line 104
    iget v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mSub:I

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mRingtonePreference:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v3}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mNotificationPreference:Landroid/preference/RingtonePreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 114
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/settings/SubCardRingtoneSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SubCardRingtoneSettings$2;-><init>(Lcom/android/settings/SubCardRingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 143
    return-void

    .line 98
    :cond_1
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 109
    :cond_2
    iget v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mSub:I

    if-ne v0, v3, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mRingtonePreference:Landroid/preference/RingtonePreference;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/SubCardRingtoneSettings;->mNotificationPreference:Landroid/preference/RingtonePreference;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/SubCardRingtoneSettings;->lookupRingtoneNames()V

    .line 150
    return-void
.end method
