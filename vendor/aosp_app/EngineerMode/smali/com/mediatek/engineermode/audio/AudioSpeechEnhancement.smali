.class public Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;
.super Landroid/app/Activity;
.source "AudioSpeechEnhancement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTURAL_PARAM_NUM:I = 0x20

.field private static final AUDIO_PARA_DIV_INDEX:I = 0xf

.field private static final AUDIO_PARA_DIV_INDEX1:I = 0x10

.field private static final COMMON_PARA_SIZE:I = 0x18

.field private static final CONSTANT_0XFF:I = 0xff

.field private static final CONSTANT_256:I = 0x100

.field private static final CONSTANT_32:I = 0x20

.field private static final DATA_SIZE:I = 0x5a4

.field private static final DIALOG_GET_DATA_ERROR:I = 0x1

.field private static final DIALOG_GET_WBDATA_ERROR:I = 0x2

.field private static final DIALOG_SET_SE_ERROR:I = 0x4

.field private static final DIALOG_SET_SE_SUCCESS:I = 0x3

.field private static final DIALOG_SET_WB_ERROR:I = 0x6

.field private static final DIALOG_SET_WB_SUCCESS:I = 0x5

.field private static final GET_WB_SPEECH_PARAMETER:I = 0x40

.field private static final LARGEST_NUM:I = 0xffff

.field private static final LONGEST_NUM_LENGHT:I = 0x5

.field private static final MODE0_PARAM_NUM:I = 0xc

.field private static final SET_WB_SPEECH_PARAMETER:I = 0x41

.field private static final VOLUME_SIZE:I = 0x16

