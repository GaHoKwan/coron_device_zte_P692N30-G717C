.class public Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;
.super Landroid/app/Fragment;
.source "RetrieveCloudTabViewFragment.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IRetrieveCloudControlView;


# static fields
.field private static final DEACTIVE_RESCODE:Ljava/lang/String; = "DEACTIVE_RESCODE"


# instance fields
.field private ACCOUNT_ADD_VIEW_ID:I

.field ThreadStarthandler:Landroid/os/Handler;

.field activeView:Landroid/widget/TextView;

.field cloudServiceRun:Ljava/lang/Runnable;

.field private cloudStatus:I

.field private mContext:Landroid/app/Activity;

.field private mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

.field private mProDialog:Landroid/app/ProgressDialog;

.field private mTabViewListener:Landroid/view/View$OnClickListener;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    const/16 v0, 0xbba

    iput v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->ACCOUNT_ADD_VIEW_ID:I

    .line 222
    new-instance v0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$1;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->ThreadStarthandler:Landroid/os/Handler;

    .line 254
    new-instance v0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$2;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->cloudServiceRun:Ljava/lang/Runnable;

    .line 267
    new-instance v0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$3;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$3;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mTabViewListener:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->buildMsgDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->cloudStatus:I

    return-void
.end method

.method static synthetic access$4(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->cloudStatus:I

    return v0
.end method

.method static synthetic access$5(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->closeProcessDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private buildMsgDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 85
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 87
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 89
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$4;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method private closeProcessDialog()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    .line 400
    :cond_0
    return-void
.end method

.method private installAccountDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 100
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v5, v4

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 102
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 104
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$5;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Landroid/content/Context;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f090011

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$6;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 213
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    .line 214
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 217
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 218
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 219
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 220
    return-void
.end method


# virtual methods
.method public activeButtonClick()V
    .locals 7

    .prologue
    .line 160
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->queryCloudStatus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    const-string v3, "operation is active retrieve!"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->activeCloudRetrieve()V

    .line 204
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;

    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 165
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogInput;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogInput;->getDialogLayout()Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, dialogLayout:Landroid/view/View;
    const v3, 0x7f090010

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 170
    .local v2, mEditText:Landroid/widget/EditText;
    const v3, 0x7f090011

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$7;

    invoke-direct {v4, p0, v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$7;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Lcom/zte/retrieve/utils/dialogcustom/DialogInput;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v3, 0x7f090012

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;

    invoke-direct {v4, p0, v2, v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$8;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Landroid/widget/EditText;Lcom/zte/retrieve/utils/dialogcustom/DialogInput;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public initAccountManager()Z
    .locals 2

    .prologue
    .line 147
    const-string v1, "initAccountManager start"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/zte/retrieve/utils/CommonFunctions;->loadCloudAccountApp(Landroid/content/Context;)V

    .line 149
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/zte/retrieve/utils/CommonFunctions;->prepareAuthEnvir(Landroid/content/Context;)Z

    move-result v0

    .line 150
    .local v0, bflag:Z
    if-nez v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->installAccountDialog(Landroid/content/Context;)V

    .line 152
    const-string v1, "alert dialog show finish"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 155
    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 368
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->ACCOUNT_ADD_VIEW_ID:I

    if-ne p1, v1, :cond_0

    .line 371
    const/4 v0, -0x1

    .line 372
    .local v0, result:I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 373
    const-string v1, "add_account_result"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 375
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 376
    if-nez v0, :cond_4

    .line 378
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->saveUid(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->queryCloudStatus()Z

    move-result v1

    if-nez v1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->startBindingProcess()V

    goto :goto_0

    .line 383
    :cond_3
    const-string v1, ""

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    const v3, 0x7f06009f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->cloudServiceRun:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 390
    :cond_4
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->showLoginFailedDialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    .line 58
    new-instance v0, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-direct {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    .line 59
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->setContext(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v0, p0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 61
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->init()V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f09004a

    .line 66
    const v3, 0x7f030014

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mView:Landroid/view/View;

    .line 68
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, activeCloudBtn:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mTabViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mView:Landroid/view/View;

    const v4, 0x7f090046

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, backupWebBtn:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mTabViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    .line 77
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->queryCloudStatus()Z

    move-result v1

    .line 78
    .local v1, activeViewStatus:Z
    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->setActiveViewSwitch(Z)V

    .line 80
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mView:Landroid/view/View;

    return-object v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 330
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->unBindRegisterService(Z)V

    .line 332
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 316
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveCloudTabViewPresenter;->queryCloudStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->setActiveViewSwitch(Z)V

    .line 322
    :goto_0
    const-string v0, "RetrieveCloudTabView onResume"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->init(Landroid/content/Context;)V

    .line 324
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->setActiveViewSwitch(Z)V

    goto :goto_0
.end method

.method public setActiveViewSwitch(Z)V
    .locals 3
    .parameter "status"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mView:Landroid/view/View;

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 301
    .local v0, cloudStatusView:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 303
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 304
    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 307
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->activeView:Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 308
    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public showLoginDialog(II)V
    .locals 7
    .parameter "title"
    .parameter "content"

    .prologue
    .line 411
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 411
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 413
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 415
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment$9;-><init>(Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public startAccountManagerView()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "startAccountView ACCOUNT_MANAGER_VIEW_ID"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->startAccountView()V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->mContext:Landroid/app/Activity;

    const v1, 0x7f0600d0

    invoke-static {v0, v1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public startAccountView()V
    .locals 5

    .prologue
    .line 354
    const/4 v2, 0x0

    .line 356
    .local v2, result:Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getMyService()Lorg/zx/AuthComp/IMyService;

    move-result-object v3

    invoke-interface {v3}, Lorg/zx/AuthComp/IMyService;->startAddAccountActivity()Landroid/os/Bundle;

    move-result-object v2

    .line 357
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 358
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "invoker"

    const-string v4, "phoneretrieve"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget v3, p0, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->ACCOUNT_ADD_VIEW_ID:I

    invoke-virtual {p0, v1, v3}, Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startLoginAccount(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 123
    const-string v6, "modify authcomp file authority"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 124
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, i:Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/authcomp.apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod 777 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, command:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 130
    .local v5, runtime:Ljava/lang/Runtime;
    invoke-virtual {v5, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 131
    .local v4, proc:Ljava/lang/Process;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "proc="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0           #command:Ljava/lang/String;
    .end local v4           #proc:Ljava/lang/Process;
    .end local v5           #runtime:Ljava/lang/Runtime;
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "modify authcomp return exception"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
