.class public Lcom/mediatek/calendarimporter/HandleProgressActivity;
.super Landroid/app/Activity;
.source "HandleProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;


# static fields
.field private static final ACCOUNT_NAME:Ljava/lang/String; = "TargetAccountName"

.field protected static final BUNDLE_KEY_START_MILLIS:Ljava/lang/String; = "key_start_millis"

.field private static final DATA_URI:Ljava/lang/String; = "DataUri"

.field private static final ID_DIALOG_NO_CALENDAR_ALERT:I = 0x1

.field private static final ID_DIALOG_PROGRESS_BAR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HandleProgressActivity"


# instance fields
.field private mAccountList:Landroid/widget/ListView;

.field private mAccountName:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDataUri:Landroid/net/Uri;

.field private final mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFirstEnter:Z

.field private mHandler:Landroid/os/Handler;

.field private mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mService:Lcom/mediatek/calendarimporter/service/VCalService;

.field private mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountList:Landroid/widget/ListView;

    .line 95
    new-instance v0, Lcom/mediatek/calendarimporter/HandleProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity$1;-><init>(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->addParseRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/VCalService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/ImportProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/calendarimporter/HandleProgressActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private addParseRequest()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDataUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "HandleProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addParseRequest. AccountName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v0, Lcom/mediatek/calendarimporter/service/ImportProcessor;

    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDataUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mediatek/calendarimporter/service/ImportProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

    .line 250
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/VCalService;->tryExecuteProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    .line 252
    :cond_0
    return-void
.end method

.method private getAccount()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 194
    .local v0, account:[Landroid/accounts/Account;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 197
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/mediatek/calendarimporter/utils/Utils;->isExchangeOrGoogleAccount(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private showAccountListView()V
    .locals 5

    .prologue
    const v4, 0x1060012

    .line 151
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 153
    invoke-static {p0, v4}, Lcom/mediatek/calendarimporter/utils/Utils;->getThemeMainColor(Landroid/content/Context;I)I

    move-result v1

    .line 154
    .local v1, color:I
    if-eq v1, v4, :cond_0

    .line 155
    const/high16 v3, 0x7f05

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 156
    .local v2, view:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    .end local v2           #view:Landroid/widget/TextView;
    :cond_0
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountList:Landroid/widget/ListView;

    .line 161
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030002

    invoke-direct {p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->getAccount()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 162
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    const v3, -0x777778

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitleColor(I)V

    .line 164
    iget-object v3, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountList:Landroid/widget/ListView;

    new-instance v4, Lcom/mediatek/calendarimporter/HandleProgressActivity$2;

    invoke-direct {v4, p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity$2;-><init>(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 263
    const-string v0, "HandleProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed() + mService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/VCalService;->tryCancelProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    .line 267
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 268
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 207
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDataUri:Landroid/net/Uri;

    .line 119
    iput-boolean v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mFirstEnter:Z

    .line 121
    invoke-static {p0}, Lcom/mediatek/calendarimporter/utils/Utils;->hasExchangeOrGoogleAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-direct {v0, p0}, Lcom/mediatek/calendarimporter/BindServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    .line 123
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->onBindService()V

    .line 124
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->showAccountListView()V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "HandleProgressActivity"

    const-string v1, "onCreate, should not be created when no account exists."

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f040014

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 216
    const-string v2, "HandleProgressActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog,id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, dialog:Landroid/app/Dialog;
    if-ne v6, p1, :cond_1

    .line 220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f040011

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040012

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040013

    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 225
    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 243
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-object v1

    .line 226
    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    .line 227
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 228
    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f040008

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 229
    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 230
    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 231
    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 232
    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/mediatek/calendarimporter/HandleProgressActivity$3;

    invoke-direct {v4, p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity$3;-><init>(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 256
    const-string v0, "HandleProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() + mService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->unBindService()V

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 259
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 334
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-direct {v0, p0}, Lcom/mediatek/calendarimporter/BindServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    .line 336
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->onBindService()V

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDataUri:Landroid/net/Uri;

    .line 339
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 344
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/VCalService;->tryCancelProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    .line 348
    :cond_2
    invoke-static {p0}, Lcom/mediatek/calendarimporter/utils/Utils;->hasExchangeOrGoogleAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->showAccountListView()V

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_3
    const-string v0, "HandleProgressActivity"

    const-string v1, "onNewIntent, should not continue when no account exists."

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 188
    const-string v0, "DataUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDataUri:Landroid/net/Uri;

    .line 189
    const-string v0, "TargetAccountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 180
    const-string v0, "DataUri"

    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mDataUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    const-string v0, "TargetAccountName"

    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mFirstEnter:Z

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/mediatek/calendarimporter/utils/Utils;->hasExchangeOrGoogleAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->showAccountListView()V

    .line 144
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 140
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mFirstEnter:Z

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public serviceConnected(Lcom/mediatek/calendarimporter/service/VCalService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 273
    new-instance v0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;-><init>(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mHandler:Landroid/os/Handler;

    .line 324
    return-void
.end method

.method public serviceUnConnected()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 329
    return-void
.end method
