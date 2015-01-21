.class public Lcom/android/simmelock/CPAddLockSetting;
.super Lcom/android/simmelock/SimLockBaseActivity;
.source "CPAddLockSetting.java"


# static fields
.field private static final ADDLOCK_ICC_SML_COMPLETE:I = 0x78

.field private static final DIALOG_ADDLOCKFAIL:I = 0x2

.field private static final DIALOG_ADDLOCKSUCCEED:I = 0x3

.field private static final DIALOG_GID1WRONG:I = 0x6

.field private static final DIALOG_GID2WRONG:I = 0x7

.field private static final DIALOG_MCCMNCLENGTHINCORRECT:I = 0x1

.field private static final DIALOG_PASSWORDLENGTHINCORRECT:I = 0x4

.field private static final DIALOG_PASSWORDWRONG:I = 0x5

.field private static final EVENT_GET_SIM_GID1:I = 0x24

.field private static final EVENT_GET_SIM_GID2:I = 0x25


# instance fields
.field private clickFlag:Z

.field private etGid1:Landroid/widget/EditText;

.field private etGid2:Landroid/widget/EditText;

.field private etMccMnc:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private etPwdConfirm:Landroid/widget/EditText;

.field private mGid1ReadSim:Z

.field private mGid2ReadSim:Z

.field private mHandler:Landroid/os/Handler;

.field private mMccMncReadSim:Z

.field private mSimGid1:Ljava/lang/String;

.field private mSimGid1Valid:Z

.field private mSimGid2:Ljava/lang/String;

.field private mSimGid2Valid:Z

.field private mSimMccMnc:Ljava/lang/String;

.field private s1:Landroid/widget/Spinner;

.field private s2:Landroid/widget/Spinner;

