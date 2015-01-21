.class public Lcom/autonavi/xm/navigation/engine/GDBL_Global;
.super Ljava/lang/Object;


# static fields
.field public static final IS_LOG_GPS:Z = false

.field public static final IS_LOG_MID:Z = false

.field public static final IS_MULTI_LIB:Z = true

.field public static LOG_GPS_FILENAME:Ljava/lang/String; = null

.field public static final MID_TAG:Ljava/lang/String; = "autonavi_mid"

.field public static final TAG:Ljava/lang/String; = "autonavi_gdbl"

.field private static df:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Global;->df:Ljava/text/DateFormat;

    const-string v0, "GNaviLoc_0.log"

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Global;->LOG_GPS_FILENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCurrentMethodName(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "StackTraceElement is null!"

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    if-ge v1, p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StackTraceElement is too samll !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getNow()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/engine/GDBL_Global;->df:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
