.class public Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;
.super Landroid/preference/PreferenceActivity;
.source "BackupRestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final MOBILE_CONNECTED:I

.field private final NO_CONNECTED:I

.field private final STATE_BACKUP:I

.field private final STATE_RESTORE:I

.field private final WIFI_CONNECTED:I

.field private mBackupMessage:Landroid/widget/TextView;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNoWifiDlg:Landroid/app/AlertDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSignInButton:Landroid/widget/Button;

.field private mSignInLayout:Landroid/widget/LinearLayout;

.field private mSignOutButton:Landroid/widget/Button;

.field private mSignOutLayout:Landroid/widget/LinearLayout;

.field private mState:I

.field public mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->WIFI_CONNECTED:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->MOBILE_CONNECTED:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->NO_CONNECTED:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->STATE_BACKUP:I

    .line 55
    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->STATE_RESTORE:I

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->updateAccount()V

    return-void
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->initView()V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mState:I

    return v0
.end method

.method private bindService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 159
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 160
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0900d8

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 162
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 164
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;-><init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    return-void
.end method

.method private createNetworkPromptDlg()V
    .locals 5

    .prologue
    .line 91
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->initDlgLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 92
    .local v1, layout:Landroid/widget/LinearLayout;
    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 94
    .local v0, checkBox:Landroid/widget/CheckBox;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090102

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 95
    const v3, 0x104000a

    new-instance v4, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$1;

    invoke-direct {v4, p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$1;-><init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 106
    const v3, 0x7f090105

    new-instance v4, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$2;

    invoke-direct {v4, p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$2;-><init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    return-void
.end method

.method private createNoNetworkDlg(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 363
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 364
    const v1, 0x104000a

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$5;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$5;-><init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 372
    return-void
.end method

.method private createNoWifiDlg(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 381
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 382
    const v1, 0x104000a

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$6;-><init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 394
    const/high16 v1, 0x104

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$7;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$7;-><init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 381
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mNoWifiDlg:Landroid/app/AlertDialog;

    .line 403
    return-void
.end method

.method private getBackupMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->getBackupTimeFromSharedPrefs(Landroid/content/Context;)J

    move-result-wide v0

    .line 260
    .local v0, backupTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 261
    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getBackupTime(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getBackupTime(J)Ljava/lang/String;
    .locals 4
    .parameter "time"

    .prologue
    .line 253
    invoke-static {p0, p1, p2}, Lzte/com/cn/cloudnotepad/utils/DataFormatUtils;->formatYearMonthDayTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, timeStr:Ljava/lang/String;
    const v1, 0x7f0900eb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDlgTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mState:I

    if-nez v0, :cond_0

    .line 342
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNetworkState()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 349
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 350
    .local v0, manager:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 351
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 352
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    :goto_0
    return v3

    .line 355
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    const/4 v3, 0x2

    goto :goto_0

    .line 359
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleByNetworkState()V
    .locals 4

    .prologue
    .line 323
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getNetworkState()I

    move-result v1

    .line 324
    .local v1, networkState:I
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getDlgTitle()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, dlgTitle:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 326
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 327
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mState:I

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Lzte/com/cn/cloudnotepad/backup/BackupManager;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-direct {v2, p0, v3}, Lzte/com/cn/cloudnotepad/backup/BackupManager;-><init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    .line 338
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v2, Lzte/com/cn/cloudnotepad/backup/RestoreManager;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-direct {v2, p0, v3}, Lzte/com/cn/cloudnotepad/backup/RestoreManager;-><init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    goto :goto_0

    .line 332
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 333
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 334
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->createNoWifiDlg(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_2
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->createNoNetworkDlg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initDlgLayout()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    .line 125
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 126
    .local v1, layout:Landroid/widget/LinearLayout;
    const v3, 0x7f060009

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, proText:Landroid/widget/TextView;
    const v3, 0x7f090103

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 128
    const v3, 0x7f06000b

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    .local v0, checkText:Landroid/widget/TextView;
    const v3, 0x7f090104

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    return-object v1
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$4;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$4;-><init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method private needNetworkPrompt()V
    .locals 4

    .prologue
    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "needNetworkPrompt"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    .local v0, needNetworkPrompt:Z
    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->createNetworkPromptDlg()V

    goto :goto_0
.end method

.method private updateAccount()V
    .locals 5

    .prologue
    .line 268
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->getUidFromSharedPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, oldUserId:Ljava/lang/String;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, newUserId:Ljava/lang/String;
    invoke-static {p0, v2, v1}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->checkLoginStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->saveUidToSharedPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getBaiduAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, accessToken:Ljava/lang/String;
    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->saveAccessTokenToSharedPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->changeDataBaseByUid(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    const-string v3, "wangna"

    const-string v4, "changed from unlogin to login state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v3, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->parse()V

    .line 282
    .end local v0           #accessToken:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected initActivity()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignInLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignOutLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mBackupMessage:Landroid/widget/TextView;

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getBackupMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignInLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignOutLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    :pswitch_0
    return-void

    .line 301
    :pswitch_1
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v0, p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->startClient(Landroid/content/Context;)V

    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v0, p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->managerAccount(Landroid/content/Context;)V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x7f060005
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->addPreferencesFromResource(I)V

    .line 67
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignInLayout:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignOutLayout:Landroid/widget/LinearLayout;

    .line 70
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignInButton:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignInButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignOutButton:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mSignOutButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mBackupMessage:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->needNetworkPrompt()V

    .line 77
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 288
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 293
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 290
    :pswitch_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->finish()V

    .line 291
    const/4 v1, 0x1

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 137
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->unbindService()V

    .line 138
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 314
    invoke-virtual {p2}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mState:I

    .line 315
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->handleByNetworkState()V

    .line 316
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 145
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    .line 146
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->bindService()V

    .line 150
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getConnectivityReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method protected saveNetworkPrompt()V
    .locals 4

    .prologue
    .line 119
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "needNetworkPrompt"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method public updataBackupMessage(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 248
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mBackupMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->getBackupTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method
