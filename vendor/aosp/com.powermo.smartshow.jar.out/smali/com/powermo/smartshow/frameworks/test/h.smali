.class Lcom/powermo/smartshow/frameworks/test/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/powermo/smartshow/frameworks/test/h;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/powermo/smartshow/frameworks/test/d;

.field private d:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/powermo/smartshow/frameworks/test/h;->a:Lcom/powermo/smartshow/frameworks/test/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/h;->d:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/h;->c:Lcom/powermo/smartshow/frameworks/test/d;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/h;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/test/h;->d:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/test/h;->b:Landroid/content/Context;

    new-instance v0, Lcom/powermo/smartshow/frameworks/test/d;

    invoke-direct {v0, p1}, Lcom/powermo/smartshow/frameworks/test/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/test/h;->c:Lcom/powermo/smartshow/frameworks/test/d;

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)Lcom/powermo/smartshow/frameworks/test/h;
    .locals 1

    sget-object v0, Lcom/powermo/smartshow/frameworks/test/h;->a:Lcom/powermo/smartshow/frameworks/test/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/powermo/smartshow/frameworks/test/h;

    invoke-direct {v0, p0, p1}, Lcom/powermo/smartshow/frameworks/test/h;-><init>(Landroid/content/Context;Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V

    sput-object v0, Lcom/powermo/smartshow/frameworks/test/h;->a:Lcom/powermo/smartshow/frameworks/test/h;

    :cond_0
    sget-object v0, Lcom/powermo/smartshow/frameworks/test/h;->a:Lcom/powermo/smartshow/frameworks/test/h;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/h;->d:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    const-string v2, "VersionInfo"

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(Lcom/powermo/smartshow/frameworks/test/a;Z)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "component"

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/test/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/powermo/smartshow/frameworks/test/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/powermo/smartshow/frameworks/test/a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result_descp"

    iget-object v2, p1, Lcom/powermo/smartshow/frameworks/test/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p1, Lcom/powermo/smartshow/frameworks/test/a;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/powermo/smartshow/frameworks/test/a;->e:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v2, "bitmap"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_0
    const-string v1, "test_name"

    iget-object v2, p1, Lcom/powermo/smartshow/frameworks/test/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/h;->c:Lcom/powermo/smartshow/frameworks/test/d;

    invoke-virtual {p1}, Lcom/powermo/smartshow/frameworks/test/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/powermo/smartshow/frameworks/test/a;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/powermo/smartshow/frameworks/test/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/powermo/smartshow/frameworks/test/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/test/h;->c:Lcom/powermo/smartshow/frameworks/test/d;

    invoke-virtual {v2, v0, v1}, Lcom/powermo/smartshow/frameworks/test/d;->a(Landroid/content/ContentValues;I)J

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "bitmap"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TestCaseUtil"

    const-string v2, "update Test exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/test/h;->c:Lcom/powermo/smartshow/frameworks/test/d;

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/test/d;->a(Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
