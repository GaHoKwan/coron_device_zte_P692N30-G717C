.class public Lcom/android/email/activity/EmailActivity;
.super Landroid/app/Activity;
.source "EmailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/FragmentInstallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/EmailActivity$WaitingDialog;,
        Lcom/android/email/activity/EmailActivity$ControllerResult;
    }
.end annotation


# static fields
.field static final ACTION_BAR_CONTROLLER_LOADER_ID_BASE:I = 0xc8

.field public static final ACTION_LOCAL_SEARCH:Ljava/lang/String; = "com.android.email.action.LOCAL_SEARCH"

.field public static final ACTION_REMOTE_SEARCH:Ljava/lang/String; = "com.android.email.action.REMOTE_SEARCH"

.field private static final DIALOG_DISMISS_TIME:I = 0x7d0

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "ACCOUNT_ID"

.field public static final EXTRA_MAILBOX_ID:Ljava/lang/String; = "MAILBOX_ID"

.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "MESSAGE_ID"

.field public static final EXTRA_QUERY_FIELD:Ljava/lang/String; = "QUERY_FIELD"

.field public static final EXTRA_QUERY_STRING:Ljava/lang/String; = "QUERY_STRING"

.field static final KEY_USE_TWO_PANEL:Ljava/lang/String; = "EmailActivity.useTwoPanel"

.field public static final LOADER_ID_ACCOUNT_LIST:I = 0xc8

.field public static final LOADER_ID_ACCOUNT_TITLE:I = 0xc9

.field public static final LOADER_ID_MAILBOX_LIST:I = 0x65

.field public static final LOADER_ID_MESSAGE_LIST:I = 0x64

.field static final UI_CONTROLLER_LOADER_ID_BASE:I = 0x64

.field public static sEmailActivityResumed:Z

.field private static sLastFontScale:F

.field public static sRecordOpening:Z


# instance fields
.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mErrorBanner:Lcom/android/email/activity/BannerController;

.field private mHandler:Landroid/os/Handler;

.field private mLastErrorAccountId:J

.field private mRecordAccountId:J

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mUIController:Lcom/android/email/activity/UIControllerBase;

.field private mUseTwoPanel:Z

.field private mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/high16 v0, -0x4080

    sput v0, Lcom/android/email/activity/EmailActivity;->sLastFontScale:F

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/EmailActivity;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/EmailActivity;->mHandler:Landroid/os/Handler;

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/EmailActivity;->mRecordAccountId:J

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/EmailActivity;->mUseTwoPanel:Z

    .line 625
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/EmailActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/email/activity/EmailActivity;->mLastErrorAccountId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/EmailActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/email/activity/EmailActivity;->mLastErrorAccountId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/EmailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->dismissErrorMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/EmailActivity;)Lcom/android/email/activity/BannerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mErrorBanner:Lcom/android/email/activity/BannerController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/EmailActivity;)Lcom/android/email/activity/EmailActivity$WaitingDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/EmailActivity;Lcom/android/email/activity/EmailActivity$WaitingDialog;)Lcom/android/email/activity/EmailActivity$WaitingDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;

    return-object p1
.end method

