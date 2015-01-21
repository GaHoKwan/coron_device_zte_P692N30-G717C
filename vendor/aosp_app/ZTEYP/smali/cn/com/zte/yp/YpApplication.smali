.class public Lcn/com/zte/yp/YpApplication;
.super Landroid/app/Application;
.source "YpApplication.java"


# static fields
.field private static final HOST_FILE_DIR:Ljava/lang/String; = "/data/data/cn.com.zte.yp/shared_prefs/"

.field private static final HOST_FILE_NAME:Ljava/lang/String; = "host.xml"

.field private static final KEY:Ljava/lang/String; = "SERVER_HOST"

.field private static final SERVER_HOST:Ljava/lang/String; = "http://cloud.ztedevices.com/numberlocator/"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcn/com/zte/yp/YpApplication;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private checkHostFile()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/cn.com.zte.yp/shared_prefs/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/cn.com.zte.yp/shared_prefs/host.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    const v2, 0x7f050001

    invoke-static {p0, v2, v1}, Lcn/com/zte/nlt/utils/FileUtil;->copyRawToFiles(Landroid/content/Context;ILjava/io/File;)V

    .line 52
    :cond_1
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcn/com/zte/yp/YpApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getServerHost()Ljava/lang/String;
    .locals 7

    .prologue
    .line 55
    new-instance v0, Lcn/com/zte/nlt/utils/ConfigManager;

    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "host.xml"

    const/4 v4, 0x0

    const-string v5, "host.xml"

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcn/com/zte/nlt/utils/ConfigManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .local v0, conf:Lcn/com/zte/nlt/utils/ConfigManager;
    const-string v2, "SERVER_HOST"

    const-string v3, "http://cloud.ztedevices.com/numberlocator/"

    invoke-virtual {v0, v2, v3}, Lcn/com/zte/nlt/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER_HOST = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 59
    return-object v1
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    sput-object p0, Lcn/com/zte/yp/YpApplication;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcn/com/zte/yp/YpApplication;->checkHostFile()V

    .line 37
    return-void
.end method
