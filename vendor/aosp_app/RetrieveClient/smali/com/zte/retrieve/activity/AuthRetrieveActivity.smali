.class public Lcom/zte/retrieve/activity/AuthRetrieveActivity;
.super Landroid/app/Activity;
.source "AuthRetrieveActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IAuthRetrieveView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/AuthRetrievePresenter;

.field private passwordContent:Landroid/widget/EditText;

.field private passwordWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/AuthRetrieveActivity;Landroid/widget/Button;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->setButtonStatus(Landroid/widget/Button;Z)V

    return-void
.end method

.method private buildForgetPasswordDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 62
    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 64
    const v1, 0x7f060005

    new-instance v2, Lcom/zte/retrieve/activity/AuthRetrieveActivity$1;

    invoke-direct {v2, p0}, Lcom/zte/retrieve/activity/AuthRetrieveActivity$1;-><init>(Lcom/zte/retrieve/activity/AuthRetrieveActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 83
    return-void
.end method

.method private getInputPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, password:Ljava/lang/String;
    return-object v0
.end method

.method private setButtonStatus(Landroid/widget/Button;Z)V
    .locals 1
    .parameter "btnNext"
    .parameter "bEnable"

    .prologue
    .line 167
    if-eqz p2, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clickController(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->getInputPassword()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, password:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->mPresenter:Lcom/zte/retrieve/presenter/AuthRetrievePresenter;

    invoke-virtual {v2, v0}, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->isPasswordCorrect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v1, result:Landroid/content/Intent;
    const-string v2, "auth_result"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->finish()V

    goto :goto_0

    .line 95
    .end local v1           #result:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->dispWrongPwdWarning()V

    goto :goto_0

    .line 99
    .end local v0           #password:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->buildForgetPasswordDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispWrongPwdWarning()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordContent:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    return-void
.end method

.method public initPwdCheckWatcher()V
    .locals 3

    .prologue
    .line 132
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 133
    .local v0, btnNext:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->setButtonStatus(Landroid/widget/Button;Z)V

    .line 134
    new-instance v1, Lcom/zte/retrieve/activity/AuthRetrieveActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/zte/retrieve/activity/AuthRetrieveActivity$2;-><init>(Lcom/zte/retrieve/activity/AuthRetrieveActivity;Landroid/widget/Button;)V

    iput-object v1, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordWatcher:Landroid/text/TextWatcher;

    .line 156
    iget-object v1, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordContent:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v4, 0x7f030013

    invoke-virtual {p0, v4}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->setContentView(I)V

    .line 40
    const v4, 0x7f0600d3

    invoke-virtual {p0, v4}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->setTitle(I)V

    .line 41
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 43
    iput-object p0, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->mContext:Landroid/content/Context;

    .line 44
    new-instance v4, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;

    invoke-direct {v4}, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;-><init>()V

    iput-object v4, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->mPresenter:Lcom/zte/retrieve/presenter/AuthRetrievePresenter;

    .line 45
    iget-object v4, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->mPresenter:Lcom/zte/retrieve/presenter/AuthRetrievePresenter;

    iget-object v5, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->setContext(Landroid/content/Context;)V

    .line 46
    iget-object v4, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->mPresenter:Lcom/zte/retrieve/presenter/AuthRetrievePresenter;

    invoke-virtual {v4, p0}, Lcom/zte/retrieve/presenter/AuthRetrievePresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 48
    const v4, 0x7f090004

    invoke-virtual {p0, v4}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordContent:Landroid/widget/EditText;

    .line 50
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 51
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 52
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "launch_type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 53
    .local v3, type:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "the launch_type = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->initPwdCheckWatcher()V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iput-object v2, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordWatcher:Landroid/text/TextWatcher;

    .line 183
    iput-object v2, p0, Lcom/zte/retrieve/activity/AuthRetrieveActivity;->passwordContent:Landroid/widget/EditText;

    .line 184
    return-void
.end method
