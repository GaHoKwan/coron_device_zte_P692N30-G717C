.class public Lcom/android/email/activity/setup/MailboxSettings;
.super Landroid/preference/PreferenceActivity;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;
    }
.end annotation


# static fields
.field private static final BUNDLE_ACCOUNT:Ljava/lang/String; = "MailboxSettings.account"

.field private static final BUNDLE_MAILBOX:Ljava/lang/String; = "MailboxSettings.mailbox"

.field private static final BUNDLE_NEEDS_SAVE:Ljava/lang/String; = "MailboxSettings.needsSave"

.field private static final EXTRA_MAILBOX_ID:Ljava/lang/String; = "MAILBOX_ID"

.field private static final PREF_CHECK_FREQUENCY_KEY:Ljava/lang/String; = "check_frequency"

.field private static final PREF_SYNC_WINDOW_KEY:Ljava/lang/String; = "sync_window"


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mNeedsSave:Z

.field private final mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSyncIntervalPref:Landroid/preference/ListPreference;

.field private mSyncLookbackPref:Landroid/preference/ListPreference;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 310
    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/MailboxSettings$1;-><init>(Lcom/android/email/activity/setup/MailboxSettings;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/MailboxSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/MailboxSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updateObjects()V

    return-void
.end method

.method private enablePreferences(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 144
    return-void
.end method

.method private getSyncInterval()I
    .locals 2

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 291
    .local v0, syncInterval:I
    :goto_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 293
    :cond_0
    const/4 v0, -0x2

    .line 295
    :cond_1
    return v0

    .line 283
    .end local v0           #syncInterval:I
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-nez v1, :cond_3

    .line 285
    const/4 v0, -0x1

    .restart local v0       #syncInterval:I
    goto :goto_0

    .line 287
    .end local v0           #syncInterval:I
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .restart local v0       #syncInterval:I
    goto :goto_0
.end method

.method private getSyncLookback()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 306
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    goto :goto_0
.end method

.method private onDataLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 240
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 245
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v2, v3}, Lcom/android/email/FolderProperties;->getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, mailboxName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 248
    const v2, 0x7f0801cd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 257
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getSyncInterval()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getSyncLookback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->updatePreferenceSummary()V

    .line 267
    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 268
    return-void

    .line 250
    :cond_1
    const v2, 0x7f0801ce

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private saveToDatabase()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-boolean v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "Email"

    const-string v1, "Saving mailbox settings..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 371
    iget-object v4, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 372
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 373
    .local v3, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 375
    .local v5, context:Landroid/content/Context;
    new-instance v0, Lcom/android/email/activity/setup/MailboxSettings$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/MailboxSettings$2;-><init>(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0
.end method

.method public static setupLookbackPreferenceOptions(Landroid/content/Context;Landroid/preference/ListPreference;Lcom/android/emailcommon/provider/Account;)V
    .locals 12
    .parameter "context"
    .parameter "pref"
    .parameter "account"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 209
    .local v6, resources:Landroid/content/res/Resources;
    const v8, 0x7f060004

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 211
    .local v0, entries:[Ljava/lang/CharSequence;
    const v8, 0x7f060005

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 214
    .local v7, values:[Ljava/lang/CharSequence;
    iget-wide v8, p2, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 215
    iget-wide v8, p2, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    .line 216
    .local v3, policy:Lcom/android/emailcommon/provider/Policy;
    if-eqz v3, :cond_1

    iget v8, v3, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-eqz v8, :cond_1

    .line 217
    iget v8, v3, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    add-int/lit8 v2, v8, 0x1

    .line 219
    .local v2, maxEntry:I
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 220
    .local v4, policyEntries:[Ljava/lang/CharSequence;
    new-array v5, v2, [Ljava/lang/CharSequence;

    .line 221
    .local v5, policyValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 222
    aget-object v8, v0, v1

    aput-object v8, v4, v1

    .line 223
    aget-object v8, v7, v1

    aput-object v8, v5, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_0
    move-object v0, v4

    .line 227
    move-object v7, v5

    .line 231
    .end local v1           #i:I
    .end local v2           #maxEntry:I
    .end local v3           #policy:Lcom/android/emailcommon/provider/Policy;
    .end local v4           #policyEntries:[Ljava/lang/CharSequence;
    .end local v5           #policyValues:[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p1, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public static final start(Landroid/app/Activity;J)V
    .locals 2
    .parameter "parent"
    .parameter "mailboxId"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/MailboxSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private updateObjects()V
    .locals 5

    .prologue
    .line 339
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    .local v0, syncInterval:I
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 341
    .local v1, syncLookback:I
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 342
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v0, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 346
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v1, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 351
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v0, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 349
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v1, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    goto :goto_0
.end method

.method private updatePreferenceSummary()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "MAILBOX_ID"

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 97
    .local v3, mailboxId:J
    cmp-long v5, v3, v9

    if-nez v5, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const v5, 0x7f050007

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 104
    const-string v5, "check_frequency"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    .line 107
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 109
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 110
    .local v2, entryValues:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    array-length v5, v1

    invoke-static {v1, v7, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 111
    iget-object v6, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    array-length v5, v2

    invoke-static {v2, v7, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entryValues:[Ljava/lang/CharSequence;
    :cond_2
    const-string v5, "sync_window"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    .line 117
    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncIntervalPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 123
    if-eqz p1, :cond_3

    .line 124
    const-string v5, "MailboxSettings.account"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/Account;

    iput-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 125
    const-string v5, "MailboxSettings.mailbox"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/Mailbox;

    iput-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 126
    const-string v5, "MailboxSettings.needsSave"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    .line 128
    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v5, :cond_4

    .line 129
    new-instance v6, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;-><init>(Lcom/android/email/activity/setup/MailboxSettings;J)V

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 135
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 136
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_0

    .line 131
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/email/activity/setup/MailboxSettings;->saveToDatabase()V

    .line 163
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 164
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 430
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/EmailActivity;->sEmailActivityResumed:Z

    .line 431
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 420
    sget-boolean v0, Lcom/android/email/activity/EmailActivity;->sEmailActivityResumed:Z

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 422
    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->clearRecordedList()V

    .line 425
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string v0, "MailboxSettings.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    const-string v0, "MailboxSettings.mailbox"

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    const-string v0, "MailboxSettings.needsSave"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->mNeedsSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    return-void
.end method
