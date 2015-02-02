.class public Lcom/mediatek/engineermode/hqanfc/FunctionRead;
.super Landroid/app/Activity;
.source "FunctionRead.java"


# static fields
.field protected static final BYTE_EXTRA_STR:Ljava/lang/String; = "byte_data"

.field protected static final HANDLER_MSG_GET_RSP:I = 0x12c

.field protected static final PARENT_EXTRA_STR:Ljava/lang/String; = "parent_ui_id"


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnRead:Landroid/widget/Button;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

.field private mRbTypeOthers:Landroid/widget/RadioButton;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRgTagType:Landroid/widget/RadioGroup;

.field private mRspArray:[B

.field private mTvLang:Landroid/widget/EditText;

.field private mTvPayloadAscii:Landroid/widget/EditText;

.field private mTvPayloadHex:Landroid/widget/EditText;

.field private mTvPayloadLength:Landroid/widget/EditText;

.field private mTvRecordFlag:Landroid/widget/EditText;

.field private mTvRecordId:Landroid/widget/EditText;

.field private mTvRecordInf:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;-><init>(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/FunctionRead$2;-><init>(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/FunctionRead$3;-><init>(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/FunctionRead;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/FunctionRead;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/FunctionRead;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->updateUi(Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mBtnRead:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->doRead()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mBtnCancel:Landroid/widget/Button;

    return-object v0
.end method

.method private doRead()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;-><init>()V

    .line 175
    .local v0, request:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;
    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mAction:I

    .line 176
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 178
    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    const v0, 0x7f0b0220

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRgTagType:Landroid/widget/RadioGroup;

    .line 150
    const v0, 0x7f0b0224

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRbTypeOthers:Landroid/widget/RadioButton;

    .line 151
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRbTypeOthers:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const v0, 0x7f0b0225

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvLang:Landroid/widget/EditText;

    .line 153
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvLang:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 154
    const v0, 0x7f0b0226

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordFlag:Landroid/widget/EditText;

    .line 155
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordFlag:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 156
    const v0, 0x7f0b0227

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordId:Landroid/widget/EditText;

    .line 157
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordId:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 158
    const v0, 0x7f0b0228

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordInf:Landroid/widget/EditText;

    .line 159
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordInf:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 160
    const v0, 0x7f0b0229

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadLength:Landroid/widget/EditText;

    .line 161
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadLength:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 162
    const v0, 0x7f0b022a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadHex:Landroid/widget/EditText;

    .line 163
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadHex:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 164
    const v0, 0x7f0b022b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadAscii:Landroid/widget/EditText;

    .line 165
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadAscii:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 166
    const v0, 0x7f0b022c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mBtnRead:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mBtnRead:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f0b022d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mBtnCancel:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mBtnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRgTagType:Landroid/widget/RadioGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 171
    return-void
.end method

.method private updateUi(Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 181
    const/4 v0, -0x1

    .line 182
    .local v0, tempInt:I
    iget-object v1, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mNdefType:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcNdefType;

    iget v1, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcNdefType;->mEnumValue:I

    packed-switch v1, :pswitch_data_0

    .line 196
    const-string v1, "EM/HQA/NFC"

    const-string v2, "[FunctionRead]NfcNdefType is error"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRgTagType:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 200
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordFlag:Landroid/widget/EditText;

    iget-byte v2, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mRecordFlags:B

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->printHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordId:Landroid/widget/EditText;

    iget-object v2, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mRecordId:[B

    invoke-static {v2, v5}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->printHexString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvRecordInf:Landroid/widget/EditText;

    iget-byte v2, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mRecordTnf:B

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->printHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadLength:Landroid/widget/EditText;

    iget v2, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mLength:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvLang:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mLang:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadAscii:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mData:[B

    iget v4, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mLength:I

    invoke-direct {v2, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mTvPayloadHex:Landroid/widget/EditText;

    iget-object v2, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mData:[B

    iget v3, p1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;->mLength:I

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->printHexString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void

    .line 184
    :pswitch_0
    const v0, 0x7f0b0221

    .line 185
    goto :goto_0

    .line 187
    :pswitch_1
    const v0, 0x7f0b0222

    .line 188
    goto :goto_0

    .line 190
    :pswitch_2
    const v0, 0x7f0b0223

    .line 191
    goto :goto_0

    .line 193
    :pswitch_3
    const v0, 0x7f0b0224

    .line 194
    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v3, 0x7f030045

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 119
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->initComponents()V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "parent_ui_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 121
    .local v2, parentId:I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 122
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "byte_data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    .local v0, optData:[B
    new-instance v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    invoke-direct {v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;-><init>()V

    .line 125
    .local v1, optRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 126
    iget-object v3, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;->mTagReadNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->updateUi(Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;)V

    .line 128
    .end local v0           #optData:[B
    .end local v1           #optRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.104"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method