.method public static createLocalSearchIntent(Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "fromActivity"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "query"
    .parameter "field"

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/EmailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 185
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 186
    const-string v1, "QUERY_STRING"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "QUERY_FIELD"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "com.android.email.action.LOCAL_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    return-object v0
.end method

.method public static createOpenAccountIntent(Landroid/app/Activity;J)Landroid/content/Intent;
    .locals 3
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 122
    const-class v1, Lcom/android/email/activity/EmailActivity;

    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, i:Landroid/content/Intent;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    :cond_0
    return-object v0
.end method

.method public static createOpenMailboxIntent(Landroid/app/Activity;JJ)Landroid/content/Intent;
    .locals 4
    .parameter "fromActivity"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const-wide/16 v2, -0x1

    .line 138
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 141
    :cond_1
    const-class v1, Lcom/android/email/activity/EmailActivity;

    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    return-object v0
.end method

.method public static createOpenMessageIntent(Landroid/app/Activity;JJJ)Landroid/content/Intent;
    .locals 4
    .parameter "fromActivity"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    const-wide/16 v2, -0x1

    .line 157
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p3, v2

    if-eqz v1, :cond_0

    cmp-long v1, p5, v2

    if-nez v1, :cond_1

    .line 158
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 160
    :cond_1
    const-class v1, Lcom/android/email/activity/EmailActivity;

    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 161
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 163
    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 164
    return-object v0
.end method

.method public static createRemoteSearchIntent(Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "fromActivity"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "query"
    .parameter "field"

    .prologue
    .line 202
    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v1

    const-string v2, "Can only search in normal accounts"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/EmailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    const-string v1, "QUERY_STRING"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "QUERY_FIELD"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "com.android.email.action.REMOTE_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    return-object v0
.end method

.method private dismissErrorMessage()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mErrorBanner:Lcom/android/email/activity/BannerController;

    invoke-virtual {v0}, Lcom/android/email/activity/BannerController;->dismiss()V

    .line 479
    return-void
.end method

.method private initFromIntent()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "ACCOUNT_ID"

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/EmailActivity;->mRecordAccountId:J

    .line 300
    invoke-static {p0, v0}, Lcom/android/email/MessageListContext;->forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/email/MessageListContext;

    move-result-object v3

    .line 301
    .local v3, viewContext:Lcom/android/email/MessageListContext;
    if-nez v3, :cond_0

    .line 302
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v4, "MESSAGE_ID"

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 308
    .local v1, messageId:J
    iget-object v4, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/email/activity/UIControllerBase;->open(Lcom/android/email/MessageListContext;J)V

    goto :goto_0
.end method

.method private initUIController()V
    .locals 2

    .prologue
    .line 221
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.email.action.REMOTE_SEARCH"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->showTwoPaneSearchResults(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/email/activity/UIControllerSearchTwoPane;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UIControllerSearchTwoPane;-><init>(Lcom/android/email/activity/EmailActivity;)V

    iput-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/android/email/activity/UIControllerTwoPane;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UIControllerTwoPane;-><init>(Lcom/android/email/activity/EmailActivity;)V

    iput-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    goto :goto_0

    .line 230
    :cond_1
    new-instance v0, Lcom/android/email/activity/UIControllerOnePane;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UIControllerOnePane;-><init>(Lcom/android/email/activity/EmailActivity;)V

    iput-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    goto :goto_0
.end method

.method private onFontScaleChangeDetected()V
    .locals 0

    .prologue
    .line 595
    invoke-static {}, Lcom/android/email/activity/MessageListItem;->resetDrawingCaches()V

    .line 596
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 457
    .local v0, keyCode:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmailActivity dispatchKeyevent event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2

    :cond_0
    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x51

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-ne v0, v1, :cond_2

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/UIControllerBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 470
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getUIController()Lcom/android/email/activity/UIControllerBase;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onBackPressed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UIControllerBase;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 443
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 449
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->dismissErrorMessage()V

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x7f0f0095
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, densityChanged:Z
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/EmailActivity;->mUseTwoPanel:Z

    .line 247
    if-eqz p1, :cond_0

    const-string v4, "EmailActivity.useTwoPanel"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/email/activity/EmailActivity;->mUseTwoPanel:Z

    if-eq v4, v5, :cond_0

    .line 249
    const/4 p1, 0x0

    .line 250
    const/4 v0, 0x1

    .line 253
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 256
    .local v3, fontScale:F
    sget v4, Lcom/android/email/activity/EmailActivity;->sLastFontScale:F

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    sget v4, Lcom/android/email/activity/EmailActivity;->sLastFontScale:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->onFontScaleChangeDetected()V

    .line 263
    :cond_3
    sput v3, Lcom/android/email/activity/EmailActivity;->sLastFontScale:F

    .line 265
    invoke-static {}, Lcom/android/email/FolderProperties;->removeInstance()V

    .line 268
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->initUIController()V

    .line 270
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 271
    iget-object v4, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v4}, Lcom/android/email/activity/UIControllerBase;->getLayoutId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 273
    iget-object v4, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v4}, Lcom/android/email/activity/UIControllerBase;->onActivityViewReady()V

    .line 275
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/EmailActivity;->mController:Lcom/android/email/Controller;

    .line 276
    new-instance v4, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/email/activity/EmailActivity$ControllerResult;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/email/activity/EmailActivity$ControllerResult;-><init>(Lcom/android/email/activity/EmailActivity;Lcom/android/email/activity/EmailActivity$1;)V

    invoke-direct {v4, v5, v6}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v4, p0, Lcom/android/email/activity/EmailActivity;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 278
    iget-object v4, p0, Lcom/android/email/activity/EmailActivity;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/EmailActivity;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 283
    const v4, 0x7f0f0095

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 284
    .local v2, errorMessage:Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 286
    .local v1, errorBannerHeight:I
    new-instance v4, Lcom/android/email/activity/BannerController;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/email/activity/BannerController;-><init>(Landroid/content/Context;Landroid/widget/TextView;I)V

    iput-object v4, p0, Lcom/android/email/activity/EmailActivity;->mErrorBanner:Lcom/android/email/activity/BannerController;

    .line 288
    if-eqz p1, :cond_4

    .line 289
    iget-object v4, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v4, p1}, Lcom/android/email/activity/UIControllerBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 293
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v4}, Lcom/android/email/activity/UIControllerBase;->onActivityCreated()V

    .line 294
    return-void

    .line 291
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/EmailActivity;->initFromIntent()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/email/activity/UIControllerBase;->onCreateOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 425
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

    .line 427
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/EmailActivity;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 428
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 429
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onActivityDestroy()V

    .line 430
    invoke-static {}, Lcom/android/email/activity/MessageListItemCoordinates;->resetCaches()V

    .line 431
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 432
    return-void
