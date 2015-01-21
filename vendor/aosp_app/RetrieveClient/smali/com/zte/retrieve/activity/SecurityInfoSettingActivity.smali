.class public Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;
.super Landroid/app/Activity;
.source "SecurityInfoSettingActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/ISecurityInfoSettingVIew;


# static fields
.field private static ACCOUNT_NEW_ACTIVITY_ID:I


# instance fields
.field private final PICK_CONTACT_NUMBER:I

.field private etHostName:Landroid/widget/EditText;

.field private etSecurityNumber:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

.field private tvSecuritySMS:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xbb9

    sput v0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->ACCOUNT_NEW_ACTIVITY_ID:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/16 v0, 0xbba

    iput v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->PICK_CONTACT_NUMBER:I

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;)Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Landroid/widget/Button;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->setNextButtonStatus(Landroid/widget/Button;Z)V

    return-void
.end method

.method private installAccountDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 266
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v5, v4

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 268
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 270
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$4;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Landroid/content/Context;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v1, 0x7f090011

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$5;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void
.end method

.method private setNextButtonStatus(Landroid/widget/Button;Z)V
    .locals 2
    .parameter "btnNext"
    .parameter "bEnable"

    .prologue
    .line 240
    if-eqz p2, :cond_0

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    const v0, 0x7f02000f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 243
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    const v0, 0x7f02000b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 247
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private showAccountStoppedDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 77
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600cc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 79
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 81
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$1;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public checkHostnameEmpty()V
    .locals 4

    .prologue
    .line 211
    const v3, 0x7f090074

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 212
    .local v1, nameContent:Landroid/widget/EditText;
    const v3, 0x7f090070

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 213
    .local v2, pbContent:Landroid/widget/EditText;
    const v3, 0x7f090076

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 214
    .local v0, btnNext:Landroid/widget/Button;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->setNextButtonStatus(Landroid/widget/Button;Z)V

    .line 216
    new-instance v3, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$3;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    return-void
.end method

.method public checkNumberEmpty()V
    .locals 4

    .prologue
    .line 177
    const v3, 0x7f090074

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 178
    .local v1, nameContent:Landroid/widget/EditText;
    const v3, 0x7f090070

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 179
    .local v2, pbContent:Landroid/widget/EditText;
    const v3, 0x7f090076

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 180
    .local v0, btnNext:Landroid/widget/Button;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->setNextButtonStatus(Landroid/widget/Button;Z)V

    .line 182
    new-instance v3, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$2;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    return-void
.end method

.method public clickController(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 130
    :sswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->handleChooseContactBtnClick()V

    goto :goto_0

    .line 133
    :sswitch_1
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->etSecurityNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->etHostName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->handleNextBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x7f090071 -> :sswitch_0
        0x7f090076 -> :sswitch_1
    .end sparse-switch
.end method

.method public initAccountManager()Z
    .locals 2

    .prologue
    .line 253
    const-string v1, "initAccountManager enter"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/retrieve/utils/CommonFunctions;->loadCloudAccountApp(Landroid/content/Context;)V

    .line 255
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/retrieve/utils/CommonFunctions;->prepareAuthEnvir(Landroid/content/Context;)Z

    move-result v0

    .line 256
    .local v0, bflag:Z
    if-nez v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->installAccountDialog(Landroid/content/Context;)V

    .line 258
    const-string v1, "alert dialog show finish"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 261
    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 107
    const/16 v1, 0xbba

    if-ne p1, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v1, p3}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->handlePickContactNumClick(Landroid/content/Intent;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_0

    .line 111
    :cond_2
    sget v1, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->ACCOUNT_NEW_ACTIVITY_ID:I

    if-ne p1, v1, :cond_0

    .line 112
    const/4 v0, -0x1

    .line 113
    .local v0, result:I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 114
    const-string v1, "add_account_result"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 116
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 117
    if-nez v0, :cond_4

    .line 119
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->startBindingProcess()V

    goto :goto_0

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->showLoginFailedDialog()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v3, 0x7f03001a

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 46
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030018

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, mCustomView:Landroid/view/View;
    const v3, 0x7f09002d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f06002c

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 50
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 53
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 54
    const v3, 0x7f090070

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->etSecurityNumber:Landroid/widget/EditText;

    .line 55
    const v3, 0x7f090074

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->etHostName:Landroid/widget/EditText;

    .line 56
    const v3, 0x7f090075

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->tvSecuritySMS:Landroid/widget/TextView;

    .line 57
    new-instance v3, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-direct {v3}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;-><init>()V

    iput-object v3, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    .line 58
    iput-object p0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    .line 59
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v3, p0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->setContext(Landroid/content/Context;)V

    .line 60
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v3, p0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 61
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->init()V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 348
    const-string v0, "RetrieveActiveCompleteActivity onResume"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 351
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/SecurityInfoSettingPresenter;->isCloudSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "select"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->init(Landroid/content/Context;)V

    .line 357
    :cond_0
    return-void
.end method

.method public setEditTextSize()V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 168
    .local v0, scale:F
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->etHostName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->tvSecuritySMS:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 169
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->etSecurityNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public showCloudOpendDialog()V
    .locals 7

    .prologue
    .line 366
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 367
    const v3, 0x7f060034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 368
    const v4, 0x7f060035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 366
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 369
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 370
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$9;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void
.end method

.method public showContactChooser()V
    .locals 3

    .prologue
    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/16 v2, 0xbba

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "title"
    .parameter "msg"

    .prologue
    const v8, 0x7f090012

    const v7, 0x7f090011

    const/4 v4, 0x0

    .line 322
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 323
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 325
    .local v6, dialogLayout:Landroid/view/View;
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 326
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$7;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 336
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$8;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void
.end method

.method public showLoginDialog(II)V
    .locals 7
    .parameter "title"
    .parameter "content"

    .prologue
    .line 305
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 306
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 305
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 307
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 309
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity$6;-><init>(Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void
.end method

.method public startAccountManagerView()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "startAccountView ACCOUNT_MANAGER_VIEW_ID"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->startAccountView()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->showAccountStoppedDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public startAccountView()V
    .locals 5

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getMyService()Lorg/zx/AuthComp/IMyService;

    move-result-object v3

    invoke-interface {v3}, Lorg/zx/AuthComp/IMyService;->startAddAccountActivity()Landroid/os/Bundle;

    move-result-object v2

    .line 94
    .local v2, result:Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 95
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "invoker"

    const-string v4, "phoneretrieve"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    sget v3, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->ACCOUNT_NEW_ACTIVITY_ID:I

    invoke-virtual {p0, v1, v3}, Lcom/zte/retrieve/activity/SecurityInfoSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    const-string v3, "startActivityForResult ACCOUNT_MANAGER_ACTIVITY_ID"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toastShow(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 156
    invoke-static {p0, p1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    return-void
.end method
