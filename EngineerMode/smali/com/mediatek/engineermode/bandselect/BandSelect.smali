.class public Lcom/mediatek/engineermode/bandselect/BandSelect;
.super Landroid/app/Activity;
.source "BandSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    }
.end annotation


# static fields
.field private static final GSM_BASEBAND:Ljava/lang/String; = "gsm.baseband.capability"

.field private static final LOG_TAG:Ljava/lang/String; = "BandModeSim1"

.field private static final TDSCDMA:I = 0x8

.field private static final WCDMA:I = 0x4


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private final mGsmModeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsThisAlive:Z

.field private mPhoneProxey:Lcom/android/internal/telephony/Phone;

.field private final mResponseHander:Landroid/os/Handler;

.field private mSimType:I

.field private final mUmtsModeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 74
    iput-object v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mPhoneProxey:Lcom/android/internal/telephony/Phone;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mIsThisAlive:Z

    .line 84
    new-instance v0, Lcom/mediatek/engineermode/bandselect/BandSelect$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bandselect/BandSelect$1;-><init>(Lcom/mediatek/engineermode/bandselect/BandSelect;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mResponseHander:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/bandselect/BandSelect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mIsThisAlive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/bandselect/BandSelect;Landroid/os/AsyncResult;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/bandselect/BandSelect;->setMode(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/bandselect/BandSelect;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/bandselect/BandSelect;->setSupportedMode(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bandselect/BandSelect;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/bandselect/BandSelect;->setCurrentMode(II)V

    return-void
.end method

.method public static getModemType(I)Z
    .locals 6
    .parameter "simType"

    .prologue
    .line 136
    const-string v3, "gsm.baseband.capability"

    .line 137
    .local v3, property:Ljava/lang/String;
    const/4 v5, 0x1

    if-le p0, v5, :cond_0

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    :cond_0
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, networkType:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 143
    const/4 v4, 0x0

    .line 158
    .local v4, tddMode:Z
    :goto_0
    return v4

    .line 146
    .end local v4           #tddMode:Z
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    .local v1, mask:I
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    .line 148
    const/4 v4, 0x0

    .restart local v4       #tddMode:Z
    goto :goto_0

    .line 149
    .end local v4           #tddMode:Z
    :cond_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 150
    const/4 v4, 0x1

    .restart local v4       #tddMode:Z
    goto :goto_0

    .line 152
    .end local v4           #tddMode:Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #tddMode:Z
    goto :goto_0

    .line 154
    .end local v1           #mask:I
    .end local v4           #tddMode:Z
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .restart local v4       #tddMode:Z
    goto :goto_0
.end method

.method private getValFromGsmBox()I
    .locals 5

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, gsmVal:I
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    .line 414
    .local v2, m:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    iget-object v3, v2, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    const/4 v3, 0x1

    iget v4, v2, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mBit:I

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    goto :goto_0

    .line 418
    .end local v2           #m:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    :cond_1
    return v0
.end method

.method private getValFromUmtsBox()I
    .locals 5

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 430
    .local v2, val:I
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    .line 431
    .local v1, m:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    iget-object v3, v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    const/4 v3, 0x1

    iget v4, v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mBit:I

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_0

    .line 435
    .end local v1           #m:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    :cond_1
    return v2
.end method

.method private queryCurrentMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 342
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "AT+EPBSE?"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "+EPBSE:"

    aput-object v2, v0, v1

    .line 344
    .local v0, modeString:[Ljava/lang/String;
    const-string v1, "BandModeSim1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT String:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/bandselect/BandSelect;->sendATCommand([Ljava/lang/String;I)V

    .line 347
    return-void
.end method

.method private querySupportMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 331
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "AT+EPBSE=?"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "+EPBSE:"

    aput-object v2, v0, v1

    .line 333
    .local v0, modeString:[Ljava/lang/String;
    const-string v1, "BandModeSim1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT String:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/bandselect/BandSelect;->sendATCommand([Ljava/lang/String;I)V

    .line 336
    return-void
.end method

.method private sendATCommand([Ljava/lang/String;I)V
    .locals 3
    .parameter "atCommand"
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 354
    iget v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mSimType:I

    if-ne v0, v2, :cond_1

    .line 355
    iget-object v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mResponseHander:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mSimType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mResponseHander:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    goto :goto_0
.end method

.method private setBandMode(II)V
    .locals 7
    .parameter "gsmValue"
    .parameter "umtsValue"

    .prologue
    const/4 v6, 0x0

    .line 384
    move v0, p1

    .line 385
    .local v0, gsmVal:I
    move v2, p2

    .line 386
    .local v2, umtsVal:I
    const/16 v3, 0xff

    if-gt v0, v3, :cond_0

    const v3, 0xffff

    if-le v2, v3, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    if-nez v0, :cond_2

    .line 392
    const/16 v0, 0xff

    .line 394
    :cond_2
    if-nez v2, :cond_3

    .line 395
    const v2, 0xffff

    .line 398
    :cond_3
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT+EPBSE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v1, v3

    .line 400
    .local v1, modeString:[Ljava/lang/String;
    const-string v3, "BandModeSim1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AT String:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/16 v3, 0x6e

    invoke-direct {p0, v1, v3}, Lcom/mediatek/engineermode/bandselect/BandSelect;->sendATCommand([Ljava/lang/String;I)V

    .line 402
    invoke-direct {p0, v0, v2}, Lcom/mediatek/engineermode/bandselect/BandSelect;->setCurrentMode(II)V

    goto :goto_0
.end method

.method private setCurrentMode(II)V
    .locals 6
    .parameter "gsmVal"
    .parameter "umtsVal"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 446
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    .line 447
    .local v0, gsmMode:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    iget v3, v0, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mBit:I

    shl-int v3, v4, v3

    and-int/2addr v3, p1

    if-nez v3, :cond_1

    .line 448
    iget-object v3, v0, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v3, v0, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, v0, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 456
    .end local v0           #gsmMode:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    .line 457
    .local v2, umtsMode:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    iget v3, v2, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mBit:I

    shl-int v3, v4, v3

    and-int/2addr v3, p2

    if-nez v3, :cond_4

    .line 458
    iget-object v3, v2, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 461
    :cond_4
    iget-object v3, v2, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    iget-object v3, v2, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 466
    .end local v2           #umtsMode:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    :cond_5
    return-void
.end method

.method private setMode(Landroid/os/AsyncResult;I)V
    .locals 12
    .parameter "aSyncResult"
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 304
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v4, v7

    check-cast v4, [Ljava/lang/String;

    .line 306
    .local v4, result:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 307
    .local v6, value:Ljava/lang/String;
    const-string v7, "BandModeSim1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--.>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v7, "+EPBSE:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, splitString:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, getDigitalVal:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-le v7, v10, :cond_0

    .line 313
    aget-object v7, v1, v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    aget-object v7, v1, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 315
    const/16 v7, 0x64

    if-ne p2, v7, :cond_1

    .line 316
    aget-object v7, v1, v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v8, v1, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/mediatek/engineermode/bandselect/BandSelect;->setSupportedMode(II)V

    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_1
    aget-object v7, v1, v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v8, v1, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/mediatek/engineermode/bandselect/BandSelect;->setCurrentMode(II)V

    goto :goto_1

    .line 325
    .end local v1           #getDigitalVal:[Ljava/lang/String;
    .end local v5           #splitString:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setSupportedMode(II)V
    .locals 5
    .parameter "gsmVal"
    .parameter "umtsVal"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 476
    iget-object v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    .line 477
    .local v1, m:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    iget v2, v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mBit:I

    shl-int v2, v3, v2

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 479
    iget-object v2, v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v2, v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 484
    .end local v1           #m:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    .line 485
    .restart local v1       #m:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    iget v2, v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mBit:I

    shl-int v2, v3, v2

    and-int/2addr v2, p2

    if-nez v2, :cond_2

    .line 487
    iget-object v2, v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 489
    :cond_2
    iget-object v2, v1, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 492
    .end local v1           #m:Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/mediatek/engineermode/bandselect/BandSelect;->getValFromGsmBox()I

    move-result v0

    invoke-direct {p0}, Lcom/mediatek/engineermode/bandselect/BandSelect;->getValFromUmtsBox()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/bandselect/BandSelect;->setBandMode(II)V

    .line 506
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "mSimType"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mSimType:I

    .line 183
    iget v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mSimType:I

    invoke-static {v2}, Lcom/mediatek/engineermode/bandselect/BandSelect;->getModemType(I)Z

    move-result v1

    .line 184
    .local v1, modemType:Z
    iget v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mSimType:I

    if-ne v2, v6, :cond_1

    .line 185
    if-eqz v1, :cond_0

    .line 186
    const v2, 0x7f030088

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 187
    const v2, 0x7f0b0439

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mBtnSet:Landroid/widget/Button;

    .line 188
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b042f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v6}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0430

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v7}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0431

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v8}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0432

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v9}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0433

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0434

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v6}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0435

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0436

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v7}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0437

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v8}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0438

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v5, 0x5

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_0
    iput-boolean v6, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mIsThisAlive:Z

    .line 285
    iget-object v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void

    .line 220
    :cond_0
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 221
    const v2, 0x7f0b005b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mBtnSet:Landroid/widget/Button;

    .line 222
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b004d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v6}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b004e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v7}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b004f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v8}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0050

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v9}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0051

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0052

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v6}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0053

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0054

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v7}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0055

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v8}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v5, 0x5

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0057

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v5, 0x6

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v9}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0059

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mUmtsModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b005a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/16 v5, 0x9

    invoke-direct {v4, v2, v5}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 267
    :cond_1
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 268
    const v2, 0x7f0b004b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mBtnSet:Landroid/widget/Button;

    .line 269
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0047

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v6}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0048

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v7}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b0049

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v8}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v3, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGsmModeArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;

    const v2, 0x7f0b004a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v4, v2, v9}, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const v4, 0x7f08045e

    const v3, 0x7f08045b

    const/4 v2, 0x0

    .line 510
    const/16 v1, 0x64

    if-ne v1, p1, :cond_0

    .line 511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 514
    const v1, 0x7f08045c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 516
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 539
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 517
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/16 v1, 0x65

    if-ne v1, p1, :cond_1

    .line 518
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 521
    const v1, 0x7f08045d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 523
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 524
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    if-nez p1, :cond_2

    .line 525
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 528
    const v1, 0x7f08045f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 529
    const v1, 0x7f080460

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 532
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 534
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080461

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 535
    const v1, 0x7f080462

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 536
    const v1, 0x7f080463

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mIsThisAlive:Z

    .line 545
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 546
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 292
    const-string v0, "BandModeSim1"

    const-string v1, "mGeminiPhone"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/mediatek/engineermode/bandselect/BandSelect;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 299
    invoke-direct {p0}, Lcom/mediatek/engineermode/bandselect/BandSelect;->querySupportMode()V

    .line 300
    invoke-direct {p0}, Lcom/mediatek/engineermode/bandselect/BandSelect;->queryCurrentMode()V

    .line 301
    return-void
.end method
