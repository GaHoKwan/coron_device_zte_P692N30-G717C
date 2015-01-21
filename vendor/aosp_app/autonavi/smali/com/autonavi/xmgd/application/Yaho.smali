.class public final Lcom/autonavi/xmgd/application/Yaho;
.super Ljava/lang/Object;


# static fields
.field public static ActiveCode:Ljava/lang/String; = null

.field public static ClientNo:I = 0x0

.field public static DataVersion:I = 0x0

.field public static final MAX:I = 0x29

.field public static ModelNo:I = 0x0

.field public static RealTrafficUserInfo:[Ljava/lang/String; = null

.field public static RegisteType:I = 0x0

.field public static Syscode:I = 0x0

.field public static Url:Ljava/lang/String; = null

.field public static Version:I = 0x0

.field public static config:[Z = null

.field public static exception:Ljava/lang/String; = null

.field private static func:Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer; = null

.field public static final needAppWidget:I = 0x23

.field public static final needAroudSearchByNet:I = 0xa

.field public static final needAroundMe:I = 0x14

.field public static final needAutoBackCar:I = 0x4

.field public static final needBus:I = 0x1c

.field public static final needCarMode:I = 0x2

.field public static final needCompass:I = 0x28

.field public static final needContact:I = 0x1f

.field public static final needCurrentPoint:I = 0xd

.field public static final needDebugMode:I = 0x1a

.field public static final needDoorSearch:I = 0x22

.field public static final needExpo:I = 0x8

.field public static final needGesture:I = 0xe

.field public static final needInstrument:I = 0x13

.field public static final needLowEnergy:I = 0x1d

.field public static final needMoveMapCache:I = 0x12

.field public static final needMoveMapMode:I = 0x3

.field public static final needMultiSkin:I = 0x21

.field public static final needNaviSecretary:I = 0xf

.field public static final needNoRegister:I = 0x1b

.field public static final needPlayRoadBook:I = 0x27

.field public static final needPoiSearchByNet:I = 0x9

.field public static final needPositionMMS:I = 0x6

.field public static final needPositionSMS:I = 0x5

.field public static final needPrintTestString:I = 0x1

.field public static final needReal3D:I = 0x0

.field public static final needRealtrafficSetting:I = 0x25

.field public static final needRouteCustomize:I = 0x19

.field public static final needSNS:I = 0x15

.field public static final needSafeHelper:I = 0x1e

.field public static final needShare:I = 0x20

.field public static final needShortcut:I = 0x11

.field public static final needTour:I = 0x7

.field public static final needTrace:I = 0x18

.field public static final needUdpRealtraffic:I = 0x26

.field public static final needUpdate:I = 0x10

.field public static final needUserFeedBack:I = 0x16

.field public static final needVoiceNavi:I = 0xc

.field public static final needVoiceSearch:I = 0xb

.field public static final needWeather:I = 0x24

.field public static final needWhereAmI:I = 0x17

.field private static param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "xmlt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "xmlt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "xmlttmc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->RealTrafficUserInfo:[Ljava/lang/String;

    const/16 v0, 0x58

    sput v0, Lcom/autonavi/xmgd/application/Yaho;->ClientNo:I

    const/16 v0, 0xbc0

    sput v0, Lcom/autonavi/xmgd/application/Yaho;->Syscode:I

    const-string v0, "http://besideyou.mapabc.com:8080/navisoftware/qdactive.do"

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->Url:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->exception:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static defaultConfig()V
    .locals 4

    const/16 v3, 0x29

    const/4 v1, 0x0

    new-array v0, v3, [Z

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->config:[Z

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v2, Lcom/autonavi/xmgd/application/Yaho;->config:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->config:[Z

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static load(Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;

    invoke-direct {v0}, Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->func:Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;

    new-instance v0, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    invoke-direct {v0}, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->func:Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;

    sget-object v5, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    invoke-static {p0, v0, v5}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->native_UI_LoadGDConfig(Ljava/lang/String;Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;)I

    move-result v0

    sput v0, Lcom/autonavi/xmgd/application/Yaho;->Version:I

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->func:Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;->buffer:[I

    if-eqz v0, :cond_6

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->func:Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;->buffer:[I

    array-length v0, v0

    const/16 v5, 0x29

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Z

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->config:[Z

    move v5, v2

    move v6, v2

    :goto_0
    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->func:Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;->buffer:[I

    array-length v0, v0

    if-ge v5, v0, :cond_2

    sget-object v7, Lcom/autonavi/xmgd/application/Yaho;->config:[Z

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->func:Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;->buffer:[I

    aget v0, v0, v5

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    aput-boolean v0, v7, v5

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->config:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    add-int/2addr v6, v0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/autonavi/xmgd/application/Yaho;->func:Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;

    iget-object v5, v5, Lcom/autonavi/xmgd/utility/wrapperIntegerBuffer;->buffer:[I

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v5, v5, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v5, v5, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    if-eqz v5, :cond_5

    move-object v5, v0

    move v0, v2

    :goto_3
    sget-object v6, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v6}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->RealTrafficUserInfo:[Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v6}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->RealTrafficUserInfo:[Ljava/lang/String;

    const/4 v5, 0x1

    sget-object v6, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v6}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->RealTrafficUserInfo:[Ljava/lang/String;

    const/4 v5, 0x2

    sget-object v6, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v6}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/autonavi/xmgd/application/Yaho;->ClientNo:I

    sget v0, Lcom/autonavi/xmgd/application/Yaho;->Version:I

    if-lez v0, :cond_7

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    const/4 v4, 0x4

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/autonavi/xmgd/application/Yaho;->RegisteType:I

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v4, v0, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    const/4 v5, 0x5

    const/4 v0, 0x6

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v4}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/autonavi/xmgd/application/Yaho;->ActiveCode:Ljava/lang/String;

    :goto_4
    sget v4, Lcom/autonavi/xmgd/application/Yaho;->Version:I

    if-le v4, v1, :cond_4

    sget-object v1, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v1, v1, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    add-int/lit8 v4, v0, 0x1

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/autonavi/xmgd/application/Yaho;->DataVersion:I

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v1, v0, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    add-int/lit8 v0, v4, 0x1

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/autonavi/xmgd/application/Yaho;->ModelNo:I

    :cond_4
    sget-object v1, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v1, v1, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    add-int/lit8 v4, v0, 0x1

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/autonavi/xmgd/application/Yaho;->Syscode:I

    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->param:Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperwrapperByteBuffer;->wrapper:[Lcom/autonavi/xmgd/utility/wrapperByteBuffer;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/autonavi/xmgd/utility/wrapperByteBuffer;->buffer:[B

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->Url:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/autonavi/xmgd/application/Yaho;->config:[Z

    const/16 v1, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    move v1, v3

    :goto_5
    return v1

    :cond_6
    invoke-static {}, Lcom/autonavi/xmgd/application/Yaho;->defaultConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/application/Yaho;->exception:Ljava/lang/String;

    move v1, v2

    goto :goto_5

    :cond_7
    move v0, v4

    goto :goto_4
.end method
