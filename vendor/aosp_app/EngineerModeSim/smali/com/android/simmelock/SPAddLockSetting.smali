.class public Lcom/android/simmelock/SPAddLockSetting;
.super Lcom/android/simmelock/SimLockBaseActivity;
.source "SPAddLockSetting.java"


# static fields
.field private static final ADDLOCK_ICC_SML_COMPLETE:I = 0x78

.field private static final DIALOG_ADDLOCKFAIL:I = 0x2

.field private static final DIALOG_ADDLOCKSUCCEED:I = 0x3

.field private static final DIALOG_GID1WRONG:I = 0x6

.field private static final DIALOG_MCCMNCLENGTHINCORRECT:I = 0x1

.field private static final DIALOG_PASSWORDLENGTHINCORRECT:I = 0x4

.field private static final DIALOG_PASSWORDWRONG:I = 0x5

.field private static final EVENT_GET_SIM_GID1:I = 0x24


# instance fields
.field private clickFlag:Z

.field private etGid1:Landroid/widget/EditText;

.field private etMccMnc:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private etPwdConfirm:Landroid/widget/EditText;

.field private mGid1ReadSim:Z

.field private mHandler:Landroid/os/Handler;

.field private mMccMncReadSim:Z

.field private mSimGid1:Ljava/lang/String;

.field private mSimGid1Valid:Z

.field private mSimMccMnc:Ljava/lang/String;

.field private s1:Landroid/widget/Spinner;

.field private s2:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/simmelock/SimLockBaseActivity;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    .line 89
    iput-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;

    .line 90
    iput-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;

    .line 91
    iput-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    .line 95
    iput-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimGid1:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/android/simmelock/SPAddLockSetting;->mMccMncReadSim:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/simmelock/SPAddLockSetting;->mGid1ReadSim:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimGid1Valid:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/simmelock/SPAddLockSetting;->clickFlag:Z

    .line 337
    new-instance v0, Lcom/android/simmelock/SPAddLockSetting$11;

    invoke-direct {v0, p0}, Lcom/android/simmelock/SPAddLockSetting$11;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->s1:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/simmelock/SPAddLockSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/simmelock/SPAddLockSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimGid1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/simmelock/SPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimGid1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/simmelock/SPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mMccMncReadSim:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/simmelock/SPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/simmelock/SPAddLockSetting;->mMccMncReadSim:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->s2:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/simmelock/SPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mGid1ReadSim:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/simmelock/SPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/simmelock/SPAddLockSetting;->mGid1ReadSim:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/simmelock/SPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimGid1Valid:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/simmelock/SPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimGid1Valid:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/simmelock/SPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/simmelock/SPAddLockSetting;->clickFlag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/simmelock/SPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/simmelock/SPAddLockSetting;->clickFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/simmelock/SPAddLockSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/simmelock/SPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/high16 v11, 0x7f05

    const v10, 0x1090009

    const v9, 0x1090008

    const/16 v8, 0x81

    const/16 v7, 0x8

    .line 104
    invoke-super {p0, p1}, Lcom/android/simmelock/SimLockBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v6, 0x7f030007

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 108
    const v6, 0x7f070032

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    .line 109
    const v6, 0x7f070035

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;

    .line 113
    const v6, 0x7f070031

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->s1:Landroid/widget/Spinner;

    .line 114
    invoke-static {p0, v11, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 116
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 117
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->s1:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    new-instance v4, Lcom/android/simmelock/SPAddLockSetting$1;

    invoke-direct {v4, p0}, Lcom/android/simmelock/SPAddLockSetting$1;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    .line 135
    .local v4, l:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->s1:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 137
    const v6, 0x7f070034

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->s2:Landroid/widget/Spinner;

    .line 138
    invoke-static {p0, v11, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 140
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 141
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->s2:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    new-instance v5, Lcom/android/simmelock/SPAddLockSetting$2;

    invoke-direct {v5, p0}, Lcom/android/simmelock/SPAddLockSetting$2;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    .line 161
    .local v5, l2:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->s2:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    const v6, 0x7f070037

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;

    .line 164
    const v6, 0x7f070039

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    .line 165
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 166
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;

    invoke-static {v6, v7}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 167
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 168
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    invoke-static {v6, v7}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 169
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 170
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etGid1:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwd:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 172
    iget-object v6, p0, Lcom/android/simmelock/SPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    const v6, 0x7f07003a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 177
    .local v3, btnConfirm:Landroid/widget/Button;
    new-instance v6, Lcom/android/simmelock/SPAddLockSetting$3;

    invoke-direct {v6, p0}, Lcom/android/simmelock/SPAddLockSetting$3;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v6, 0x7f07003b

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 215
    .local v2, btnCancel:Landroid/widget/Button;
    new-instance v6, Lcom/android/simmelock/SPAddLockSetting$4;

    invoke-direct {v6, p0}, Lcom/android/simmelock/SPAddLockSetting$4;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f06000f

    .line 257
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 263
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 334
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 265
    :pswitch_0
    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/SPAddLockSetting$5;

    invoke-direct {v2, p0}, Lcom/android/simmelock/SPAddLockSetting$5;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 278
    :pswitch_1
    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/SPAddLockSetting$6;

    invoke-direct {v2, p0}, Lcom/android/simmelock/SPAddLockSetting$6;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 289
    :pswitch_2
    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/SPAddLockSetting$7;

    invoke-direct {v2, p0}, Lcom/android/simmelock/SPAddLockSetting$7;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 299
    :pswitch_3
    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/SPAddLockSetting$8;

    invoke-direct {v2, p0}, Lcom/android/simmelock/SPAddLockSetting$8;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 313
    :pswitch_4
    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/SPAddLockSetting$9;

    invoke-direct {v2, p0}, Lcom/android/simmelock/SPAddLockSetting$9;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 323
    :pswitch_5
    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/SPAddLockSetting$10;

    invoke-direct {v2, p0}, Lcom/android/simmelock/SPAddLockSetting$10;-><init>(Lcom/android/simmelock/SPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 226
    invoke-virtual {p0}, Lcom/android/simmelock/SimLockBaseActivity;->isSimReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    const-string v3, "Add NP lock fail : SIM not ready!"

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    .line 241
    .local v2, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 244
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v3, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccFileHandlerGemini(I)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 245
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v3, 0x6f3e

    iget-object v4, p0, Lcom/android/simmelock/SPAddLockSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 248
    iget-object v3, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 249
    const-string v3, "Fail to read SIM MCC+MNC!"

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read SIM MCC+MNC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/simmelock/SPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
