.class public Ltmsdkobf/jb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ltmsdkobf/ky$c;",
            ">;"
        }
    .end annotation
.end field

.field private static sS:Ltmsdkobf/ky$a;

.field private static sT:Ltmsdkobf/jc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltmsdkobf/jb;->sR:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ltmsdkobf/jb$1;

    invoke-direct {v0}, Ltmsdkobf/jb$1;-><init>()V

    sput-object v0, Ltmsdkobf/jb;->sT:Ltmsdkobf/jc$a;

    return-void
.end method

.method public static a(Ljava/lang/String;IJ)Landroid/os/HandlerThread;
    .locals 1
    .parameter "name"
    .parameter "priority"
    .parameter "ident"

    .prologue
    .line 30
    new-instance v0, Ltmsdkobf/kx;

    invoke-direct {v0, p0, p1, p2, p3}, Ltmsdkobf/kx;-><init>(Ljava/lang/String;IJ)V

    .line 31
    .local v0, t:Ltmsdkobf/kx;
    return-object v0
.end method

.method public static activeCount()I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ltmsdkobf/jb;->sR:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method private static dT()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ltmsdkobf/jb;->sS:Ltmsdkobf/ky$a;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Ltmsdkobf/ja;->dO()Ltmsdkobf/ky$a;

    move-result-object v0

    sput-object v0, Ltmsdkobf/jb;->sS:Ltmsdkobf/ky$a;

    .line 27
    :cond_0
    return-void
.end method

.method public static dU()Ltmsdkobf/jc$a;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ltmsdkobf/jb;->sT:Ltmsdkobf/jc$a;

    return-object v0
.end method

.method static synthetic dV()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Ltmsdkobf/jb;->sR:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic dW()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Ltmsdkobf/jb;->dT()V

    return-void
.end method

.method static synthetic dX()Ltmsdkobf/ky$a;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Ltmsdkobf/jb;->sS:Ltmsdkobf/ky$a;

    return-object v0
.end method
