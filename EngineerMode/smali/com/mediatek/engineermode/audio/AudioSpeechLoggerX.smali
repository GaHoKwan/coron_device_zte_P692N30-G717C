.class public Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;
.super Landroid/app/Activity;
.source "AudioSpeechLoggerX.java"


# static fields
.field private static final CONSTANT_0XFF:I = 0xff

.field private static final CONSTANT_256:I = 0x100

.field private static final DATA_SIZE:I = 0x5a4

.field private static final DIALOG_GET_DATA_ERROR:I = 0x0

.field private static final DIALOG_ID_NO_SDCARD:I = 0x1

.field private static final DIALOG_ID_SDCARD_BUSY:I = 0x2

.field public static final ENGINEER_MODE_PREFERENCE:Ljava/lang/String; = "engineermode_audiolog_preferences"

.field public static final EPL_STATUS:Ljava/lang/String; = "epl_status"

.field private static final GET_DUMP_AP_SPEECH_EPL:I = 0xa1

.field private static final SET_DUMP_AP_SPEECH_EPL:I = 0xa0

.field private static final SET_DUMP_SPEECH_DEBUG_INFO:I = 0x61

.field private static final SET_SPEECH_VM_ENABLE:I = 0x60

.field public static final TAG:Ljava/lang/String; = "EM/Audio"

.field private static final VM_LOG_POS:I = 0x5a0


# instance fields
.field private mCbCtm4Way:Landroid/widget/CheckBox;

.field private mCbEplDebug:Landroid/widget/CheckBox;

.field private mCbSpeechLogger:Landroid/widget/CheckBox;

.field private mCbVoipLogger:Landroid/widget/CheckBox;

