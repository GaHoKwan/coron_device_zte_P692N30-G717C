.class public final Lzte/com/cn/driverMode/utils/i;
.super Ljava/lang/Object;


# static fields
.field private static b:Lzte/com/cn/driverMode/utils/i;

.field private static c:Ljava/lang/String;


# instance fields
.field a:Lzte/com/cn/driverMode/utils/j;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/driverMode/utils/i;->b:Lzte/com/cn/driverMode/utils/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/i;->a:Lzte/com/cn/driverMode/utils/j;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DrivingModeLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzte/com/cn/driverMode/utils/i;->c:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lzte/com/cn/driverMode/utils/i;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/utils/i;->d:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DrivingModeLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzte/com/cn/driverMode/utils/i;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lzte/com/cn/driverMode/utils/i;
    .locals 1

    sget-object v0, Lzte/com/cn/driverMode/utils/i;->b:Lzte/com/cn/driverMode/utils/i;

    if-nez v0, :cond_0

    new-instance v0, Lzte/com/cn/driverMode/utils/i;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/utils/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzte/com/cn/driverMode/utils/i;->b:Lzte/com/cn/driverMode/utils/i;

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/utils/i;->b:Lzte/com/cn/driverMode/utils/i;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/i;->a:Lzte/com/cn/driverMode/utils/j;

    if-nez v0, :cond_0

    new-instance v0, Lzte/com/cn/driverMode/utils/j;

    iget v1, p0, Lzte/com/cn/driverMode/utils/i;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lzte/com/cn/driverMode/utils/i;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lzte/com/cn/driverMode/utils/j;-><init>(Lzte/com/cn/driverMode/utils/i;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/i;->a:Lzte/com/cn/driverMode/utils/j;

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/i;->a:Lzte/com/cn/driverMode/utils/j;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/utils/j;->start()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/i;->a:Lzte/com/cn/driverMode/utils/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/i;->a:Lzte/com/cn/driverMode/utils/j;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/utils/j;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/utils/i;->a:Lzte/com/cn/driverMode/utils/j;

    :cond_0
    return-void
.end method
