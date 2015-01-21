.class public Lcom/mediatek/security/ui/AppToPermissionActivity;
.super Landroid/app/Activity;
.source "AppToPermissionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;,
        Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;,
        Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;
    }
.end annotation


# static fields
.field public static final DEFINED_PERM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlertDlg:Landroid/app/AlertDialog;

.field private mApdater:Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCxt:Landroid/content/Context;

.field private mEntries:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPermLabelArray:[Ljava/lang/String;

.field private final mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPkgName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRetrieveFlags:I

.field private mSavedSelectedIndex:I

.field mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

.field private final mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lcom/mediatek/security/ui/AppToPermissionActivity$5;

    invoke-direct {v0}, Lcom/mediatek/security/ui/AppToPermissionActivity$5;-><init>()V

    sput-object v0, Lcom/mediatek/security/ui/AppToPermissionActivity;->DEFINED_PERM_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    new-instance v0, Lcom/mediatek/security/ui/AppToPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/security/ui/AppToPermissionActivity$1;-><init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/mediatek/security/ui/AppToPermissionActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/AppToPermissionActivity$2;-><init>(Lcom/mediatek/security/ui/AppToPermissionActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    .line 416
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/security/ui/AppToPermissionActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/security/ui/AppToPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->load()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/security/ui/AppToPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->checkUiEnabled()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/security/ui/AppToPermissionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSavedSelectedIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/security/ui/AppToPermissionActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mCxt:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/security/ui/AppToPermissionActivity;)Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mApdater:Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/security/ui/AppToPermissionActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/security/ui/AppToPermissionActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/security/ui/AppToPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->updateAlertDialog()V

    return-void
.end method

.method private checkUiEnabled()V
    .locals 4

    .prologue
    .line 423
    invoke-static {p0}, Lcom/mediatek/security/service/PermControlUtils;->isInHouseEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 425
    .local v0, enable:Z
    const-string v1, "AppToPermActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUiEnabled(), update current interface, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-nez v0, :cond_0

    .line 429
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 430
    const-string v1, "AppToPermActivity"

    const-string v2, "finish itself"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 433
    :cond_0
    return-void
.end method

.method private load()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/AppToPermissionActivity$AppToPermAsyncLoader;-><init>(Lcom/mediatek/security/ui/AppToPermissionActivity;Lcom/mediatek/security/ui/AppToPermissionActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 398
    return-void
.end method

.method private setAppLabelAndIcon(Ljava/lang/String;)V
    .locals 10
    .parameter "pkgName"

    .prologue
    const/4 v9, 0x0

    .line 262
    const/high16 v6, 0x7f08

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, appSnippet:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v9, v6, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 266
    const v6, 0x7f080002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 267
    .local v5, label:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, appLabel:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const v6, 0x7f080001

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 271
    .local v4, icon:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 272
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    const v6, 0x7f080004

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 275
    .local v3, appVersion:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 276
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 277
    const v6, 0x7f07000f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAlertDialog()V
    .locals 4

    .prologue
    .line 444
    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    if-nez v1, :cond_1

    .line 446
    :cond_0
    const-string v1, "AppToPermActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlertDlg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mSelectPermInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void

    .line 450
    :cond_1
    const-string v1, "AppToPermActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set alertDialog select mSavedSelectedIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSavedSelectedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 453
    .local v0, listview:Landroid/widget/ListView;
    iget v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSavedSelectedIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 454
    iget v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSavedSelectedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v4, "pkgName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;

    .line 134
    const-string v4, "AppToPermActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 136
    const-string v4, "AppToPermActivity"

    const-string v5, "finish itself because of pkgName is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 141
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 142
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mCxt:Landroid/content/Context;

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_3

    .line 146
    const/16 v4, 0x2200

    iput v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mRetrieveFlags:I

    .line 153
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;

    iget v6, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mRetrieveFlags:I

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 154
    iget-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;

    iget v6, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mRetrieveFlags:I

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mEntries:[Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPermLabelArray:[Ljava/lang/String;

    .line 165
    const v4, 0x7f040001

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 167
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, emptyView:Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 169
    .local v3, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v3, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 172
    :cond_1
    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    invoke-virtual {v3, v7}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 174
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 175
    invoke-virtual {v3, v7}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 176
    iput-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mListView:Landroid/widget/ListView;

    .line 178
    new-instance v4, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;

    invoke-direct {v4, p0}, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;-><init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V

    iput-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mApdater:Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;

    .line 179
    iget-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mApdater:Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/security/ui/AppToPermissionActivity;->setAppLabelAndIcon(Ljava/lang/String;)V

    .line 182
    .end local v1           #emptyView:Landroid/view/View;
    .end local v3           #lv:Landroid/widget/ListView;
    :goto_2
    return-void

    .line 133
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 149
    :cond_3
    const/16 v4, 0x200

    iput v4, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mRetrieveFlags:I

    goto :goto_1

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppToPermActivity"

    const-string v5, "ApplicationInfo cannot be found because of pkgName is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 228
    packed-switch p1, :pswitch_data_0

    .line 257
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 230
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "AppToPermActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog ,get status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    invoke-virtual {v3}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    invoke-virtual {v1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/security/ui/UiUtils;->getSelectIndex(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSavedSelectedIndex:I

    .line 233
    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    iget-object v1, v1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPermLabelArray:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionLabel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mEntries:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSavedSelectedIndex:I

    new-instance v3, Lcom/mediatek/security/ui/AppToPermissionActivity$3;

    invoke-direct {v3, p0}, Lcom/mediatek/security/ui/AppToPermissionActivity$3;-><init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    new-instance v1, Lcom/mediatek/security/ui/AppToPermissionActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/security/ui/AppToPermissionActivity$4;-><init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAlertDlg:Landroid/app/AlertDialog;

    .line 253
    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mAlertDlg:Landroid/app/AlertDialog;

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 215
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 221
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mom/PermissionRecord;

    iput-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    .line 222
    const-string v1, "AppToPermActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSelectPermInfo:Lcom/mediatek/common/mom/PermissionRecord;

    iget-object v3, v3, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 224
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "AppToPermActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 207
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 210
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 186
    const-string v1, "AppToPermActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    invoke-direct {p0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->checkUiEnabled()V

    .line 191
    invoke-direct {p0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->load()V

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.security.action.DATA_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 201
    return-void
.end method
