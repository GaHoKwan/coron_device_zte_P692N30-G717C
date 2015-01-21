.class public Lcom/zte/retrieve/activity/RemoteInputActivity;
.super Landroid/app/Activity;
.source "RemoteInputActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IRemoteInputView;


# instance fields
.field private btnConfirm:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;

.field private passwordContent:Landroid/widget/EditText;

.field private passwordWatcher:Landroid/text/TextWatcher;

.field private pbContent:Landroid/widget/EditText;

.field private phonenumWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/RemoteInputActivity;)Lcom/zte/retrieve/presenter/RemoteInputPresenter;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/RemoteInputActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/activity/RemoteInputActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->btnConfirm:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/activity/RemoteInputActivity;Landroid/widget/Button;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->setConfirmButtonStatus(Landroid/widget/Button;Z)V

    return-void
.end method

.method private buildForgetPasswordDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 88
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06005f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 90
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 92
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RemoteInputActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RemoteInputActivity$1;-><init>(Lcom/zte/retrieve/activity/RemoteInputActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method private setConfirmButtonStatus(Landroid/widget/Button;Z)V
    .locals 2
    .parameter "btnNext"
    .parameter "bEnable"

    .prologue
    .line 179
    if-eqz p2, :cond_0

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 182
    const v0, 0x7f02000f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 186
    const v0, 0x7f02000b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private showOrderControlActivity()V
    .locals 3

    .prologue
    .line 60
    const v2, 0x7f09003f

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, forwardPhoneNumber:Ljava/lang/String;
    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, password:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    invoke-virtual {v2, v0, v1}, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->handleOKBtnClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public checkPhoneNumberInput()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/zte/retrieve/activity/RemoteInputActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/RemoteInputActivity$2;-><init>(Lcom/zte/retrieve/activity/RemoteInputActivity;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->phonenumWatcher:Landroid/text/TextWatcher;

    .line 142
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->pbContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->phonenumWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    return-void
.end method

.method public checkSecurityPasswordInput()V
    .locals 4

    .prologue
    .line 151
    const v2, 0x7f09003f

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 152
    .local v1, pbContent:Landroid/widget/EditText;
    const v2, 0x7f090043

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    .local v0, btnConfirm:Landroid/widget/Button;
    new-instance v2, Lcom/zte/retrieve/activity/RemoteInputActivity$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/zte/retrieve/activity/RemoteInputActivity$3;-><init>(Lcom/zte/retrieve/activity/RemoteInputActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    iput-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordWatcher:Landroid/text/TextWatcher;

    .line 175
    iget-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordContent:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    return-void
.end method

.method public clickController(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 104
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->showOrderControlActivity()V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->buildForgetPasswordDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x7f090042
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RemoteInputActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 43
    iput-object p0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mContext:Landroid/content/Context;

    .line 44
    new-instance v1, Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    invoke-direct {v1}, Lcom/zte/retrieve/presenter/RemoteInputPresenter;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    .line 45
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->setContext(Landroid/content/Context;)V

    .line 46
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    invoke-virtual {v1, p0}, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 48
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordContent:Landroid/widget/EditText;

    .line 49
    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->pbContent:Landroid/widget/EditText;

    .line 50
    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->btnConfirm:Landroid/widget/Button;

    .line 51
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->btnConfirm:Landroid/widget/Button;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 52
    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mPresenter:Lcom/zte/retrieve/presenter/RemoteInputPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RemoteInputPresenter;->init()V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    iput-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordWatcher:Landroid/text/TextWatcher;

    .line 206
    iput-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->passwordContent:Landroid/widget/EditText;

    .line 207
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->pbContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->phonenumWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    iput-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->phonenumWatcher:Landroid/text/TextWatcher;

    .line 209
    iput-object v2, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->pbContent:Landroid/widget/EditText;

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    return-void
.end method

.method public setConfirmButtonGray()V
    .locals 3

    .prologue
    .line 196
    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 197
    .local v0, confirmBtn:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 199
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phoneNumText"
    .parameter "pwdText"

    .prologue
    .line 82
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/activity/RemoteInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/retrieve/activity/RemoteInputActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    return-void
.end method
