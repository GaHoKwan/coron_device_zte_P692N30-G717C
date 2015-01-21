.class public Lcom/android/packageinstaller/InstallAppProgress;
.super Landroid/app/Activity;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final DLG_OUT_OF_SPACE:I = 0x1


# instance fields
.field private final INSTALL_COMPLETE:I

.field private final TAG:Ljava/lang/String;

.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mDoneButton:Landroid/widget/Button;

.field private mExplanationTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLaunchButton:Landroid/widget/Button;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mOkPanel:Landroid/view/View;

.field private mPackageIntentFilter:Landroid/content/IntentFilter;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageURI:Landroid/net/Uri;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const-string v0, "InstallAppProgress"

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->TAG:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->localLOGV:Z

    .line 70
    iput v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->INSTALL_COMPLETE:I

    .line 79
    new-instance v0, Lcom/android/packageinstaller/InstallAppProgress$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/InstallAppProgress$1;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/InstallAppProgress;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/packageinstaller/InstallAppProgress;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->getExplanationFromErrorCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    return-object v0
.end method

.method private getExplanationFromErrorCode(I)I
    .locals 3
    .parameter "errCode"

    .prologue
    .line 157
    const-string v0, "InstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sparse-switch p1, :sswitch_data_0

    .line 168
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 160
    :sswitch_0
    const v0, 0x7f050010

    goto :goto_0

    .line 162
    :sswitch_1
    const v0, 0x7f050011

    goto :goto_0

    .line 164
    :sswitch_2
    const v0, 0x7f050012

    goto :goto_0

    .line 166
    :sswitch_3
    const v0, 0x7f050013

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        -0x68 -> :sswitch_1
        -0x10 -> :sswitch_3
        -0xc -> :sswitch_2
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Landroid/app/Activity;->removeDialog(I)V

    .line 217
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 218
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 20

    .prologue
    .line 229
    const v3, 0x7f030004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 230
    const/4 v10, 0x0

    .line 231
    .local v10, installFlags:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 233
    .local v18, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x2000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 235
    .local v17, pi:Landroid/content/pm/PackageInfo;
    if-eqz v17, :cond_0

    .line 236
    or-int/lit8 v10, v10, 0x2

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x2000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 241
    .local v14, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v14, :cond_1

    iget v3, v14, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v7, 0x4000

    and-int/2addr v3, v7

    if-eqz v3, :cond_1

    .line 242
    or-int/lit8 v10, v10, 0x10

    .line 246
    .end local v14           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v17           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    and-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_2

    .line 247
    const-string v3, "InstallAppProgress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Replacing package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    const-string v3, "package"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    new-instance v15, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v15, v3, v7}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 258
    .local v15, as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    :goto_1
    iget-object v3, v15, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mLabel:Ljava/lang/CharSequence;

    .line 259
    const/high16 v3, 0x7f07

    move-object/from16 v0, p0

    invoke-static {v0, v15, v3}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    .line 260
    const v3, 0x7f070012

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    const v7, 0x7f050007

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 262
    const v3, 0x7f070013

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;

    .line 263
    const v3, 0x7f070004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 266
    const v3, 0x7f07000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    .line 267
    const v3, 0x7f070010

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    .line 268
    const v3, 0x7f070011

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v7, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, installerPackageName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v7, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 274
    .local v4, originatingURI:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v7, "android.intent.extra.REFERRER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 275
    .local v5, referrer:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v7, "android.intent.extra.ORIGINATING_UID"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 277
    .local v6, originatingUid:I
    new-instance v2, Landroid/content/pm/VerificationParams;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 279
    .local v2, verificationParams:Landroid/content/pm/VerificationParams;
    new-instance v9, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    .line 281
    .local v9, observer:Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    const-string v3, "package"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v7}, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    :goto_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageIntentFilter:Landroid/content/IntentFilter;

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "package"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 305
    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/packageinstaller/InstallAppProgress$4;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    return-void

    .line 255
    .end local v2           #verificationParams:Landroid/content/pm/VerificationParams;
    .end local v4           #originatingURI:Landroid/net/Uri;
    .end local v5           #referrer:Landroid/net/Uri;
    .end local v6           #originatingUid:I
    .end local v9           #observer:Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    .end local v11           #installerPackageName:Ljava/lang/String;
    .end local v15           #as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    :cond_3
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v19, sourceFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v15

    .restart local v15       #as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    goto/16 :goto_1

    .line 286
    .end local v19           #sourceFile:Ljava/io/File;
    .restart local v2       #verificationParams:Landroid/content/pm/VerificationParams;
    .restart local v4       #originatingURI:Landroid/net/Uri;
    .restart local v5       #referrer:Landroid/net/Uri;
    .restart local v6       #originatingUid:I
    .restart local v9       #observer:Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    .restart local v11       #installerPackageName:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 287
    .local v16, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v7, -0x2

    invoke-virtual {v9, v3, v7}, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_2

    .line 292
    .end local v16           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    or-int/lit16 v10, v10, 0x80

    .line 293
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    const/4 v13, 0x0

    move-object/from16 v7, v18

    move-object v12, v2

    invoke-virtual/range {v7 .. v13}, Landroid/content/pm/PackageManager;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    goto :goto_2

    .line 244
    .end local v2           #verificationParams:Landroid/content/pm/VerificationParams;
    .end local v4           #originatingURI:Landroid/net/Uri;
    .end local v5           #referrer:Landroid/net/Uri;
    .end local v6           #originatingUid:I
    .end local v9           #observer:Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    .end local v11           #installerPackageName:Ljava/lang/String;
    .end local v15           #as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 359
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "InstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished installing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 353
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    .line 179
    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, scheme:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->initView()V

    .line 185
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 212
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 191
    :pswitch_0
    const v1, 0x7f050024

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, dlgText:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050023

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05001f

    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$3;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallAppProgress$3;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050005

    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$2;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallAppProgress$2;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 341
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    return-void
.end method
