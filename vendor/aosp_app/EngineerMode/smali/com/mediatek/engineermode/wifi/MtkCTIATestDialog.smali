.class public Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;
.super Landroid/app/AlertDialog;
.source "MtkCTIATestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final CTIA_PREF:Ljava/lang/String; = "CTIA_PREF"

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final PREF_CTIA_DUMP_BEACON:Ljava/lang/String; = "CTIA_DUMP_1"

.field private static final PREF_CTIA_DUMP_COUNTER:Ljava/lang/String; = "CTIA_DUMP_2"

.field private static final PREF_CTIA_DUMP_INTERVAL:Ljava/lang/String; = "CTIA_DUMP_3"

.field private static final PREF_CTIA_ENABLE:Ljava/lang/String; = "CTIA_ENABLE"

.field private static final PREF_CTIA_POWER:Ljava/lang/String; = "CTIA_POWER_MODE"

.field private static final PREF_CTIA_RATE:Ljava/lang/String; = "CTIA_RATE"

.field private static final TAG:Ljava/lang/String; = "EM/CTIATestDialog"


# instance fields
.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDumpBeaconCheckbox:Landroid/widget/CheckBox;

.field private mDumpCounterCheckbox:Landroid/widget/CheckBox;

.field private mGetBtn:Landroid/widget/Button;

.field private mIdEditText:Landroid/widget/EditText;

.field private mIntervalEditText:Landroid/widget/EditText;

.field private mPowerMode:I

