.class public Lcom/iflytek/Setting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/Setting$LOG_LEVEL;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Lcom/iflytek/Setting$LOG_LEVEL;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/iflytek/Setting;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/Setting;->b:Z

    sput-boolean v1, Lcom/iflytek/Setting;->c:Z

    sget-object v0, Lcom/iflytek/Setting$LOG_LEVEL;->none:Lcom/iflytek/Setting$LOG_LEVEL;

    sput-object v0, Lcom/iflytek/Setting;->d:Lcom/iflytek/Setting$LOG_LEVEL;

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/Setting;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetwork(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/Setting;->c:Z

    return-void
.end method

.method public static saveLogFile(Lcom/iflytek/Setting$LOG_LEVEL;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/iflytek/Setting;->d:Lcom/iflytek/Setting$LOG_LEVEL;

    sput-object p1, Lcom/iflytek/Setting;->e:Ljava/lang/String;

    return-void
.end method

.method public static setLanguage(Ljava/util/Locale;)V
    .locals 0

    invoke-static {p0}, Lcom/iflytek/c/a;->a(Ljava/util/Locale;)V

    return-void
.end method

.method public static showLogcat(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/Setting;->a:Z

    invoke-static {p0}, Lcom/iflytek/msc/MSC;->DebugLog(Z)I

    return-void
.end method
