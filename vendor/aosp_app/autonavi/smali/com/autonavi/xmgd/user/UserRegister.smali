.class public Lcom/autonavi/xmgd/user/UserRegister;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "chenwei.UserRegister"

.field private static countDown:I


# instance fields
.field private final DIALOG_GET_IDENTIFY_CODE:I

.field private final DIALOG_LOGIN:I

.field private final DIALOG_REGISTER:I

.field private final RESET_VERIFICATION_CODE:I

.field private final UPDATE_VERIFICATION_CODE:I

.field private childCount:I

.field private currentIndex:I

.field private isCheckedDeclare:Z

.field private isShowPwd:Landroid/widget/CheckBox;

.field private mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

.field private mBtGetVerificationCode:Landroid/widget/Button;

.field private mBtGoBackLogin:Landroid/widget/Button;

.field private mBtNextStep_1:Landroid/widget/Button;

.field private mBtNextStep_2:Landroid/widget/Button;

.field private mBtSubmitPassword:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mEditInputPassword:Landroid/widget/EditText;

.field private mEditInputPasswordAgain:Landroid/widget/EditText;

.field private mEditVerificationCode:Landroid/widget/EditText;

.field private mEditVerifyPhone:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mShowPhone_2:Landroid/widget/TextView;

.field private mShowPhone_3:Landroid/widget/TextView;

.field private mTVServiceTerms:Landroid/widget/TextView;

.field private mTitle:Lcom/autonavi/xmgd/view/GDTitle;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private rspcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3c

    sput v0, Lcom/autonavi/xmgd/user/UserRegister;->countDown:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    iput v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->DIALOG_REGISTER:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->DIALOG_LOGIN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->DIALOG_GET_IDENTIFY_CODE:I

    iput v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->currentIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mDateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0xb

    iput v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->UPDATE_VERIFICATION_CODE:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->RESET_VERIFICATION_CODE:I

    new-instance v0, Lcom/autonavi/xmgd/user/UserRegister$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/user/UserRegister$1;-><init>(Lcom/autonavi/xmgd/user/UserRegister;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->isCheckedDeclare:Z

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/user/UserRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->dismissMyDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/user/UserRegister;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPasswordAgain:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/autonavi/xmgd/user/UserRegister;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I

    return p1
.end method

.method static synthetic access$1102(Lcom/autonavi/xmgd/user/UserRegister;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/user/UserRegister;->isCheckedDeclare:Z

    return p1
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/user/UserRegister;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xmgd/user/UserRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->showNext()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/autonavi/xmgd/user/UserRegister;->countDown:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/autonavi/xmgd/user/UserRegister;->countDown:I

    return p0
.end method

.method static synthetic access$600(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/xmgd/user/UserRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->updateGetIdentifyCodeView()V

    return-void
.end method

.method static synthetic access$800(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkPhoneNumber(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getStr(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/UserRegister;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initChildView1()V
    .locals 2

    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditVerifyPhone:Landroid/widget/EditText;

    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/autonavi/xmgd/user/UserRegister$3;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/user/UserRegister$3;-><init>(Lcom/autonavi/xmgd/user/UserRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0c0081

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtNextStep_1:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtNextStep_1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mTVServiceTerms:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mTVServiceTerms:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private initChildView2()V
    .locals 1

    const v0, 0x7f0c0082

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mShowPhone_2:Landroid/widget/TextView;

    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditVerificationCode:Landroid/widget/EditText;

    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtNextStep_2:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtNextStep_2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initChildView3()V
    .locals 2

    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mShowPhone_3:Landroid/widget/TextView;

    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPassword:Landroid/widget/EditText;

    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPasswordAgain:Landroid/widget/EditText;

    const v0, 0x7f0c008a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtSubmitPassword:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtSubmitPassword:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->isShowPwd:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->isShowPwd:Landroid/widget/CheckBox;

    new-instance v1, Lcom/autonavi/xmgd/user/UserRegister$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/user/UserRegister$2;-><init>(Lcom/autonavi/xmgd/user/UserRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initChildView4()V
    .locals 1

    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtGoBackLogin:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtGoBackLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDialog()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mTitle:Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mTitle:Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f07018b

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->childCount:I

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->initChildView1()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->initChildView2()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->initChildView3()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->initChildView4()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->initDialog()V

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
    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v2, 0x7f070197

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, p1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->isPasswordValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v2, 0x7f070190

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, p1, p2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->checkPasswordSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->show()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    const v1, 0x7f070195

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    const v1, 0x7f070182

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mCustomDialog:Lcom/autonavi/xmgd/utility/CustomDialog;

    const v1, 0x7f0701a0

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private showNext()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v2, 0x7f040005

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    iget v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->currentIndex:I

    return-void
.end method

.method private showPrevious()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v2, 0x7f040004

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v2, 0x7f040006

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    iget v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->currentIndex:I

    return-void
.end method

.method private updateGetIdentifyCodeView()V
    .locals 4

    sget v0, Lcom/autonavi/xmgd/user/UserRegister;->countDown:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/autonavi/xmgd/user/UserRegister;->countDown:I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/autonavi/xmgd/user/UserRegister;->countDown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v2, 0x7f070177

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->isCheckedDeclare:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v1, 0x7f070196

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditVerifyPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->showNext()V

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setUsername(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mShowPhone_2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/user/UserRegister;->showMyDialog(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->updateGetIdentifyCodeView()V

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getIdentifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->checkIdentifyCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->showNext()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mShowPhone_3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v1, 0x7f07019e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    const v1, 0x7f07019f

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/user/UserRegister;->isPwdValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/user/UserRegister;->showMyDialog(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/user/GDAccountLogic;->register(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->hideKeyboard()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/UserRegister;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0081
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/user/UserRegister;->setContentView(I)V

    iput-object p0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/UserRegister;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getInstance(Landroid/app/Application;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setHandler(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->currentIndex:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/user/UserRegister;->showPrevious()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/UserRegister;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onRestart()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/user/UserRegister;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getInstance(Landroid/app/Application;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister;->mAccountLogic:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onResume()V

    return-void
.end method