.field private mRate:[Ljava/lang/String;

.field private mRateSpinner:Landroid/widget/Spinner;

.field private mRateVal:I

.field private mSetBtn:Landroid/widget/Button;

.field private mValEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 122
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mView:Landroid/view/View;

    .line 123
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    .line 124
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mContext:Landroid/content/Context;

    .line 127
    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Automatic"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "1M"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2M"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "5_5M"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "11M"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "9M"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "12M"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "18M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "24M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "36M"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "48M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "54M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "20MCS0800"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "20MCS01800"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "20MCS2800"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "20MCS3800"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "20MCS4800"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "20MCS5800"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "20MCS6800"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20MCS7800"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "20MCS0400"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "20MCS1400"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "20MCS2400"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "20MCS3400"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "20MCS4400"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "20MCS5400"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "20MCS6400"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "20MCS7400"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "40MCS0800"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "40MCS1800"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "40MCS2800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "40MCS3800"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "40MCS4800"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "40MCS5800"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "40MCS6800"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "40MCS7800"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "40MCS32800"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "40MCS0400"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "40MCS1400"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "40MCS2400"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "40MCS3400"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "40MCS4400"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "40MCS5400"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "40MCS6400"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "40MCS7400"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "40MCS32400"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRate:[Ljava/lang/String;

    .line 142
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 143
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    .line 145
    iput v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateVal:I

    .line 146
    iput v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mPowerMode:I

    .line 147
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;

    .line 148
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;

    .line 149
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIdEditText:Landroid/widget/EditText;

    .line 150
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;

    .line 153
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    .line 156
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    .line 157
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    .line 195
    new-instance v0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;-><init>(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 161
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mContext:Landroid/content/Context;

    .line 162
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIdEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private getRateFromSpinner()I
    .locals 2

    .prologue
    .line 368
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 369
    .local v0, position:I
    return v0
.end method

.method private handlePsChange(I)V
    .locals 0
    .parameter "psMode"

    .prologue
    .line 364
    iput p1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mPowerMode:I

    .line 365
    return-void
.end method

.method private handleRateChange(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 359
    iput p1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateVal:I

    .line 360
    return-void
.end method

.method private onFill()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method private onLayout()V
    .locals 4

    .prologue
    .line 183
    const v3, 0x7f030022

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setLayout(I)V

    .line 184
    const v2, 0x7f0801df

    .line 185
    .local v2, positiveButtonResId:I
    const v0, 0x7f08023c

    .line 186
    .local v0, negativeButtonResId:I
    const/4 v1, 0x0

    .line 187
    .local v1, neutralButtonResId:I
    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setButtons(III)V

    .line 188
    return-void
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 305
    const v0, 0x7f0b00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    .line 307
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRate:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setSpinnerAdapter(Landroid/widget/Spinner;[Ljava/lang/String;)V

    .line 310
    const v0, 0x7f0b00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;

    .line 311
    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;

    .line 313
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 318
    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 320
    const v0, 0x7f0b00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIdEditText:Landroid/widget/EditText;

    .line 321
    const v0, 0x7f0b00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;

    .line 322
    const v0, 0x7f0b00f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    .line 326
    const v0, 0x7f0b00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    .line 328
    const v0, 0x7f0b00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    .line 331
    return-void
.end method

.method private restorePrefs()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 279
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mContext:Landroid/content/Context;

    const-string v7, "CTIA_PREF"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 281
    .local v5, settings:Landroid/content/SharedPreferences;
    const-string v6, "CTIA_ENABLE"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 282
    .local v3, prefEnableCtia:Z
    const-string v6, "CTIA_RATE"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 284
    .local v4, prefRate:I
    const-string v6, "CTIA_DUMP_1"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 286
    .local v1, prefDumpBeacon:Z
    const-string v6, "CTIA_DUMP_2"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 289
    .local v2, prefDumpCounter:Z
    const-string v6, "CTIA_DUMP_3"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, interval:I
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 294
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 297
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 298
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 299
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    return-void
.end method

.method private savePrefs()V
    .locals 7

    .prologue
    .line 251
    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mContext:Landroid/content/Context;

    const-string v5, "CTIA_PREF"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 253
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 254
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "CTIA_ENABLE"

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string v4, "CTIA_RATE"

    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getRateFromSpinner()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v4, "CTIA_DUMP_1"

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 259
    const-string v4, "CTIA_DUMP_2"

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 262
    const/4 v3, 0x0

    .line 264
    .local v3, tmpInterval:I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 269
    :goto_0
    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 270
    const/16 v3, 0xff

    .line 274
    :cond_0
    :goto_1
    const-string v4, "CTIA_DUMP_3"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    goto :goto_0

    .line 271
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 272
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private setButtons(III)V
    .locals 2
    .parameter "positiveResId"
    .parameter "negativeResId"
    .parameter "neutralResId"

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 346
    .local v0, context:Landroid/content/Context;
    if-lez p1, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 349
    :cond_0
    if-lez p2, :cond_1

    .line 350
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 352
    :cond_1
    if-lez p3, :cond_2

    .line 353
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 355
    :cond_2
    return-void
.end method

.method private setLayout(I)V
    .locals 2
    .parameter "layoutResId"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mView:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->onReferenceViews(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method private setSpinnerAdapter(Landroid/widget/Spinner;[Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "items"

    .prologue
    .line 334
    if-eqz p2, :cond_0

    .line 335
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 337
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 339
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 341
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    const/16 v11, 0x10

    .line 389
    const/4 v5, -0x1

    if-ne p2, v5, :cond_6

    .line 390
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->savePrefs()V

    .line 391
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 392
    const-string v5, "EM/CTIATestDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCTIATestOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->doCtiaTestOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v5, "EM/CTIATestDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCTIATestRate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    iget v8, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateVal:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->doCtiaTestRate(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    const/4 v1, 0x0

    .line 405
    .local v1, id:I
    const/4 v3, 0x0

    .line 406
    .local v3, val:I
    const-string v5, "10020000"

    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v1, v5

    .line 407
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 408
    :goto_1
    const-string v5, "EM/CTIATestDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCTIATestSet: id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " val: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v1

    int-to-long v9, v3

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->doCTIATestSet(JJ)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v2, 0x0

    .line 413
    .local v2, tmpInterval:I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 419
    :goto_2
    const/16 v5, 0xff

    if-le v2, v5, :cond_4

    .line 420
    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    const-string v5, "255"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const/16 v2, 0xff

    .line 427
    :cond_0
    :goto_3
    const-string v4, "10020001"

    invoke-static {v4, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v1, v4

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "01"

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v3, v4

    .line 431
    const-string v4, "EM/CTIATestDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCTIATestSet: id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " val: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v1

    int-to-long v8, v3

    invoke-static {v6, v7, v8, v9}, Lcom/mediatek/engineermode/wifi/EMWifi;->doCTIATestSet(JJ)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 438
    .end local v1           #id:I
    .end local v2           #tmpInterval:I
    .end local v3           #val:I
    :cond_1
    :goto_5
    return-void

    .line 398
    :cond_2
    const-string v5, "EM/CTIATestDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCTIATestOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->doCtiaTestOff()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v5, "EM/CTIATestDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCTIATestRate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    iget v8, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateVal:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->doCtiaTestRate(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 407
    .restart local v1       #id:I
    .restart local v3       #val:I
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 415
    .restart local v2       #tmpInterval:I
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .line 417
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 422
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    if-ge v2, v4, :cond_0

    .line 423
    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 428
    :cond_5
    const-string v4, "00"

    goto/16 :goto_4

    .line 434
    .end local v1           #id:I
    .end local v2           #tmpInterval:I
    .end local v3           #val:I
    :cond_6
    const/4 v4, -0x2

    if-ne p2, v4, :cond_1

    .line 435
    const-string v4, "EM/CTIATestDialog"

    const-string v5, "cancel"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->onLayout()V

    .line 172
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->restorePrefs()V

    .line 173
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getRateFromSpinner()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->handleRateChange(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 242
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 247
    return-void
.end method
