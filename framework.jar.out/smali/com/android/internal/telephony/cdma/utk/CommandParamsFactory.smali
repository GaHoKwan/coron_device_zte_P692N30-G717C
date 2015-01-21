.class Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_FILE_CHANGE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field static final UIM_INPUT_MAX_UNICODE_LEN:I = 0x77

.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 78
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cdma/utk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    .line 79
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 67
    const-class v1, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit v1

    return-object v0

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processCloseChannel(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 5
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1266
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v3, "processCloseChannel"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1268
    const/4 v0, 0x0

    .line 1270
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 1272
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 1274
    .local v1, deviceId:Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1275
    if-eqz v0, :cond_0

    .line 1276
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 1279
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "textMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1281
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1282
    if-eqz v0, :cond_1

    .line 1283
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v1

    .line 1286
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1294
    if-eqz v1, :cond_2

    .line 1295
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    iget v4, v1, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-direct {v3, p1, v2, v4}, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1305
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    if-eqz p1, :cond_0

    .line 86
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 88
    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .line 91
    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processCommandDetails: Failed to procees command details e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 316
    const-string/jumbo v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 319
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 321
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 323
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 324
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 328
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 329
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    .line 332
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_2

    .line 334
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 337
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_3

    .line 339
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 340
    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 343
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_4

    .line 345
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    .line 349
    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->isHighPriority:Z

    .line 350
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->userClear:Z

    .line 352
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 354
    if-eqz v1, :cond_7

    .line 355
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 356
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 360
    :goto_2
    return v4

    :cond_5
    move v3, v5

    .line 349
    goto :goto_0

    :cond_6
    move v3, v5

    .line 350
    goto :goto_1

    :cond_7
    move v4, v5

    .line 360
    goto :goto_2
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 689
    const-string/jumbo v5, "process EventNotify"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 692
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 694
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 696
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 697
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 702
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_0

    .line 704
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 705
    iget-boolean v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 708
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 709
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v5, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 711
    if-eqz v1, :cond_2

    .line 712
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 713
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 717
    :goto_0
    return v3

    .line 699
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    :cond_2
    move v3, v4

    .line 717
    goto :goto_0
.end method

.method private processGetChannelStatus(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 4
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1418
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v2, "processGetChannelStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1420
    const/4 v0, 0x0

    .line 1422
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    const/4 v1, 0x0

    .line 1424
    .local v1, deviceId:Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_0

    .line 1426
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v1

    .line 1429
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1431
    if-eqz v1, :cond_1

    .line 1432
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;

    iget v3, v1, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-direct {v2, p1, v3}, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1435
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 419
    const-string/jumbo v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/Input;-><init>()V

    .line 422
    .local v2, input:Lcom/android/internal/telephony/cdma/utk/Input;
    const/4 v1, 0x0

    .line 424
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 426
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 427
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->text:Ljava/lang/String;

    .line 432
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 434
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 438
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_1

    .line 440
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    .line 443
    :cond_1
    iput v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->minLen:I

    .line 444
    iput v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    .line 446
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->digitOnly:Z

    .line 447
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    .line 448
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    .line 449
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->helpAvailable:Z

    .line 450
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->echo:Z

    .line 452
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/GetInputParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 454
    if-eqz v1, :cond_7

    .line 455
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 456
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 460
    :goto_4
    return v4

    .line 429
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    :cond_3
    move v3, v5

    .line 446
    goto :goto_0

    :cond_4
    move v3, v5

    .line 447
    goto :goto_1

    :cond_5
    move v3, v5

    .line 448
    goto :goto_2

    :cond_6
    move v3, v5

    .line 449
    goto :goto_3

    :cond_7
    move v4, v5

    .line 460
    goto :goto_4
.end method

.method private processGetInput(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/16 v10, 0x77

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "process GetInput cmdDet.commandQualifier = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/Input;-><init>()V

    .line 479
    .local v3, input:Lcom/android/internal/telephony/cdma/utk/Input;
    const/4 v2, 0x0

    .line 481
    .local v2, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 483
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_4

    .line 484
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->text:Ljava/lang/String;

    .line 489
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_5

    .line 492
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 493
    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 494
    .local v5, valueIndex:I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->minLen:I

    .line 495
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    .line 505
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->defaultText:Ljava/lang/String;

    .line 508
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_1

    .line 510
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v2

    .line 513
    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 515
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 517
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    .line 525
    :cond_2
    :goto_0
    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    if-eqz v6, :cond_3

    .line 527
    iget v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    div-int/lit8 v6, v6, 0x2

    if-le v6, v10, :cond_7

    .line 529
    iput v10, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    .line 536
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "maxLen = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->echo:Z

    .line 538
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    .line 539
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->helpAvailable:Z

    .line 541
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/cdma/utk/GetInputParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 543
    if-eqz v2, :cond_b

    .line 544
    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 545
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v8, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 549
    :goto_5
    return v7

    .line 486
    .end local v4           #rawValue:[B
    .end local v5           #valueIndex:I
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 500
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 522
    .restart local v4       #rawValue:[B
    .restart local v5       #valueIndex:I
    :cond_6
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Input;->digitOnly:Z

    goto :goto_0

    .line 533
    :cond_7
    iget v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    goto :goto_1

    :cond_8
    move v6, v8

    .line 537
    goto :goto_2

    :cond_9
    move v6, v8

    .line 538
    goto :goto_3

    :cond_a
    move v6, v8

    .line 539
    goto :goto_4

    :cond_b
    move v7, v8

    .line 549
    goto :goto_5
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v9, 0x1

    .line 765
    const-string/jumbo v10, "process LaunchBrowser"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 768
    .local v0, confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v3, 0x0

    .line 769
    .local v3, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v6, 0x0

    .line 771
    .local v6, url:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 772
    .local v1, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 774
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 775
    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 776
    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v8

    .line 777
    .local v8, valueLen:I
    if-lez v8, :cond_3

    .line 778
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 789
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_0
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 790
    if-eqz v1, :cond_1

    .line 791
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 794
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 795
    if-eqz v1, :cond_2

    .line 796
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v3

    .line 797
    iget-boolean v10, v3, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v10, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 802
    :cond_2
    iget v10, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    packed-switch v10, :pswitch_data_0

    .line 805
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .line 815
    .local v4, mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    :goto_1
    new-instance v10, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;

    invoke-direct {v10, p1, v0, v6, v4}, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 817
    if-eqz v3, :cond_4

    .line 818
    iput v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 819
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v11, v3, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 823
    :goto_2
    return v9

    .line 781
    .end local v4           #mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 783
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_0
    move-exception v2

    .line 784
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v9

    .line 808
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .line 809
    .restart local v4       #mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    goto :goto_1

    .line 811
    .end local v4           #mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    goto :goto_1

    .line 823
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processLocalInformation(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1020
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process LocalInformation"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method private processMoreTime(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1010
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process MoreTime"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method private processOpenChannel(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 1130
    const-string/jumbo v5, "processOpenChannel"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    const/4 v3, 0x0

    .line 1133
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v1, 0x0

    .line 1135
    .local v1, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 1137
    .local v0, chParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 1140
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1141
    if-eqz v1, :cond_0

    .line 1142
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 1145
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "textMsg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1148
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1149
    if-eqz v1, :cond_1

    .line 1150
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    .line 1151
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 1154
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iconId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1158
    if-eqz v1, :cond_7

    .line 1159
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveBearerDesc(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 1166
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bearerDesc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1170
    if-eqz v1, :cond_8

    .line 1171
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveBufSize(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bufferSize:I

    .line 1177
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffersize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bufferSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    const/4 v2, 0x0

    .line 1180
    .local v2, ctlvDestAddress:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1182
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TRANSPORT_LEVEL:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1183
    if-eqz v1, :cond_2

    .line 1184
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTransportLevel(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    .line 1187
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v2

    .line 1188
    if-eqz v2, :cond_2

    .line 1189
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 1193
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transportLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destAddress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1204
    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    .line 1205
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 1208
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "localAddress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1212
    if-eqz v1, :cond_4

    .line 1213
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveNAN(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    .line 1216
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "networkAccessName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1220
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1221
    if-eqz v1, :cond_5

    .line 1222
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userName:Ljava/lang/String;

    .line 1225
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1229
    if-eqz v1, :cond_6

    .line 1230
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userPwd:Ljava/lang/String;

    .line 1233
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userpassword:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userPwd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    if-eq v5, v7, :cond_9

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    .line 1237
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 1162
    .end local v2           #ctlvDestAddress:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_7
    const-string/jumbo v5, "use default bearer"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v7, v6}, Lcom/android/internal/telephony/cdma/utk/BearerDescription;-><init>(II[B)V

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    goto/16 :goto_0

    .line 1173
    :cond_8
    const-string/jumbo v5, "use default buffer size"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    const/16 v5, 0x58e

    iput v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bufferSize:I

    goto/16 :goto_1

    .line 1240
    .restart local v2       #ctlvDestAddress:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_9
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    if-nez v5, :cond_a

    .line 1241
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 1244
    :cond_a
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    if-eq v5, v4, :cond_b

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    if-eq v5, v7, :cond_b

    .line 1247
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 1250
    :cond_b
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1252
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    if-eqz v5, :cond_c

    .line 1253
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 1254
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    iget v6, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1259
    :goto_2
    return v4

    :cond_c
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 839
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    const/4 v3, 0x0

    .line 842
    .local v3, tone:Lcom/android/internal/telephony/cdma/utk/Tone;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 843
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v4, 0x0

    .line 844
    .local v4, duration:Lcom/android/internal/telephony/cdma/utk/Duration;
    const/4 v8, 0x0

    .line 846
    .local v8, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 847
    .local v6, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 849
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 851
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 852
    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 853
    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .line 854
    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/utk/Tone;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 862
    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 863
    if-eqz v6, :cond_1

    .line 864
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 867
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 868
    if-eqz v6, :cond_2

    .line 869
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v4

    .line 872
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 873
    if-eqz v6, :cond_3

    .line 874
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v8

    .line 875
    iget-boolean v0, v8, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 878
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 880
    .local v5, vibrate:Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 881
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/Tone;Lcom/android/internal/telephony/cdma/utk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 883
    if-eqz v8, :cond_5

    .line 884
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 887
    const/4 v0, 0x1

    .line 889
    :goto_1
    return v0

    .line 855
    .end local v5           #vibrate:Z
    :catch_0
    move-exception v7

    .line 856
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v0

    .line 878
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 889
    .restart local v5       #vibrate:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processPollInterval(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1031
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v8, "processPollInterval"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    const/4 v4, 0x0

    .line 1034
    .local v4, timeUnit:I
    const/4 v3, 0x0

    .line 1036
    .local v3, timeInterval:I
    const/4 v0, 0x0

    .line 1048
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_1

    .line 1050
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 1051
    .local v2, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 1052
    .local v5, valueIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v7

    .line 1054
    .local v7, valueLen:I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8

    .line 1057
    :cond_0
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    :try_start_0
    aget-byte v8, v2, v5

    and-int/lit16 v4, v8, 0xff

    .line 1058
    aget-byte v8, v2, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v8, 0xff

    .line 1065
    .end local v2           #rawValue:[B
    .end local v6           #valueIndex:I
    .end local v7           #valueLen:I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "time units="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    invoke-direct {v8, p1, v4, v3}, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;II)V

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1069
    const/4 v8, 0x0

    return v8

    .line 1059
    .restart local v2       #rawValue:[B
    .restart local v6       #valueIndex:I
    .restart local v7       #valueLen:I
    :catch_0
    move-exception v1

    .line 1060
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1061
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8
.end method

.method private processReceiveData(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1312
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v4, "processReceiveData"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1314
    const/4 v0, 0x0

    .line 1316
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    const/4 v1, 0x0

    .line 1317
    .local v1, dataLength:I
    const/4 v2, 0x0

    .line 1319
    .local v2, deviceId:Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 1322
    .local v3, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1323
    if-eqz v0, :cond_0

    .line 1324
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v2

    .line 1327
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1328
    if-eqz v0, :cond_1

    .line 1329
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 1332
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "textMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1341
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1342
    if-eqz v0, :cond_2

    .line 1343
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveReqDataLength(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I

    move-result v1

    .line 1346
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1348
    if-eqz v2, :cond_3

    .line 1349
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    iget v5, v2, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-direct {v4, p1, v1, v3, v5}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;ILcom/android/internal/telephony/cdma/utk/TextMessage;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1359
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private processRefresh(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 562
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process Refresh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    .line 576
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 573
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 592
    const-string/jumbo v7, "process SelectItem"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/Menu;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/Menu;-><init>()V

    .line 595
    .local v3, menu:Lcom/android/internal/telephony/cdma/utk/Menu;
    const/4 v6, 0x0

    .line 596
    .local v6, titleIconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v1, 0x0

    .line 597
    .local v1, itemsIconId:Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 599
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 601
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 602
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->title:Ljava/lang/String;

    .line 606
    :cond_0
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_1

    .line 608
    iget-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Item;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 615
    :cond_1
    iget-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 616
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .line 619
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_3

    .line 623
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->defaultItem:I

    .line 626
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_4

    .line 628
    iput v8, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 629
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v6

    .line 630
    iget-boolean v7, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIconSelfExplanatory:Z

    .line 633
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_5

    .line 635
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 636
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/ItemsIconId;

    move-result-object v1

    .line 637
    iget-boolean v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->itemsIconSelfExplanatory:Z

    .line 640
    :cond_5
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    move v4, v8

    .line 641
    .local v4, presentTypeSpecified:Z
    :goto_1
    if-eqz v4, :cond_6

    .line 642
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    .line 643
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->presentationType:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    .line 648
    :cond_6
    :goto_2
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->softKeyPreferred:Z

    .line 649
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_a

    move v7, v8

    :goto_4
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->helpAvailable:Z

    .line 651
    new-instance v10, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;

    if-eqz v6, :cond_b

    move v7, v8

    :goto_5
    invoke-direct {v10, p1, v3, v7}, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Menu;Z)V

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 654
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    :goto_6
    move v9, v8

    .line 674
    :pswitch_0
    return v9

    .end local v4           #presentTypeSpecified:Z
    :cond_7
    move v4, v9

    .line 640
    goto :goto_1

    .line 645
    .restart local v4       #presentTypeSpecified:Z
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->presentationType:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    goto :goto_2

    :cond_9
    move v7, v9

    .line 648
    goto :goto_3

    :cond_a
    move v7, v9

    .line 649
    goto :goto_4

    :cond_b
    move v7, v9

    .line 651
    goto :goto_5

    .line 658
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v9, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto :goto_6

    .line 662
    :pswitch_2
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    .line 663
    .local v5, recordNumbers:[I
    if-eqz v6, :cond_c

    .line 665
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 666
    iget v7, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    aput v7, v5, v9

    .line 667
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    array-length v10, v10

    invoke-static {v7, v9, v5, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_6

    .line 654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendData(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1366
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v4, "processSendData"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    const/4 v1, 0x0

    .line 1370
    .local v1, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    const/4 v0, 0x0

    .line 1371
    .local v0, channelData:[B
    const/4 v2, 0x0

    .line 1373
    .local v2, deviceId:Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 1376
    .local v3, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1377
    if-eqz v1, :cond_0

    .line 1378
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v2

    .line 1381
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1382
    if-eqz v1, :cond_1

    .line 1383
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 1386
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "textMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1395
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1396
    if-eqz v1, :cond_2

    .line 1397
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDataToSend(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B

    move-result-object v0

    .line 1400
    :cond_2
    if-eqz v2, :cond_3

    .line 1401
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget v5, v2, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-direct {v4, p1, v0, v3, v5}, Lcom/android/internal/telephony/cdma/utk/SendDataParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;[BLcom/android/internal/telephony/cdma/utk/TextMessage;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1411
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private processSendSms(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 971
    const-string/jumbo v6, "processSendSms"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 973
    .local v3, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 974
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v2, 0x0

    .line 976
    .local v2, smsPdu:[B
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 978
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 979
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 984
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 985
    if-eqz v0, :cond_0

    .line 986
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 987
    iget-boolean v6, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 990
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CDMA_SMS_TPDU:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 991
    if-eqz v0, :cond_1

    .line 992
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveSmsPdu(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B

    move-result-object v2

    .line 995
    :cond_1
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 996
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;

    invoke-direct {v6, p1, v3, v2}, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;[B)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 998
    if-eqz v1, :cond_3

    .line 999
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 1000
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v6, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1004
    :goto_1
    return v4

    .line 981
    :cond_2
    const-string/jumbo v6, "processSendSms : textMsg.text is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 1004
    goto :goto_1
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 4
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 732
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v2, "processSetUpEventList"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    const/4 v1, 0x0

    .line 736
    .local v1, eventList:[B
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 737
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 739
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveSetupEventList(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 744
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;

    invoke-direct {v2, p1, v1}, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;[B)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 749
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 740
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v3, 0x1

    .line 376
    const-string/jumbo v4, "process SetUpIdleModeText"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 379
    .local v2, textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 381
    .local v1, iconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 383
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 384
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 387
    :cond_0
    iget-object v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 388
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_1

    .line 390
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 391
    iget-boolean v4, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 395
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 397
    if-eqz v1, :cond_2

    .line 398
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 399
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 403
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 904
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v9, "process SetupCall"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 907
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    .line 909
    .local v4, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 911
    .local v3, confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 912
    .local v1, callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 913
    .local v7, setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v2, 0x0

    .line 914
    .local v2, confirmIconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v0, 0x0

    .line 917
    .local v0, callIconId:Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 918
    if-eqz v4, :cond_0

    .line 919
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v8

    .line 920
    .local v8, temctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v8, :cond_5

    .line 922
    const-string/jumbo v9, "search confirm message not null"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 930
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "confirmMsg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", setupMsg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    .end local v8           #temctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 934
    if-eqz v4, :cond_1

    .line 935
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v2

    .line 936
    iget-boolean v9, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 940
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 941
    if-eqz v4, :cond_2

    .line 942
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAdress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 945
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 946
    if-eqz v4, :cond_3

    .line 947
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v0

    .line 948
    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 951
    :cond_3
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;

    invoke-direct {v9, p1, v3, v1, v7}, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 953
    if-nez v2, :cond_4

    if-eqz v0, :cond_8

    .line 954
    :cond_4
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 955
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 956
    .local v6, recordNumbers:[I
    const/4 v10, 0x0

    if-eqz v2, :cond_6

    iget v9, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    :goto_1
    aput v9, v6, v10

    .line 958
    const/4 v10, 0x1

    if-eqz v0, :cond_7

    iget v9, v0, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    :goto_2
    aput v9, v6, v10

    .line 961
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 963
    const/4 v9, 0x1

    .line 965
    .end local v6           #recordNumbers:[I
    :goto_3
    return v9

    .line 927
    .restart local v8       #temctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_5
    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 928
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 956
    .end local v8           #temctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .restart local v6       #recordNumbers:[I
    :cond_6
    const/4 v9, -0x1

    goto :goto_1

    .line 958
    :cond_7
    const/4 v9, -0x1

    goto :goto_2

    .line 965
    .end local v6           #recordNumbers:[I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private processTimerManagement(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v9, 0x0

    .line 1075
    const-string/jumbo v7, "processTimerManagement"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    const/4 v5, 0x0

    .line 1078
    .local v5, timerId:I
    const/4 v1, 0x0

    .line 1080
    .local v1, data:[B
    const/4 v0, 0x0

    .line 1082
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    const/4 v2, 0x0

    .line 1084
    .local v2, deviceId:Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_0

    .line 1086
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v2

    .line 1088
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_IDENTIFIER:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_1

    .line 1093
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 1094
    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1097
    .local v6, valueIndex:I
    :try_start_0
    aget-byte v7, v4, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v7, 0xff

    .line 1103
    .end local v4           #rawValue:[B
    .end local v6           #valueIndex:I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timerId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_VALUE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_2

    .line 1108
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 1109
    .restart local v4       #rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1112
    .restart local v6       #valueIndex:I
    const/4 v7, 0x3

    :try_start_1
    new-array v1, v7, [B

    .line 1113
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1120
    .end local v4           #rawValue:[B
    .end local v6           #valueIndex:I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timer value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    invoke-direct {v7, p1, v5, v1}, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;I[B)V

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1124
    return v9

    .line 1098
    .restart local v4       #rawValue:[B
    .restart local v6       #valueIndex:I
    :catch_0
    move-exception v3

    .line 1099
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1100
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .line 1114
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 1115
    .restart local v3       #e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1116
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .locals 3
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v1

    .line 293
    .local v1, tagValue:I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    .line 295
    .local v0, ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 299
    .end local v0           #ctlv:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 275
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    .locals 2
    .parameter "resCode"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cdma/utk/ResultCode;Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 261
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .locals 7
    .parameter "data"

    .prologue
    .line 238
    const/4 v4, 0x0

    .line 239
    .local v4, icons:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 241
    .local v3, iconIndex:I
    if-nez p1, :cond_0

    .line 242
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 256
    .end local p1
    :goto_0
    return-object v6

    .line 244
    .restart local p1
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v6, :pswitch_data_0

    .line 256
    .end local p1
    :cond_1
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto :goto_0

    .line 246
    .restart local p1
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 249
    .restart local p1
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v4, p1

    check-cast v4, [Landroid/graphics/Bitmap;

    .line 251
    move-object v0, v4

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 252
    .local v2, icon:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cdma/utk/BerTlv;)V
    .locals 7
    .parameter "berTlv"

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 106
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_2

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "berTlv.getTag()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getTag()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 113
    :cond_2
    const/4 v1, 0x0

    .line 114
    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v0

    .line 117
    .local v0, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    if-nez v0, :cond_3

    .line 118
    const-string/jumbo v5, "processCommandDetails cmdDet is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 125
    :cond_3
    iget v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    .line 127
    .local v2, cmdType:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    if-nez v2, :cond_4

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppInterface.CommandType.fromInt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to null cmd type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 134
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "make cmdType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 213
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 214
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 217
    :catch_0
    move-exception v4

    .line 218
    .local v4, e:Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "make: caught ResultException e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 220
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;->result()Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto/16 :goto_0

    .line 139
    .end local v4           #e:Lcom/android/internal/telephony/cdma/utk/ResultException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 223
    :goto_1
    if-nez v1, :cond_0

    .line 224
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto/16 :goto_0

    .line 142
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 143
    goto :goto_1

    .line 145
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 146
    goto :goto_1

    .line 148
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 149
    goto :goto_1

    .line 151
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 152
    goto :goto_1

    .line 154
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 155
    goto :goto_1

    .line 159
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 160
    goto :goto_1

    .line 162
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSendSms(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 163
    goto :goto_1

    .line 165
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 166
    goto :goto_1

    .line 168
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    .line 169
    const/4 v1, 0x0

    .line 170
    goto :goto_1

    .line 175
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 176
    goto :goto_1

    .line 178
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processMoreTime(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 179
    goto :goto_1

    .line 181
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processLocalInformation(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 182
    goto :goto_1

    .line 186
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processPollInterval(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 187
    goto :goto_1

    .line 189
    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processTimerManagement(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 190
    goto :goto_1

    .line 192
    :pswitch_f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 193
    goto :goto_1

    .line 195
    :pswitch_10
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processOpenChannel(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 196
    goto :goto_1

    .line 198
    :pswitch_11
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processCloseChannel(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 199
    goto :goto_1

    .line 201
    :pswitch_12
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSendData(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 202
    goto :goto_1

    .line 204
    :pswitch_13
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processReceiveData(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 205
    goto :goto_1

    .line 207
    :pswitch_14
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetChannelStatus(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    :try_end_2
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 208
    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
