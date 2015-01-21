.class public Lcom/mediatek/engineermode/hqanfc/FunctionWrite;
.super Landroid/app/Activity;
.source "FunctionWrite.java"


# static fields
.field protected static final HANDLER_MSG_GET_RSP:I = 0xc8


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnWrite:Landroid/widget/Button;

.field private final mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mEtCompany:Landroid/widget/EditText;

.field private mEtText:Landroid/widget/EditText;

.field private mEtUrl:Landroid/widget/EditText;

.field private final mHandler:Landroid/os/Handler;

.field private mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRgTagType:Landroid/widget/RadioGroup;

.field private mRspArray:[B

.field private mSpLang:Landroid/widget/Spinner;

.field private mTvCompany:Landroid/widget/TextView;

.field private mTvText:Landroid/widget/TextView;

.field private mTvUrl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$1;-><init>(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$2;-><init>(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$3;-><init>(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$4;-><init>(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mRspArray:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mRspArray:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mBtnWrite:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->doWrite()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mBtnCancel:Landroid/widget/Button;

    return-object v0
.end method

.method private checkInput()Z
    .locals 2

    .prologue
    .line 251
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mRgTagType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doWrite()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 187
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->checkInput()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 188
    new-instance v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;

    invoke-direct {v5}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;-><init>()V

    .line 189
    .local v5, request:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;
    const/4 v12, 0x1

    iput v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mAction:I

    .line 190
    const/4 v7, -0x1

    .line 191
    .local v7, tempInt:I
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mRgTagType:Landroid/widget/RadioGroup;

    invoke-virtual {v12}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 199
    const/4 v7, 0x3

    .line 202
    :goto_0
    iget-object v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mTagWriteNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;

    iget-object v12, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;->mNdefType:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcNdefType;

    iput v7, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcNdefType;->mEnumValue:I

    .line 203
    iget-object v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mTagWriteNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;

    iget-object v12, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;->mNdefLangType:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcNdefLangType;

    iget-object v13, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mSpLang:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v13

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcNdefLangType;->mEnumValue:I

    .line 204
    packed-switch v7, :pswitch_data_1

    .line 243
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->getInstance()Lcom/mediatek/engineermode/hqanfc/NfcClient;

    move-result-object v12

    const/16 v13, 0x67

    invoke-virtual {v12, v13, v5}, Lcom/mediatek/engineermode/hqanfc/NfcClient;->sendCommand(ILcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmReq;)I

    .line 248
    .end local v5           #request:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;
    .end local v7           #tempInt:I
    :goto_2
    return-void

    .line 193
    .restart local v5       #request:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;
    .restart local v7       #tempInt:I
    :pswitch_1
    const/4 v7, 0x0

    .line 194
    goto :goto_0

    .line 196
    :pswitch_2
    const/4 v7, 0x1

    .line 197
    goto :goto_0

    .line 206
    :pswitch_3
    new-instance v10, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;

    invoke-direct {v10}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;-><init>()V

    .line 207
    .local v10, url:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtUrl:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 208
    .local v11, urlArray:[B
    iget-object v12, v10, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;->mUrlData:[B

    array-length v13, v11

    invoke-static {v11, v14, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v12, v10, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;->mUrlData:[B

    array-length v12, v12

    int-to-short v12, v12

    iput-short v12, v10, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;->mUrlDataLength:S

    .line 210
    invoke-virtual {v10}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;->getByteArray()[B

    move-result-object v2

    .line 211
    .local v2, arrayU:[B
    iget-object v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mTagWriteNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;

    iget-object v12, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;->mNdefData:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdefData;

    iget-object v12, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdefData;->mData:[B

    array-length v13, v2

    invoke-static {v2, v14, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mTagWriteNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;

    array-length v13, v2

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;->mLength:I

    goto :goto_1

    .line 216
    .end local v2           #arrayU:[B
    .end local v10           #url:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$UrlT;
    .end local v11           #urlArray:[B
    :pswitch_4
    new-instance v8, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$TextT;

    invoke-direct {v8}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$TextT;-><init>()V

    .line 217
    .local v8, text:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$TextT;
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 218
    .local v9, textArray:[B
    iget-object v12, v8, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$TextT;->mData:[B

    array-length v13, v9

    invoke-static {v9, v14, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    array-length v12, v9

    int-to-short v12, v12

    iput-short v12, v8, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$TextT;->mDataLength:S

    .line 220
    invoke-virtual {v8}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$TextT;->getByteArray()[B

    move-result-object v1

    .line 221
    .local v1, arrayT:[B
    iget-object v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mTagWriteNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;

    iget-object v12, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;->mNdefData:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdefData;

    iget-object v12, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdefData;->mData:[B

    array-length v13, v1

    invoke-static {v1, v14, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mTagWriteNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;

    array-length v13, v1

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;->mLength:I

    goto :goto_1

    .line 226
    .end local v1           #arrayT:[B
    .end local v8           #text:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$TextT;
    .end local v9           #textArray:[B
    :pswitch_5
    new-instance v6, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;

    invoke-direct {v6}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;-><init>()V

    .line 227
    .local v6, smart:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtCompany:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 228
    .local v3, comArray:[B
    iget-object v12, v6, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompany:[B

    array-length v13, v3

    invoke-static {v3, v14, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v12, v3

    int-to-short v12, v12

    iput-short v12, v6, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompanyLength:S

    .line 230
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtUrl:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 231
    .local v4, comUrlArray:[B
    iget-object v12, v6, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompanyUrl:[B

    array-length v13, v4

    invoke-static {v4, v14, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    array-length v12, v4

    int-to-short v12, v12

    iput-short v12, v6, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->mCompanyUrlLength:S

    .line 233
    invoke-virtual {v6}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;->getByteArray()[B

    move-result-object v0

    .line 234
    .local v0, arrayS:[B
    iget-object v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mTagWriteNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;

    iget-object v12, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;->mNdefData:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdefData;

    iget-object v12, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdefData;->mData:[B

    array-length v13, v0

    invoke-static {v0, v14, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget-object v12, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;->mTagWriteNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;

    array-length v13, v0

    iput v13, v12, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagWriteNdef;->mLength:I

    goto/16 :goto_1

    .line 246
    .end local v0           #arrayS:[B
    .end local v3           #comArray:[B
    .end local v4           #comUrlArray:[B
    .end local v5           #request:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptReq;
    .end local v6           #smart:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$SmartPosterT;
    .end local v7           #tempInt:I
    :cond_0
    const-string v12, "Input error"

    invoke-static {p0, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 191
    :pswitch_data_0
    .packed-switch 0x7f0b022f
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 140
    const v0, 0x7f0b022e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mRgTagType:Landroid/widget/RadioGroup;

    .line 141
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mRgTagType:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 142
    const v0, 0x7f0b0231

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mSpLang:Landroid/widget/Spinner;

    .line 143
    const v0, 0x7f0b0233

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtCompany:Landroid/widget/EditText;

    .line 144
    const v0, 0x7f0b0235

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtUrl:Landroid/widget/EditText;

    .line 145
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtText:Landroid/widget/EditText;

    .line 146
    const v0, 0x7f0b0238

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mBtnWrite:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mBtnWrite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f0b0239

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mBtnCancel:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mBtnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0b0232

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvCompany:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0b0234

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvUrl:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0b0236

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvText:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtUrl:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mRgTagType:Landroid/widget/RadioGroup;

    const v1, 0x7f0b022f

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 155
    return-void
.end method


# virtual methods
.method protected checkedChange(I)V
    .locals 4
    .parameter "checkedId"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mSpLang:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtCompany:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvCompany:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtUrl:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvUrl:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtUrl:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtUrl:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mSpLang:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtCompany:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvCompany:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtUrl:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mTvUrl:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mEtText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f0b022f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 122
    invoke-direct {p0}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->initComponents()V

    .line 123
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.hqanfc.104"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 137
    return-void
.end method
