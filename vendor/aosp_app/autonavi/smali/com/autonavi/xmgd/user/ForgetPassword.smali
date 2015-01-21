.class public Lcom/autonavi/xmgd/user/ForgetPassword;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "chenwei.ForgetPassword"

.field private static countDown:I


# instance fields
.field private final DIALOG_GET_IDENTIFY_CODE:I

.field private final DIALOG_GET_RESET_PASSWORD:I

.field private final DIALOG_LOGIN:I

.field private final RESET_VERIFICATION_CODE:I

.field private final UPDATE_VERIFICATION_CODE:I

.field private childCount:I

.field private currentIndex:I

.field private isShowPwd:Landroid/widget/CheckBox;

.field private mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

.field private mBtGetVerificationCode:Landroid/widget/Button;

.field private mBtGoBackLogin:Landroid/widget/Button;

.field private mBtNextStep_1:Landroid/widget/Button;

.field private mBtNextStep_2:Landroid/widget/Button;

.field private mBtSubmitNewPwd:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private mEditInputPassword:Landroid/widget/EditText;

.field private mEditInputPasswordAgain:Landroid/widget/EditText;

.field private mEditPhoneNumber:Landroid/widget/EditText;

.field private mEditVerificationCode:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mScrollView_3:Landroid/widget/ScrollView;

.field private mServicePhone_1:Landroid/widget/Button;

.field private mServicePhone_2:Landroid/widget/Button;

.field private mServicePhone_3:Landroid/widget/Button;

.field private mShowPhoneNumber_2:Landroid/widget/TextView;

.field private mShowPhoneNumber_3:Landroid/widget/TextView;

.field private mTitle:Lcom/autonavi/xmgd/view/GDTitle;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private rspcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3c

    sput v0, Lcom/autonavi/xmgd/user/ForgetPassword;->countDown:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->DIALOG_LOGIN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->DIALOG_GET_IDENTIFY_CODE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->DIALOG_GET_RESET_PASSWORD:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->currentIndex:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->UPDATE_VERIFICATION_CODE:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->RESET_VERIFICATION_CODE:I

    new-instance v0, Lcom/autonavi/xmgd/user/ForgetPassword$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/user/ForgetPassword$1;-><init>(Lcom/autonavi/xmgd/user/ForgetPassword;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I

    return v0
.end method

.method static synthetic access$002(Lcom/autonavi/xmgd/user/ForgetPassword;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I

    return p1
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/user/ForgetPassword;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->dismissMyDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/user/ForgetPassword;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->showNext()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/autonavi/xmgd/user/ForgetPassword;->countDown:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    sput p0, Lcom/autonavi/xmgd/user/ForgetPassword;->countDown:I

    return p0
.end method

.method static synthetic access$500(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xmgd/user/ForgetPassword;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->updateGetIdentifyCodeView()V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPasswordAgain:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkPhoneNumber(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f07017f

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dismissMyDialog()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initChildView1()V
    .locals 1

    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditPhoneNumber:Landroid/widget/EditText;

    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtNextStep_1:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtNextStep_1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mServicePhone_1:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mServicePhone_1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initChildView2()V
    .locals 1

    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mShowPhoneNumber_2:Landroid/widget/TextView;

    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditVerificationCode:Landroid/widget/EditText;

    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtNextStep_2:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtNextStep_2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mServicePhone_2:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mServicePhone_2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initChildView3()V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mShowPhoneNumber_3:Landroid/widget/TextView;

    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPassword:Landroid/widget/EditText;

    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPasswordAgain:Landroid/widget/EditText;

    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtSubmitNewPwd:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtSubmitNewPwd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->isShowPwd:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->isShowPwd:Landroid/widget/CheckBox;

    new-instance v1, Lcom/autonavi/xmgd/user/ForgetPassword$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/user/ForgetPassword$2;-><init>(Lcom/autonavi/xmgd/user/ForgetPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mServicePhone_3:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mServicePhone_3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mScrollView_3:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mScrollView_3:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mScrollView_3:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    goto :goto_0
.end method

.method private initChildView4()V
    .locals 1

    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGoBackLogin:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGoBackLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDialog()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mTitle:Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mTitle:Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->childCount:I

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->initChildView1()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->initChildView2()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->initChildView3()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->initChildView4()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->initDialog()V

    return-void
.end method

.method private isPwdValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f070180

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, p1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->isPasswordValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f070190

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, p1, p2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->checkPasswordSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f070198

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showMyDialog(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->show()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    const v1, 0x7f070182

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    const v1, 0x7f0701a0

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    const v1, 0x7f0701a8

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showNext()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f040005

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    iget v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->currentIndex:I

    return-void
.end method

.method private showPrevious()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f040004

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f040006

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    iget v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->currentIndex:I

    return-void
.end method

.method private updateGetIdentifyCodeView()V
    .locals 4

    sget v0, Lcom/autonavi/xmgd/user/ForgetPassword;->countDown:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/autonavi/xmgd/user/ForgetPassword;->countDown:I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/autonavi/xmgd/user/ForgetPassword;->countDown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f070177

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setUsername(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->showNext()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mShowPhoneNumber_2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->showMyDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->updateGetIdentifyCodeView()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetpwd"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getIdentifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v1, 0x7f07019f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->checkIdentifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    const v1, 0x7f07019e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->showNext()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mShowPhoneNumber_3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->isPwdValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setPassword(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->showMyDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getIdentifyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->finish()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel:4008100080"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c006b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mScrollView_3:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mScrollView_3:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->setContentView(I)V

    iput-object p0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getInstance(Landroid/app/Application;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setHandler(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->initView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->currentIndex:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->showPrevious()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onRestart()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/ForgetPassword;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getInstance(Landroid/app/Application;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setHandler(Landroid/os/Handler;)V

    return-void
.end method
