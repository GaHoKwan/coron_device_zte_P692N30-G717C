.class public Lcom/zte/retrieve/activity/SecurityPasswordActivity;
.super Landroid/app/Activity;
.source "SecurityPasswordActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IPasswordAffirmView;


# instance fields
.field private affirmPwdContent:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

.field private passwordContent:Landroid/widget/EditText;

.field private passwordWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/SecurityPasswordActivity;)Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/SecurityPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/activity/SecurityPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->affirmPwdContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/activity/SecurityPasswordActivity;Landroid/widget/Button;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->setButtonStatus(Landroid/widget/Button;Z)V

    return-void
.end method

.method private setButtonStatus(Landroid/widget/Button;Z)V
    .locals 2
    .parameter "btnNext"
    .parameter "bEnable"

    .prologue
    .line 115
    if-eqz p2, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    const v0, 0x7f02000f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    const v0, 0x7f02000b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 122
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkEmptyInput()V
    .locals 3

    .prologue
    .line 77
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, btnNext:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->setButtonStatus(Landroid/widget/Button;Z)V

    .line 80
    new-instance v1, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/zte/retrieve/activity/SecurityPasswordActivity$1;-><init>(Lcom/zte/retrieve/activity/SecurityPasswordActivity;Landroid/widget/Button;)V

    iput-object v1, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordWatcher:Landroid/text/TextWatcher;

    .line 104
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordContent:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->affirmPwdContent:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    return-void
.end method

.method public clickNextController(Landroid/view/View;)V
    .locals 6
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, lenCheck:Z
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->affirmPwdContent:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 56
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/16 v5, 0xc

    .line 55
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->checkPasswordLength(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->savePassword(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 34
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030018

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, mCustomView:Landroid/view/View;
    const v3, 0x7f09002d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f06001c

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 38
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 40
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 42
    iput-object p0, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mContext:Landroid/content/Context;

    .line 43
    new-instance v3, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    invoke-direct {v3}, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;-><init>()V

    iput-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    .line 44
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->setContext(Landroid/content/Context;)V

    .line 45
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    invoke-virtual {v3, p0}, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 47
    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordContent:Landroid/widget/EditText;

    .line 48
    const v3, 0x7f09007a

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->affirmPwdContent:Landroid/widget/EditText;

    .line 49
    iget-object v3, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mPresenter:Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;

    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/SecurityPasswordPresenter;->init()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->affirmPwdContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iput-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordWatcher:Landroid/text/TextWatcher;

    .line 133
    iput-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->passwordContent:Landroid/widget/EditText;

    .line 134
    iput-object v2, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->affirmPwdContent:Landroid/widget/EditText;

    .line 135
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityPasswordActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    return-void
.end method
