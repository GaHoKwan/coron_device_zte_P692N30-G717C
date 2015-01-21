.class final Ltmsdk/common/TMSBootReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/TMSBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final xi:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x17

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Ltmsdk/common/TMSBootReceiver$a;->xi:[S

    return-void

    :array_0
    .array-data 0x2
        0x40t 0x0t
        0x4bt 0x0t
        0x48t 0x0t
        0x8t 0x0t
        0x56t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x45t 0x0t
        0x44t 0x0t
        0x1ft 0x0t
        0x1bt 0x0t
        0x1et 0x0t
        0x1t 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x50t 0x0t
        0x5at 0x0t
        0x58t 0x0t
        0x50t 0x0t
        0x45t 0x0t
        0x56t 0x0t
        0x5et 0x0t
        0x5ct 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltmsdk/common/TMSBootReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Ltmsdk/common/TMSBootReceiver$a;-><init>()V

    return-void
.end method

.method private a([S)Ljava/lang/String;
    .locals 4
    .parameter "source"

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-direct {p0, p1}, Ltmsdk/common/TMSBootReceiver$a;->b([S)[S

    move-result-object v2

    .line 84
    .local v2, target:[S
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 85
    aget-short v3, v2, v0

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private b([S)[S
    .locals 5
    .parameter "source"

    .prologue
    .line 91
    array-length v4, p1

    new-array v2, v4, [S

    .line 92
    .local v2, target:[S
    const/16 v3, 0x23

    .line 93
    .local v3, xorChar:C
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 94
    aget-short v4, p1, v0

    xor-int v1, v4, v3

    .line 95
    .local v1, r:I
    int-to-short v4, v1

    aput-short v4, v2, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v3, 0x1

    int-to-char v3, v4

    goto :goto_0

    .line 97
    .end local v1           #r:I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public n(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 56
    const/4 v4, 0x0

    .line 59
    .local v4, result:Z
    sget-object v7, Ltmsdk/common/TMSBootReceiver$a;->xi:[S

    invoke-direct {p0, v7}, Ltmsdk/common/TMSBootReceiver$a;->a([S)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, actualPkgName250:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 70
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v0, v7, v8}, Ltmsdkobf/id;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    .local v2, pinfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    move v4, v5

    .line 75
    .end local v2           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v4

    .restart local v2       #pinfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :cond_0
    move v4, v6

    .line 71
    goto :goto_0

    .line 72
    .end local v2           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