.field private static final WB_DATA_SIZE:I = 0x970


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mData:[B

.field private mModeIndex:I

.field private mParaAdatper:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParaIndex:I

.field private mParaSpinner:Landroid/widget/Spinner;

.field private mParamterStr:Ljava/lang/String;

.field private mValueEdit:Landroid/widget/EditText;

.field private mWBdata:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParamterStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParamterStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->getAudioData()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method private getAudioData()I
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->getWBAudioData()I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->getSpeechEnhanceAudioData()I

    move-result v0

    goto :goto_0
.end method

.method private getSpeechEnhanceAudioData()I
    .locals 5

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, high:I
    const/4 v1, 0x0

    .line 281
    .local v1, low:I
    iget v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    if-nez v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    iget v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x16

    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v2, v3

    .line 283
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    iget v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x16

    aget-byte v1, v2, v3

    .line 294
    :goto_0
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    .line 295
    :cond_0
    if-gez v1, :cond_1

    add-int/lit16 v1, v1, 0x100

    .line 296
    :cond_1
    mul-int/lit16 v2, v0, 0x100

    add-int/2addr v2, v1

    return v2

    .line 286
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    iget v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x20

    add-int/lit8 v3, v3, 0x2e

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v2, v3

    .line 289
    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    iget v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x20

    add-int/lit8 v3, v3, 0x2e

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aget-byte v1, v2, v3

    goto :goto_0
.end method

.method private getWBAudioData()I
    .locals 2

    .prologue
    .line 344
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    add-int/lit8 v1, v1, -0x10

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->getWBdata(II)I

    move-result v0

    return v0
.end method

.method private getWBdata(II)I
    .locals 6
    .parameter "catalogIdx"
    .parameter "paraIdx"

    .prologue
    .line 325
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mWBdata:[B

    mul-int/lit8 v4, p1, 0x20

    mul-int/lit8 v5, p2, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    add-int/lit16 v3, v3, 0x100

    and-int/lit16 v1, v3, 0xff

    .line 327
    .local v1, highByteTemp:I
    mul-int/lit16 v0, v1, 0x100

    .line 329
    .local v0, highByte:I
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mWBdata:[B

    mul-int/lit8 v4, p1, 0x20

    mul-int/lit8 v5, p2, 0x2

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    add-int/lit16 v3, v3, 0x100

    and-int/lit16 v2, v3, 0xff

    .line 331
    .local v2, lowByte:I
    const-string v3, "EM/Audio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWBdata mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", paraIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "val "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    add-int v3, v0, v2

    return v3
.end method

.method private setAudioData(I)V
    .locals 2
    .parameter "inputValue"

    .prologue
    .line 271
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 272
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->setWBAudioData(I)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->setSpeechEnhanceAudioData(I)V

    goto :goto_0
.end method

.method private setSpeechEnhanceAudioData(I)V
    .locals 6
    .parameter "inputValue"

    .prologue
    .line 301
    div-int/lit16 v0, p1, 0x100

    .line 302
    .local v0, high:I
    rem-int/lit16 v1, p1, 0x100

    .line 303
    .local v1, low:I
    iget v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    if-nez v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x16

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    .line 305
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x16

    add-int/lit8 v4, v4, 0x1

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 313
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    const/16 v4, 0x5a4

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setEmParameter([BI)I

    move-result v2

    .line 314
    .local v2, result:I
    if-nez v2, :cond_1

    .line 315
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 322
    :goto_1
    return-void

    .line 307
    .end local v2           #result:I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x20

    add-int/lit8 v4, v4, 0x2e

    iget v5, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    .line 309
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x20

    add-int/lit8 v4, v4, 0x2e

    iget v5, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    goto :goto_0

    .line 317
    .restart local v2       #result:I
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 318
    const-string v3, "EM/Audio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio_SpeechEnhancement SetEMParameter return value is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setWBAudioData(I)V
    .locals 4
    .parameter "inputval"

    .prologue
    .line 348
    iget v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 349
    const-string v1, "EM/Audio"

    const-string v2, "Internal error. check the code."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 352
    :cond_0
    iget v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    add-int/lit8 v2, v2, -0x10

    invoke-direct {p0, v1, v2, p1}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->setWBdata(III)V

    .line 353
    const/16 v1, 0x41

    const/16 v2, 0x970

    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mWBdata:[B

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setAudioData(II[B)I

    move-result v0

    .line 356
    .local v0, result:I
    if-nez v0, :cond_1

    .line 357
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 359
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 360
    const-string v1, "EM/Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WB data SetAudioData return value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWBdata(III)V
    .locals 3
    .parameter "catalogIdx"
    .parameter "paraIdx"
    .parameter "val"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mWBdata:[B

    mul-int/lit8 v1, p1, 0x20

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    rem-int/lit16 v2, p3, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 339
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mWBdata:[B

    mul-int/lit8 v1, p1, 0x20

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit16 v2, p3, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 341
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const v4, 0x7f0801a5

    const/4 v3, 0x1

    .line 236
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    :cond_0
    const v1, 0x7f08019e

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 246
    :cond_3
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 251
    .local v0, inputValue:I
    const v1, 0xffff

    if-le v0, v1, :cond_5

    .line 252
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 257
    :cond_5
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->setAudioData(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x1090009

    const v8, 0x1090008

    const/16 v11, 0x970

    const/16 v10, 0x5a4

    const/4 v9, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v6, 0x7f030006

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 114
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParamterStr:Ljava/lang/String;

    .line 115
    const v6, 0x7f0b0027

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mBtnSet:Landroid/widget/Button;

    .line 116
    const v6, 0x7f0b0026

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;

    .line 117
    const v6, 0x7f0b0024

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaSpinner:Landroid/widget/Spinner;

    .line 119
    const v6, 0x7f0b0025

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 121
    .local v5, valueText:Landroid/widget/TextView;
    const v6, 0x7f0b0023

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 128
    .local v2, modeSpinner:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, p0, v8, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 133
    .local v1, mModeAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 135
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    new-instance v6, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;

    invoke-direct {v6, p0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$1;-><init>(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)V

    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v6, 0x7f0801ab

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 170
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-direct {v6, p0, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;

    .line 172
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v6, 0xc

    if-ge v0, v6, :cond_0

    .line 175
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParamterStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaAdatper:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaSpinner:Landroid/widget/Spinner;

    new-instance v7, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$2;

    invoke-direct {v7, p0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$2;-><init>(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)V

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    new-array v6, v10, [B

    iput-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    .line 196
    const/4 v3, 0x0

    .local v3, n:I
    :goto_1
    if-ge v3, v10, :cond_1

    .line 197
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    aput-byte v9, v6, v3

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    :cond_1
    new-array v6, v11, [B

    iput-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mWBdata:[B

    .line 200
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v11, :cond_2

    .line 201
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mWBdata:[B

    aput-byte v9, v6, v3

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 203
    :cond_2
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mData:[B

    invoke-static {v6, v10}, Landroid/media/AudioSystem;->getEmParameter([BI)I

    move-result v4

    .line 204
    .local v4, ret:I
    if-eqz v4, :cond_3

    .line 205
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 206
    const-string v6, "EM/Audio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio_SpeechEnhancement GetEMParameter return value is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_3
    const/16 v6, 0x40

    iget-object v7, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mWBdata:[B

    invoke-static {v6, v11, v7}, Landroid/media/AudioSystem;->getAudioData(II[B)I

    move-result v4

    .line 214
    if-eqz v4, :cond_4

    .line 215
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 216
    const-string v6, "EM/Audio"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio_SpeechEnhancement Get wb data return value is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_4
    invoke-virtual {v2, v9}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 221
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v9}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 222
    iput v9, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mModeIndex:I

    .line 223
    iput v9, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mParaIndex:I

    .line 224
    iget-object v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->mValueEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;->getAudioData()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "dialogId"

    .prologue
    const v5, 0x7f08019b

    const v2, 0x7f080199

    const/high16 v4, 0x104

    const v3, 0x104000a

    const/4 v0, 0x0

    .line 367
    packed-switch p1, :pswitch_data_0

    .line 417
    :goto_0
    return-object v0

    .line 369
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080195

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080196

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$3;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$3;-><init>(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 383
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080197

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080198

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$4;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement$4;-><init>(Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 397
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801ac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 402
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801ad

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 407
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 412
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
