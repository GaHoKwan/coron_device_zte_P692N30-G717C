.class public Lcom/zte/heartyservice/interceptad/AdvertisementActivity;
.super Landroid/app/Activity;
.source "AdvertisementActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/interceptad/AdvertisementActivity$ViewHolder;,
        Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;
    }
.end annotation


# instance fields
.field private allow_all:Z

.field private dialogMsg:Landroid/widget/TextView;

.field private dialogTitle:Landroid/widget/TextView;

.field private finished:Z

.field private mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

.field private mButton:Landroid/widget/Button;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUninstallListener:Landroid/view/View$OnClickListener;

.field private noRecordView:Landroid/view/View;

.field private subTileView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->allow_all:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->finished:Z

    .line 66
    new-instance v0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$1;-><init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mUninstallListener:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$2;-><init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$3;-><init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->allow_all:Z

    return v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->allow_all:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->dismissWaitDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private createWaitDialog()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 203
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 204
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 205
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$4;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$4;-><init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 213
    return-void
.end method

.method private dismissWaitDialog()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->finished:Z

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 239
    :cond_0
    return-void
.end method

.method private getLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "pkgname"

    .prologue
    .line 339
    const/4 v3, 0x0

    .line 341
    .local v3, label:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 343
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 344
    :catch_0
    move-exception v2

    .line 345
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showWaitDialog(ILjava/lang/String;)V
    .locals 3
    .parameter "titleResID"
    .parameter "message"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 221
    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->finished:Z

    if-nez v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 225
    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, msg:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 231
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private startScanningInstalledPakcges()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->notifyDataSetChanged()V

    .line 117
    const v0, 0x7f0a04ef

    const v1, 0x7f0a04f0

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->showWaitDialog(ILjava/lang/String;)V

    .line 118
    new-instance v0, Lcom/zte/heartyservice/interceptad/AdFilterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lcom/zte/heartyservice/interceptad/AdFilterTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/interceptad/AdFilterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 126
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->setContentView(I)V

    .line 128
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 130
    new-instance v0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;-><init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    .line 131
    const v0, 0x7f0e0016

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mListView:Landroid/widget/ListView;

    .line 132
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->noRecordView:Landroid/view/View;

    .line 135
    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->subTileView:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 160
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->interceptAdRoot:Z

    if-nez v0, :cond_1

    .line 161
    sput v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    .line 171
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->createWaitDialog()V

    .line 175
    return-void

    .line 163
    :cond_1
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    goto :goto_0

    .line 165
    :cond_2
    sget v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->interceptAdRoot:Z

    if-ne v0, v2, :cond_0

    .line 167
    const v0, 0x7f0a04f3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->finished:Z

    .line 199
    return-void
.end method

.method public onFilterCompleted(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;>;"
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 361
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 362
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    invoke-virtual {v2}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->notifyDataSetChanged()V

    .line 364
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->subTileView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->noRecordView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 389
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->dismissWaitDialog()V

    .line 390
    return-void

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->subTileView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->noRecordView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .line 378
    .local v0, appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isBlocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    iput-boolean v4, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->allow_all:Z

    goto :goto_1

    .line 382
    .end local v0           #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    :cond_2
    iget-boolean v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->allow_all:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 383
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;

    const v3, 0x7f0a04e5

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 387
    :goto_2
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mButton:Landroid/widget/Button;

    const v3, 0x7f0a04e4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 180
    invoke-direct {p0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->startScanningInstalledPakcges()V

    .line 188
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->mAdapter:Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$AdAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method

.method public updateDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 404
    const v0, 0x7f0a04ef

    invoke-direct {p0, v0, p1}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->showWaitDialog(ILjava/lang/String;)V

    .line 406
    return-void
.end method
