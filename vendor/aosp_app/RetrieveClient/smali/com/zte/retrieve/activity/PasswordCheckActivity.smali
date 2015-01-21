.class public Lcom/zte/retrieve/activity/PasswordCheckActivity;
.super Landroid/app/Activity;
.source "PasswordCheckActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IPasswordCheckView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/PasswordCheckPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/PasswordCheckActivity;Landroid/widget/Button;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->setButtonStatus(Landroid/widget/Button;Z)V

    return-void
.end method

.method private buildForgetPasswordDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 57
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06005f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v5, v4

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 59
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 60
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/PasswordCheckActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/PasswordCheckActivity$1;-><init>(Lcom/zte/retrieve/activity/PasswordCheckActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method private getInputPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 92
    .local v1, passwordEditText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, password:Ljava/lang/String;
    return-object v0
.end method

.method private initPwdCheckView()V
    .locals 4

    .prologue
    .line 49
    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const v2, 0x7f090003

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, password:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x4

    .line 52
    .local v1, size:I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    return-void
.end method

.method private setButtonStatus(Landroid/widget/Button;Z)V
    .locals 2
    .parameter "btnNext"
    .parameter "bEnable"

    .prologue
    .line 149
    if-eqz p2, :cond_0

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    const v0, 0x7f02000f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    const v0, 0x7f02000b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 156
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkPasswordInput()V
    .locals 3

    .prologue
    .line 115
    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 116
    .local v1, passwordContent:Landroid/widget/EditText;
    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 117
    .local v0, btnNext:Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->setButtonStatus(Landroid/widget/Button;Z)V

    .line 119
    new-instance v2, Lcom/zte/retrieve/activity/PasswordCheckActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/PasswordCheckActivity$2;-><init>(Lcom/zte/retrieve/activity/PasswordCheckActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    return-void
.end method

.method public clickController(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->getInputPassword()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mPresenter:Lcom/zte/retrieve/presenter/PasswordCheckPresenter;

    invoke-virtual {v1, v0}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->verifyPasswordForModify(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0           #password:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->buildForgetPasswordDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispWrongPwdWarning()V
    .locals 3

    .prologue
    .line 103
    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 104
    .local v0, passwordEditText:Landroid/widget/EditText;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v2, 0x7f090003

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 107
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mPresenter:Lcom/zte/retrieve/presenter/PasswordCheckPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->onBackPressed()V

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 37
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 38
    iput-object p0, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mContext:Landroid/content/Context;

    .line 40
    new-instance v1, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;

    invoke-direct {v1}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mPresenter:Lcom/zte/retrieve/presenter/PasswordCheckPresenter;

    .line 41
    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mPresenter:Lcom/zte/retrieve/presenter/PasswordCheckPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->setContext(Landroid/content/Context;)V

    .line 42
    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mPresenter:Lcom/zte/retrieve/presenter/PasswordCheckPresenter;

    invoke-virtual {v1, p0}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 43
    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordCheckActivity;->mPresenter:Lcom/zte/retrieve/presenter/PasswordCheckPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/PasswordCheckPresenter;->init()V

    .line 45
    invoke-direct {p0}, Lcom/zte/retrieve/activity/PasswordCheckActivity;->initPwdCheckView()V

    .line 46
    return-void
.end method