.field private final mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mData:[B

.field private mForRefresh:Z

.field private mRbEpl:Landroid/widget/RadioButton;

.field private mRbNormalVm:Landroid/widget/RadioButton;

.field private mVmLogState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    iput v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    .line 89
    iput-boolean v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mForRefresh:Z

    .line 91
    new-instance v0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$1;-><init>(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbSpeechLogger:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->onClickSpeechLogger(Landroid/content/SharedPreferences$Editor;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mForRefresh:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mForRefresh:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbCtm4Way:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    return v0
.end method

.method static synthetic access$472(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    return v0
.end method

.method static synthetic access$476(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbEplDebug:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbVoipLogger:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->setVOIP(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private checkSDCardIsAvaliable()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, state:Ljava/lang/String;
    const-string v1, "EM/Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment.getExternalStorageState() is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 363
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 370
    :goto_0
    return-object v1

    .line 366
    :cond_0
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 368
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private checkStatus()V
    .locals 10

    .prologue
    const/16 v5, 0x5a4

    const/16 v9, 0xa1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 261
    const-string v4, "engineermode_audiolog_preferences"

    invoke-virtual {p0, v4, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 263
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v4, "epl_status"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 265
    .local v1, eplStatus:I
    new-array v4, v5, [B

    iput-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    .line 266
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->getEmParameter([BI)I

    move-result v3

    .line 267
    .local v3, ret:I
    if-eqz v3, :cond_0

    .line 268
    invoke-virtual {p0, v8}, Landroid/app/Activity;->showDialog(I)V

    .line 269
    const-string v4, "EM/Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio_SpeechLogger GetEMParameter return value is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    const/16 v5, 0x5a0

    aget-byte v4, v4, v5

    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    const/16 v6, 0x5a1

    aget-byte v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->shortToInt(BB)I

    move-result v4

    iput v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    .line 273
    const-string v4, "EM/Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio_SpeechLogger GetEMParameter return value is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 276
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbSpeechLogger:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 277
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 279
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 280
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 292
    :goto_0
    iget v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mVmLogState:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 293
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbCtm4Way:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 298
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->getVOIP()I

    move-result v4

    if-nez v4, :cond_4

    .line 299
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbVoipLogger:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 304
    :goto_2
    invoke-static {v9}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v0

    .line 305
    .local v0, epl:I
    const-string v4, "EM/Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get EPL setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {v9}, Landroid/media/AudioSystem;->getAudioCommand(I)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 307
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbEplDebug:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 311
    :goto_3
    return-void

    .line 282
    .end local v0           #epl:I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbSpeechLogger:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 283
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 284
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 285
    if-ne v1, v7, :cond_2

    .line 286
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbCtm4Way:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 301
    :cond_4
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbVoipLogger:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 309
    .restart local v0       #epl:I
    :cond_5
    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbEplDebug:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3
.end method

.method private getVOIP()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 314
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "/system/bin/sh"

    aput-object v3, v0, v2

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "cat /data/data/com.mediatek.engineermode/sharefile/audio_voip"

    aput-object v4, v0, v3

    .line 318
    .local v0, cmdx:[Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    :goto_0
    return v2

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/io/IOException;
    const-string v3, "EM/Audio"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private onClickSpeechLogger(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 8
    .parameter "edit"
    .parameter "checked"

    .prologue
    const v7, 0x7f0801a0

    const/16 v6, 0x5a0

    const/16 v5, 0x5a4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    if-eqz p2, :cond_2

    .line 172
    const-string v1, "EM/Audio"

    const-string v2, "mCbSpeechLogger checked"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->checkSDCardIsAvaliable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    const-string v1, "EM/Audio"

    const-string v2, "mCbSpeechLogger checked 111"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbSpeechLogger:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 181
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    iput-boolean v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mForRefresh:Z

    .line 183
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 184
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 185
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    aget-byte v2, v1, v6

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 186
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    invoke-static {v1, v5}, Landroid/media/AudioSystem;->setEmParameter([BI)I

    move-result v0

    .line 187
    .local v0, index:I
    if-eqz v0, :cond_0

    .line 188
    const-string v1, "EM/Audio"

    const-string v2, "set mAutoVM parameter failed"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p0, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 192
    .end local v0           #index:I
    :cond_2
    const-string v1, "EM/Audio"

    const-string v2, "mCbSpeechLogger unchecked"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 202
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    invoke-static {v1, v5}, Landroid/media/AudioSystem;->getEmParameter([BI)I

    .line 203
    const-string v1, "epl_status"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    aget-byte v2, v1, v6

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 206
    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mData:[B

    invoke-static {v1, v5}, Landroid/media/AudioSystem;->setEmParameter([BI)I

    move-result v0

    .line 207
    .restart local v0       #index:I
    if-eqz v0, :cond_0

    .line 208
    const-string v1, "EM/Audio"

    const-string v2, "set mAutoVM parameter failed"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {p0, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private setVOIP(I)Z
    .locals 8
    .parameter "n"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v3

    const-string v5, "-c"

    aput-object v5, v0, v4

    const-string v5, "mkdir /data/data/com.mediatek.engineermode/sharefile"

    aput-object v5, v0, v7

    .line 333
    .local v0, cmd:[Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "/system/bin/sh"

    aput-object v5, v1, v3

    const-string v5, "-c"

    aput-object v5, v1, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > /data/data/com.mediatek.engineermode/sharefile/audio_voip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 348
    .local v1, cmdx:[Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Lcom/mediatek/engineermode/ShellExe;->execCommand([Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    .end local v1           #cmdx:[Ljava/lang/String;
    :goto_0
    return v3

    .line 334
    :catch_0
    move-exception v2

    .line 335
    .local v2, e:Ljava/io/IOException;
    const-string v4, "EM/Audio"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #cmdx:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 352
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "EM/Audio"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    move v3, v4

    .line 355
    goto :goto_0
.end method

.method private shortToInt(BB)I
    .locals 4
    .parameter "low"
    .parameter "high"

    .prologue
    .line 374
    add-int/lit16 v3, p2, 0x100

    and-int/lit16 v2, v3, 0xff

    .line 375
    .local v2, temp:I
    mul-int/lit16 v0, v2, 0x100

    .line 376
    .local v0, highByte:I
    add-int/lit16 v3, p1, 0x100

    and-int/lit16 v1, v3, 0xff

    .line 377
    .local v1, lowByte:I
    add-int v3, v0, v1

    return v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 219
    const v3, 0x7f0b002a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbSpeechLogger:Landroid/widget/CheckBox;

    .line 220
    const v3, 0x7f0b002e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbEplDebug:Landroid/widget/CheckBox;

    .line 221
    const v3, 0x7f0b002f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbVoipLogger:Landroid/widget/CheckBox;

    .line 222
    const v3, 0x7f0b0031

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbCtm4Way:Landroid/widget/CheckBox;

    .line 223
    const v3, 0x7f0b002c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    .line 224
    const v3, 0x7f0b002d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    .line 225
    const v3, 0x7f0b0033

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 226
    .local v1, dumpSpeechInfo:Landroid/widget/Button;
    const v3, 0x7f0b0032

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 227
    .local v2, spliteView:Landroid/view/View;
    const v3, 0x7f0b0030

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, ctm4WayText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbCtm4Way:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->checkStatus()V

    .line 237
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbSpeechLogger:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 238
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbEplDebug:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbVoipLogger:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCbCtm4Way:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbEpl:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mRbNormalVm:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->mCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    new-instance v3, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$2;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$2;-><init>(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v2, 0x104000a

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 384
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080195

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$3;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$3;-><init>(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 395
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 400
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