.end method

.method public onInstallFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onInstallFragment fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onInstallFragment(Landroid/app/Fragment;)V

    .line 328
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 392
    invoke-static {p0}, Lcom/android/emailcommon/utility/DataCollectUtils;->stopRecord(Landroid/content/Context;)V

    .line 397
    sget-boolean v1, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 399
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "com.android.email.action.REMOTE_SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    :cond_0
    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->clearRecordedList()V

    .line 406
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 408
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 409
    iget-object v1, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v1}, Lcom/android/email/activity/UIControllerBase;->onActivityPause()V

    .line 410
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/email/activity/UIControllerBase;->onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRemoveFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onRemoveFragment fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onRemoveFragment(Landroid/app/Fragment;)V

    .line 346
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 360
    iget-wide v1, p0, Lcom/android/email/activity/EmailActivity;->mRecordAccountId:J

    sget-boolean v3, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    invoke-static {p0, v1, v2, v3}, Lcom/android/emailcommon/utility/DataCollectUtils;->startRecord(Landroid/content/Context;JZ)V

    .line 361
    sput-boolean v4, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 362
    sput-boolean v4, Lcom/android/email/activity/EmailActivity;->sEmailActivityResumed:Z

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 369
    iget-object v1, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v1}, Lcom/android/email/activity/UIControllerBase;->onActivityResume()V

    .line 372
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 373
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "com.android.email.action.LOCAL_SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "QUERY_STRING"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/UIControllerBase;->onSearchRequested(Ljava/lang/String;)V

    .line 376
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 387
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSaveInstanceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 316
    const-string v0, "EmailActivity.useTwoPanel"

    iget-boolean v1, p0, Lcom/android/email/activity/EmailActivity;->mUseTwoPanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 318
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    .line 499
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSearchRequested"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UIControllerBase;->onSearchRequested(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 354
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onActivityStart()V

    .line 355
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 419
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->onActivityStop()V

    .line 420
    return-void
.end method

.method public onUninstallFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onUninstallFragment fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mUIController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->onUninstallFragment(Landroid/app/Fragment;)V

    .line 337
    return-void
.end method

.method public setRecordAccount(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 639
    iput-wide p1, p0, Lcom/android/email/activity/EmailActivity;->mRecordAccountId:J

    .line 640
    return-void
.end method

.method public showWaitingDialog()V
    .locals 4

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;

    if-eqz v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 606
    :cond_0
    new-instance v0, Lcom/android/email/activity/EmailActivity$WaitingDialog;

    invoke-direct {v0}, Lcom/android/email/activity/EmailActivity$WaitingDialog;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;

    .line 607
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;

    const-string v2, "waiting"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 612
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/EmailActivity$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/EmailActivity$1;-><init>(Lcom/android/email/activity/EmailActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
