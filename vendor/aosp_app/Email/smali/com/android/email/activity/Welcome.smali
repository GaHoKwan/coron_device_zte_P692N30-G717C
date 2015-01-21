.class public Lcom/android/email/activity/Welcome;
.super Landroid/app/Activity;
.source "Welcome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;
    }
.end annotation


# static fields
.field private static final EXTRA_DEBUG_PANE_MODE:Ljava/lang/String; = "DEBUG_PANE_MODE"

.field private static final EXTRA_FROM_ACCOUNT_MANAGER:Ljava/lang/String; = "FROM_ACCOUNT_MANAGER"

.field private static final MAILBOX_FINDER_EXECUTE_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "Welcome"

.field public static final VIEW_MAILBOX_INTENT_URL_PATH:Ljava/lang/String; = "/view/mailbox"


# instance fields
.field private mAccountId:J

.field private mAccountUuid:Ljava/lang/String;

.field private mContext:Lcom/android/email/activity/Welcome;

.field private mFindInboxAndFinish:Z

.field private mInboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private final mMailboxFinderCallback:Lcom/android/email/activity/MailboxFinder$Callback;

.field private mMailboxFinderDelayTime:I

.field private mMailboxId:J

.field private mMessageId:J

.field private mNeedResolveAccount:Z

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mWaitingForSyncView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 122
    iput-boolean v1, p0, Lcom/android/email/activity/Welcome;->mFindInboxAndFinish:Z

    .line 125
    iput v1, p0, Lcom/android/email/activity/Welcome;->mMailboxFinderDelayTime:I

    .line 513
    new-instance v0, Lcom/android/email/activity/Welcome$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/Welcome$1;-><init>(Lcom/android/email/activity/Welcome;)V

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mMailboxFinderCallback:Lcom/android/email/activity/MailboxFinder$Callback;

    .line 570
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/Welcome;Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/email/activity/Welcome;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/Welcome;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/Welcome;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/Welcome;)Lcom/android/email/activity/Welcome;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mContext:Lcom/android/email/activity/Welcome;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/Welcome;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->resolveAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/Welcome;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->startEmailActivity()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/email/activity/Welcome;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/email/activity/Welcome;->mNeedResolveAccount:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/email/activity/Welcome;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    return-wide p1
.end method

