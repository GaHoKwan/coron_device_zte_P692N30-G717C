.class public Lcn/com/zte/nlt/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private autoUpdate:Z

.field private clickCount:I

.field private clickTime:J

.field private isChecking:Z

.field private isRemindChecked:Z

.field private isUpdating:Z

.field private mCheckBoxAuto:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxEnabled:Landroid/preference/CheckBoxPreference;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mUpdatingDialog:Landroid/app/ProgressDialog;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 49
    iput-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 51
    iput-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    .line 52
    iput-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckBoxEnabled:Landroid/preference/CheckBoxPreference;

    .line 53
    iput-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckBoxAuto:Landroid/preference/CheckBoxPreference;

    .line 55
    iput-boolean v0, p0, Lcn/com/zte/nlt/SettingsActivity;->isChecking:Z

    .line 56
    iput-boolean v0, p0, Lcn/com/zte/nlt/SettingsActivity;->isUpdating:Z

    .line 57
    iput-boolean v0, p0, Lcn/com/zte/nlt/SettingsActivity;->isRemindChecked:Z

    .line 59
    iput v0, p0, Lcn/com/zte/nlt/SettingsActivity;->clickCount:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/zte/nlt/SettingsActivity;->clickTime:J

    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/nlt/SettingsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcn/com/zte/nlt/SettingsActivity;->isRemindChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcn/com/zte/nlt/SettingsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcn/com/zte/nlt/SettingsActivity;->isRemindChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcn/com/zte/nlt/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/SettingsActivity;->showNewVersionDialog(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/SettingsActivity;->startAsyncTaskForDownloadDb(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/com/zte/nlt/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->showLatestVersionDialog()V

    return-void
.end method

.method static synthetic access$1302(Lcn/com/zte/nlt/SettingsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcn/com/zte/nlt/SettingsActivity;->isUpdating:Z

    return p1
.end method

.method static synthetic access$1400(Lcn/com/zte/nlt/SettingsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mUpdatingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/zte/nlt/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->doUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcn/com/zte/nlt/SettingsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->checkConnectivityAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/com/zte/nlt/SettingsActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcn/com/zte/nlt/SettingsActivity;->showToast(II)V

    return-void
.end method

.method static synthetic access$500(Lcn/com/zte/nlt/SettingsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcn/com/zte/nlt/SettingsActivity;->clickCount:I

    return v0
.end method

.method static synthetic access$502(Lcn/com/zte/nlt/SettingsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcn/com/zte/nlt/SettingsActivity;->clickCount:I

    return p1
.end method

.method static synthetic access$508(Lcn/com/zte/nlt/SettingsActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcn/com/zte/nlt/SettingsActivity;->clickCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/com/zte/nlt/SettingsActivity;->clickCount:I

    return v0
.end method

.method static synthetic access$600(Lcn/com/zte/nlt/SettingsActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcn/com/zte/nlt/SettingsActivity;->clickTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcn/com/zte/nlt/SettingsActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-wide p1, p0, Lcn/com/zte/nlt/SettingsActivity;->clickTime:J

    return-wide p1
.end method

.method static synthetic access$702(Lcn/com/zte/nlt/SettingsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcn/com/zte/nlt/SettingsActivity;->isChecking:Z

    return p1
.end method

.method static synthetic access$800(Lcn/com/zte/nlt/SettingsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcn/com/zte/nlt/SettingsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcn/com/zte/nlt/SettingsActivity;->autoUpdate:Z

    return v0
.end method

.method private checkConnectivityAvailable()Z
    .locals 2

    .prologue
    .line 264
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 265
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doUpdate()V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lcn/com/zte/yp/statics/StaticsInfo;

    invoke-direct {v0}, Lcn/com/zte/yp/statics/StaticsInfo;-><init>()V

    .line 202
    .local v0, staticsInfo:Lcn/com/zte/yp/statics/StaticsInfo;
    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/statics/StaticsInfo;->sendStaticsInfo(Landroid/content/Context;)V

    .line 204
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->checkConnectivityAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    const v1, 0x7f080063

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/com/zte/nlt/SettingsActivity;->showToast(II)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->showCheckingDialog()V

    .line 209
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->startAsyncTaskForGetUpdateInfo()V

    goto :goto_0
.end method

.method private initWarningTextView()V
    .locals 2

    .prologue
    .line 129
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, tvWarning:Landroid/widget/TextView;
    new-instance v1, Lcn/com/zte/nlt/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcn/com/zte/nlt/SettingsActivity$4;-><init>(Lcn/com/zte/nlt/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method private initWidget()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckBoxEnabled:Landroid/preference/CheckBoxPreference;

    .line 167
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckBoxAuto:Landroid/preference/CheckBoxPreference;

    .line 168
    return-void
.end method

.method private showCheckVersionDialog()V
    .locals 6

    .prologue
    .line 92
    iget-object v3, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, view:Landroid/view/View;
    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 94
    .local v1, mCB:Landroid/widget/CheckBox;
    new-instance v3, Lcn/com/zte/nlt/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcn/com/zte/nlt/SettingsActivity$1;-><init>(Lcn/com/zte/nlt/SettingsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080068

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const v3, 0x7f080070

    invoke-virtual {p0, v3}, Lcn/com/zte/nlt/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 106
    const v3, 0x7f080064

    new-instance v4, Lcn/com/zte/nlt/SettingsActivity$2;

    invoke-direct {v4, p0}, Lcn/com/zte/nlt/SettingsActivity$2;-><init>(Lcn/com/zte/nlt/SettingsActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    const v3, 0x7f080065

    new-instance v4, Lcn/com/zte/nlt/SettingsActivity$3;

    invoke-direct {v4, p0}, Lcn/com/zte/nlt/SettingsActivity$3;-><init>(Lcn/com/zte/nlt/SettingsActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 123
    invoke-virtual {p0}, Lcn/com/zte/nlt/SettingsActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 126
    :cond_0
    return-void
.end method

.method private showCheckingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 278
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 279
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 281
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 282
    return-void
.end method

.method private showLatestVersionDialog()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 306
    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 307
    const v1, 0x7f080064

    new-instance v2, Lcn/com/zte/nlt/SettingsActivity$6;

    invoke-direct {v2, p0}, Lcn/com/zte/nlt/SettingsActivity$6;-><init>(Lcn/com/zte/nlt/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 312
    invoke-virtual {p0}, Lcn/com/zte/nlt/SettingsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 315
    :cond_0
    return-void
.end method

.method private showNewVersionDialog(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    .locals 8
    .parameter "pkgInfo"

    .prologue
    .line 335
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 337
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcn/com/zte/nlt/update/Updater;->getUpdateInfo(Lcn/com/zte/nlt/down/UpdatePackageInfo;)Lcn/com/zte/nlt/update/Updater$UpdateInfo;

    move-result-object v4

    iget-wide v4, v4, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->size:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    const v1, 0x7f080064

    new-instance v2, Lcn/com/zte/nlt/SettingsActivity$7;

    invoke-direct {v2, p0, p1}, Lcn/com/zte/nlt/SettingsActivity$7;-><init>(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    const v1, 0x7f080065

    new-instance v2, Lcn/com/zte/nlt/SettingsActivity$8;

    invoke-direct {v2, p0}, Lcn/com/zte/nlt/SettingsActivity$8;-><init>(Lcn/com/zte/nlt/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 355
    invoke-virtual {p0}, Lcn/com/zte/nlt/SettingsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 358
    :cond_0
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "length"

    .prologue
    .line 406
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 407
    return-void
.end method

.method private showUpdatingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mUpdatingDialog:Landroid/app/ProgressDialog;

    .line 323
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mUpdatingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 324
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mUpdatingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mUpdatingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 326
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mUpdatingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 327
    return-void
.end method

.method private startAsyncTaskForDownloadDb(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    .locals 2
    .parameter "pkgInfo"

    .prologue
    .line 366
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->showUpdatingDialog()V

    .line 367
    new-instance v0, Lcn/com/zte/nlt/SettingsActivity$9;

    invoke-direct {v0, p0, p1}, Lcn/com/zte/nlt/SettingsActivity$9;-><init>(Lcn/com/zte/nlt/SettingsActivity;Lcn/com/zte/nlt/down/UpdatePackageInfo;)V

    .line 398
    .local v0, async:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    iget-boolean v1, p0, Lcn/com/zte/nlt/SettingsActivity;->isUpdating:Z

    if-nez v1, :cond_0

    .line 399
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v1, "Updating is running"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAsyncTaskForGetUpdateInfo()V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcn/com/zte/nlt/SettingsActivity$5;

    invoke-direct {v0, p0}, Lcn/com/zte/nlt/SettingsActivity$5;-><init>(Lcn/com/zte/nlt/SettingsActivity;)V

    .line 251
    .local v0, asyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
    iget-boolean v1, p0, Lcn/com/zte/nlt/SettingsActivity;->isChecking:Z

    if-nez v1, :cond_0

    .line 252
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v1, "Checking is running"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/SettingsActivity;->addPreferencesFromResource(I)V

    .line 69
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/SettingsActivity;->setContentView(I)V

    .line 71
    invoke-static {}, Lcn/com/zte/nlt/update/AutoUpdate;->getInstance()Lcn/com/zte/nlt/update/AutoUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/zte/nlt/update/AutoUpdate;->registerAutoUpdate()V

    .line 73
    iput-object p0, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->initWidget()V

    .line 77
    invoke-virtual {p0}, Lcn/com/zte/nlt/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/zte/nlt/SettingsActivity;->autoUpdate:Z

    .line 79
    iget-boolean v0, p0, Lcn/com/zte/nlt/SettingsActivity;->autoUpdate:Z

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "autoUpdateCheck"

    invoke-virtual {p0, v0, v2}, Lcn/com/zte/nlt/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->sp:Landroid/content/SharedPreferences;

    .line 81
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "isRemindChecked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->showCheckVersionDialog()V

    .line 87
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->initWarningTextView()V

    .line 88
    return-void

    .line 84
    :cond_1
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->doUpdate()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, key:Ljava/lang/String;
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckBoxEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {p0, v1}, Lcn/com/zte/nlt/SettingsInfo;->setNumberLocationEnabled(Landroid/content/Context;Z)V

    .line 193
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 182
    :cond_1
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/zte/nlt/SettingsActivity;->autoUpdate:Z

    .line 184
    invoke-direct {p0}, Lcn/com/zte/nlt/SettingsActivity;->doUpdate()V

    goto :goto_0

    .line 185
    :cond_2
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckBoxEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcn/com/zte/nlt/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/zte/nlt/SettingsInfo;->queryNumberLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity;->mCheckBoxAuto:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcn/com/zte/nlt/SettingsInfo;->isAutoUpdateOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 175
    return-void
.end method
