.class public Lcom/autonavi/xmgd/user/GDAccount;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "chenwei.GDAccount"


# instance fields
.field private final DIALOG_LOGIN:I

.field private isShowPwd:Landroid/widget/CheckBox;

.field private mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

.field private mAccountManagerHttpHandler:Lcom/autonavi/xmgd/user/AccountManagerHttpHandler;

.field private mBtAddAccount:Landroid/widget/Button;

.field private mBtForgetPassword:Landroid/widget/TextView;

.field private mBtLogin:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private mEditAccount:Landroid/widget/EditText;

.field private mEditPassword:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mIsAlreadyExit:Z

.field private mTitle:Lcom/autonavi/xmgd/view/GDTitle;

.field private rspcode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->DIALOG_LOGIN:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mIsAlreadyExit:Z

    new-instance v0, Lcom/autonavi/xmgd/user/GDAccount$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/user/GDAccount$1;-><init>(Lcom/autonavi/xmgd/user/GDAccount;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/user/GDAccount;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I

    return v0
.end method

.method static synthetic access$002(Lcom/autonavi/xmgd/user/GDAccount;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I

    return p1
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/user/GDAccount;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/GDAccount;->dismissMyDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/user/GDAccount;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mEditPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private dismissMyDialog()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getStr(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDialog()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/GDAccount;->initDialog()V

    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mTitle:Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mTitle:Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f070181

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(Ljava/lang/String;)V

    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mEditAccount:Landroid/widget/EditText;

    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mEditPassword:Landroid/widget/EditText;

    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mBtForgetPassword:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mBtForgetPassword:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mBtForgetPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mBtLogin:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mBtLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mBtAddAccount:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mBtAddAccount:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->isShowPwd:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->isShowPwd:Landroid/widget/CheckBox;

    new-instance v1, Lcom/autonavi/xmgd/user/GDAccount$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/user/GDAccount$2;-><init>(Lcom/autonavi/xmgd/user/GDAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private showMyDialog(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    const v1, 0x7f070182

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;

    const-class v2, Lcom/autonavi/xmgd/user/ForgetPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mEditAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;

    const v1, 0x7f07017f

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/autonavi/xmgd/user/UserUtil;->isContainChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;

    const v1, 0x7f070190

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/user/GDAccount;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/user/GDAccount;->showMyDialog(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/user/GDAccount;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;

    const-class v2, Lcom/autonavi/xmgd/user/UserRegister;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0064
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/GDAccount;->setContentView(I)V

    iput-object p0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/GDAccount;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getInstance(Landroid/app/Application;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setHandler(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/GDAccount;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/xmgd/user/GDAccount;->mIsAlreadyExit:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mIsAlreadyExit:Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/GDAccount;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onRestart()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/GDAccount;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getInstance(Landroid/app/Application;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onStop()V

    return-void
.end method