.method public static actionOpenAccountInbox(Landroid/app/Activity;J)V
    .locals 1
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 165
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public static actionStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "fromActivity"

    .prologue
    .line 133
    const-class v1, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public static actionSyncInboxAndFinish(Landroid/app/Activity;J)V
    .locals 3
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 172
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FROM_ACCOUNT_MANAGER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public static createAccountShortcutIntent(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "uuid"
    .parameter "mailboxId"

    .prologue
    .line 182
    const-string v1, "/view/mailbox"

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 184
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountUuid(Landroid/net/Uri$Builder;Ljava/lang/String;)V

    .line 185
    invoke-static {v0, p2, p3}, Lcom/android/emailcommon/utility/IntentUtilities;->setMailboxId(Landroid/net/Uri$Builder;J)V

    .line 186
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 142
    const-string v1, "/view/mailbox"

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 144
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 145
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    .line 153
    const-string v1, "/view/mailbox"

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 155
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 156
    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/utility/IntentUtilities;->setMailboxId(Landroid/net/Uri$Builder;J)V

    .line 157
    invoke-static {v0, p5, p6}, Lcom/android/emailcommon/utility/IntentUtilities;->setMessageId(Landroid/net/Uri$Builder;J)V

    .line 158
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static getDebugPaneMode(Landroid/content/Intent;)I
    .locals 3
    .parameter "i"

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 199
    const-string v2, "DEBUG_PANE_MODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, s:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const/4 v2, 0x1

    .line 206
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 202
    .restart local v1       #s:Ljava/lang/String;
    :cond_0
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    const/4 v2, 0x2

    goto :goto_0

    .line 206
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resolveAccount()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    .line 439
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 440
    .local v2, numAccount:I
    if-nez v2, :cond_0

    .line 442
    const-string v3, "Welcome"

    const-string v4, "There\'s no account configured , start setup new account"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 444
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 481
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    iget-object v5, p0, Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/Welcome;->resolveAccountId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .line 448
    .local v0, accountId:J
    cmp-long v3, v0, v7

    if-eqz v3, :cond_1

    .line 450
    const-string v3, "Welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the given account is valid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_1
    iput-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    .line 459
    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-static {v3, v4}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_3

    .line 463
    const-string v3, "Welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAccountId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t have inbox start inbox finder."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->startInboxLookup()V

    goto :goto_0

    .line 453
    :cond_1
    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    iget-object v5, p0, Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/Welcome;->tryGetDeafultAccountId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .line 454
    iput-wide v7, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    .line 455
    iput-wide v7, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    .line 456
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;

    goto :goto_1

    .line 470
    :cond_2
    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_3

    .line 471
    const-string v3, "Welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAccountId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a NormalAccount, start setup new account"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 474
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 479
    :cond_3
    const-string v3, "Welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAccountId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startEmailActivity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->startEmailActivity()V

    goto/16 :goto_0
.end method

.method static resolveAccountId(Landroid/content/Context;JLjava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "inputAccountId"
    .parameter "inputUuid"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    .line 385
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 388
    invoke-static {p0, p3}, Lcom/android/emailcommon/provider/Account;->getAccountIdFromUuid(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 411
    .local v0, accountId:J
    :goto_0
    return-wide v0

    .line 390
    .end local v0           #accountId:J
    :cond_0
    cmp-long v4, p1, v5

    if-eqz v4, :cond_3

    .line 392
    const-wide/high16 v4, 0x1000

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->isValidId(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    :cond_1
    move-wide v0, p1

    .restart local v0       #accountId:J
    goto :goto_0

    .line 396
    .end local v0           #accountId:J
    :cond_2
    const-wide/16 v0, -0x1

    .restart local v0       #accountId:J
    goto :goto_0

    .line 401
    .end local v0           #accountId:J
    :cond_3
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getLastUsedAccountId()J

    move-result-wide v2

    .line 402
    .local v2, lastUsedId:J
    cmp-long v4, v2, v5

    if-eqz v4, :cond_4

    .line 403
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Account;->isValidId(Landroid/content/Context;J)Z

    move-result v4

    if-nez v4, :cond_4

    .line 405
    const-wide/16 v2, -0x1

    .line 406
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lcom/android/email/Preferences;->setLastUsedAccountId(J)V

    .line 409
    :cond_4
    move-wide v0, v2

    .restart local v0       #accountId:J
    goto :goto_0
.end method

.method private startEmailActivity()V
    .locals 9

    .prologue
    const-wide/16 v2, -0x1

    .line 489
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 490
    iget-wide v1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/EmailActivity;->createOpenMessageIntent(Landroid/app/Activity;JJJ)Landroid/content/Intent;

    move-result-object v8

    .line 509
    .local v8, i:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/email/activity/Welcome;->startActivity(Landroid/content/Intent;)V

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 511
    return-void

    .line 491
    .end local v8           #i:Landroid/content/Intent;
    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 493
    const/4 v0, 0x2

    const-string v1, "Welcome:StartEmailActivity:ShowMessageList"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 496
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    iget-wide v2, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/email/activity/EmailActivity;->createOpenMailboxIntent(Landroid/app/Activity;JJ)Landroid/content/Intent;

    move-result-object v8

    .restart local v8       #i:Landroid/content/Intent;
    goto :goto_0

    .line 499
    .end local v8           #i:Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mContext:Lcom/android/email/activity/Welcome;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 500
    .local v7, action:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mContext:Lcom/android/email/activity/Welcome;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, query:Ljava/lang/String;
    const-wide/high16 v1, 0x1000

    const-wide/16 v3, -0x2

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/EmailActivity;->createLocalSearchIntent(Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 504
    .restart local v8       #i:Landroid/content/Intent;
    goto :goto_0

    .line 505
    .end local v5           #query:Ljava/lang/String;
    .end local v8           #i:Landroid/content/Intent;
    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/EmailActivity;->createOpenAccountIntent(Landroid/app/Activity;J)Landroid/content/Intent;

    move-result-object v8

    .restart local v8       #i:Landroid/content/Intent;
    goto :goto_0
.end method

.method private startInboxLookup()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 341
    const-string v1, "Email"

    const-string v2, "Inbox not found.  Starting mailbox finder..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->stopInboxLookup()V

    .line 343
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 345
    .local v0, pref:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const v1, 0x7f08000b

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 347
    const v1, 0x7f08000c

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 348
    const-string v1, "checkIsLowStorage canceled startInboxLookup due to low storage"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 349
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Preferences;->setLastUsedAccountId(J)V

    .line 374
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    iget v4, p0, Lcom/android/email/activity/Welcome;->mMailboxFinderDelayTime:I

    invoke-static {v1, v2, v3, v5, v4}, Lcom/android/email/activity/MailboxFinder;->getInstance(Landroid/content/Context;JII)Lcom/android/email/activity/MailboxFinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 354
    iput v5, p0, Lcom/android/email/activity/Welcome;->mMailboxFinderDelayTime:I

    .line 355
    iget-object v1, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    iget-object v2, p0, Lcom/android/email/activity/Welcome;->mMailboxFinderCallback:Lcom/android/email/activity/MailboxFinder$Callback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxFinder;->registerCallback(Lcom/android/email/activity/MailboxFinder$Callback;)V

    .line 356
    iget-object v1, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxFinder;->startLookup()Z

    .line 358
    iget-boolean v1, p0, Lcom/android/email/activity/Welcome;->mFindInboxAndFinish:Z

    if-eqz v1, :cond_1

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 360
    iput-boolean v5, p0, Lcom/android/email/activity/Welcome;->mFindInboxAndFinish:Z

    goto :goto_0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/Welcome;->mWaitingForSyncView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 366
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/Welcome;->mWaitingForSyncView:Landroid/view/View;

    .line 368
    iget-object v1, p0, Lcom/android/email/activity/Welcome;->mWaitingForSyncView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private stopInboxLookup()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 335
    :cond_0
    return-void
.end method

.method static tryGetDeafultAccountId(Landroid/content/Context;JLjava/lang/String;)J
    .locals 2
    .parameter "context"
    .parameter "inputAccountId"
    .parameter "inputUuid"

    .prologue
    .line 420
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    const v0, 0x7f0801d5

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 423
    :cond_1
    const-string v0, "Welcome"

    const-string v1, " inputAccountId not found, return the default account "

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 212
    const/4 v2, 0x1

    const-string v3, "MessageList FPS test start time"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->performance(ILjava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 227
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 228
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 257
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 241
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->startExchangeService(Landroid/content/Context;)V

    .line 243
    iput-object p0, p0, Lcom/android/email/activity/Welcome;->mContext:Lcom/android/email/activity/Welcome;

    .line 245
    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    .line 246
    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->getMailboxIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    .line 247
    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->getMessageIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    .line 248
    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->getAccountUuidFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;

    .line 249
    invoke-static {v1}, Lcom/android/email/activity/Welcome;->getDebugPaneMode(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Lcom/android/email/activity/UiUtilities;->setDebugPaneMode(I)V

    .line 250
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "FROM_ACCOUNT_MANAGER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/activity/Welcome;->mFindInboxAndFinish:Z

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->resolveAccount()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-nez v0, :cond_0

    .line 264
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 268
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->unregisterCallback()V

    .line 310
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 311
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f012b

    if-ne v0, v1, :cond_0

    .line 274
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 299
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 286
    iget-boolean v0, p0, Lcom/android/email/activity/Welcome;->mNeedResolveAccount:Z

    if-eqz v0, :cond_0

    .line 287
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/email/activity/Welcome;->mMailboxFinderDelayTime:I

    .line 288
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->resolveAccount()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/Welcome;->mNeedResolveAccount:Z

    .line 291
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 321
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    invoke-static {p0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 324
    .local v0, ops:Landroid/app/ActivityOptions;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-super {p0, p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 325
    return-void
.end method