.field private s3:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/simmelock/SimLockBaseActivity;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    .line 90
    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;

    .line 91
    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;

    .line 92
    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;

    .line 93
    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    .line 98
    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid1:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lcom/android/simmelock/CPAddLockSetting;->mMccMncReadSim:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/simmelock/CPAddLockSetting;->mGid1ReadSim:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/simmelock/CPAddLockSetting;->mGid2ReadSim:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid1Valid:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2Valid:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/simmelock/CPAddLockSetting;->clickFlag:Z

    .line 400
    new-instance v0, Lcom/android/simmelock/CPAddLockSetting$13;

    invoke-direct {v0, p0}, Lcom/android/simmelock/CPAddLockSetting$13;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    iput-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->s1:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/simmelock/CPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2Valid:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/simmelock/CPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2Valid:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/simmelock/CPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/simmelock/CPAddLockSetting;->clickFlag:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/simmelock/CPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/simmelock/CPAddLockSetting;->clickFlag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/simmelock/CPAddLockSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/simmelock/CPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/simmelock/CPAddLockSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/simmelock/CPAddLockSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/simmelock/CPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mMccMncReadSim:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/simmelock/CPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/simmelock/CPAddLockSetting;->mMccMncReadSim:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->s2:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/simmelock/CPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mGid1ReadSim:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/simmelock/CPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/simmelock/CPAddLockSetting;->mGid1ReadSim:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/simmelock/CPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid1Valid:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/simmelock/CPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid1Valid:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->s3:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/simmelock/CPAddLockSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/simmelock/CPAddLockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/simmelock/CPAddLockSetting;->mGid2ReadSim:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/simmelock/CPAddLockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/simmelock/CPAddLockSetting;->mGid2ReadSim:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/simmelock/SimLockBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 114
    const v8, 0x7f070002

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    .line 115
    const v8, 0x7f070005

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;

    .line 116
    const v8, 0x7f070008

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;

    .line 117
    const v8, 0x7f07000a

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;

    .line 120
    const v8, 0x7f070001

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s1:Landroid/widget/Spinner;

    .line 121
    const v8, 0x7f070004

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s2:Landroid/widget/Spinner;

    .line 122
    const v8, 0x7f070007

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s3:Landroid/widget/Spinner;

    .line 123
    const v8, 0x7f07000c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    .line 125
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etMccMnc:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etGid1:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etGid2:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 128
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/simmelock/SimLockBaseActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    const v8, 0x7f07000d

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 133
    .local v4, btnConfirm:Landroid/widget/Button;
    const v8, 0x7f07000e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 135
    .local v3, btnCancel:Landroid/widget/Button;
    const/high16 v8, 0x7f05

    const v9, 0x1090008

    invoke-static {p0, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 137
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 138
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s1:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 139
    new-instance v5, Lcom/android/simmelock/CPAddLockSetting$1;

    invoke-direct {v5, p0}, Lcom/android/simmelock/CPAddLockSetting$1;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    .line 156
    .local v5, l:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s1:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 158
    const/high16 v8, 0x7f05

    const v9, 0x1090008

    invoke-static {p0, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 160
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 161
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s2:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 162
    new-instance v6, Lcom/android/simmelock/CPAddLockSetting$2;

    invoke-direct {v6, p0}, Lcom/android/simmelock/CPAddLockSetting$2;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    .line 181
    .local v6, l2:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s2:Landroid/widget/Spinner;

    invoke-virtual {v8, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    const/high16 v8, 0x7f05

    const v9, 0x1090008

    invoke-static {p0, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 185
    .local v2, adapter3:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 186
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s3:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 187
    new-instance v7, Lcom/android/simmelock/CPAddLockSetting$3;

    invoke-direct {v7, p0}, Lcom/android/simmelock/CPAddLockSetting$3;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    .line 206
    .local v7, l3:Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->s3:Landroid/widget/Spinner;

    invoke-virtual {v8, v7}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;

    const/16 v9, 0x81

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setInputType(I)V

    .line 209
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwd:Landroid/widget/EditText;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 211
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    const/16 v9, 0x81

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setInputType(I)V

    .line 212
    iget-object v8, p0, Lcom/android/simmelock/CPAddLockSetting;->etPwdConfirm:Landroid/widget/EditText;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/android/simmelock/SMLCommonProcess;->limitEditTextPassword(Landroid/widget/EditText;I)V

    .line 215
    new-instance v8, Lcom/android/simmelock/CPAddLockSetting$4;

    invoke-direct {v8, p0}, Lcom/android/simmelock/CPAddLockSetting$4;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v8, Lcom/android/simmelock/CPAddLockSetting$5;

    invoke-direct {v8, p0}, Lcom/android/simmelock/CPAddLockSetting$5;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f06000f

    .line 311
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

    .line 317
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 397
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 319
    :pswitch_0
    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/CPAddLockSetting$6;

    invoke-direct {v2, p0}, Lcom/android/simmelock/CPAddLockSetting$6;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 333
    :pswitch_1
    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/CPAddLockSetting$7;

    invoke-direct {v2, p0}, Lcom/android/simmelock/CPAddLockSetting$7;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 344
    :pswitch_2
    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/CPAddLockSetting$8;

    invoke-direct {v2, p0}, Lcom/android/simmelock/CPAddLockSetting$8;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 354
    :pswitch_3
    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/CPAddLockSetting$9;

    invoke-direct {v2, p0}, Lcom/android/simmelock/CPAddLockSetting$9;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 364
    :pswitch_4
    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/CPAddLockSetting$10;

    invoke-direct {v2, p0}, Lcom/android/simmelock/CPAddLockSetting$10;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 374
    :pswitch_5
    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/CPAddLockSetting$11;

    invoke-direct {v2, p0}, Lcom/android/simmelock/CPAddLockSetting$11;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 384
    :pswitch_6
    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/simmelock/CPAddLockSetting$12;

    invoke-direct {v2, p0}, Lcom/android/simmelock/CPAddLockSetting$12;-><init>(Lcom/android/simmelock/CPAddLockSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 270
    invoke-virtual {p0}, Lcom/android/simmelock/SimLockBaseActivity;->isSimReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    const-string v4, "Add NP lock fail : SIM not ready!"

    invoke-virtual {p0, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 285
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    .line 286
    .local v3, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v4, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 289
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v4, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccFileHandlerGemini(I)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 290
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v4, 0x6f3e

    iget-object v5, p0, Lcom/android/simmelock/CPAddLockSetting;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 291
    const/16 v4, 0x6f3f

    iget-object v5, p0, Lcom/android/simmelock/CPAddLockSetting;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 294
    iget v4, p0, Lcom/android/simmelock/SimLockBaseActivity;->simNumber:I

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;

    .line 295
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 296
    const-string v4, "Fail to read SIM GID2!"

    invoke-virtual {p0, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    .line 302
    :goto_1
    iget-object v4, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 303
    const-string v4, "Fail to read SIM MCC+MNC!"

    invoke-virtual {p0, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Gemini]Succeed to read SIM GID2. SIM GID2 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimGid2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read SIM MCC+MNC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/simmelock/CPAddLockSetting;->mSimMccMnc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/simmelock/SimLockBaseActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
