.class public Ltmsdk/bg/module/antitheft/AntitheftLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final tQ:Ljava/lang/String;

.field private final tR:Ljava/lang/String;

.field private final tS:D

.field private tT:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

.field private tU:Ljava/util/Timer;

.field private tV:Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;

.field private tW:D

.field private tX:Z

.field private tY:Ltmsdkobf/gr;

.field private tZ:Ltmsdkobf/gr;

.field private ua:J


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;Landroid/content/Context;)V
    .locals 4
    .parameter "observer"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "AntitheftLocator"

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "qqpimsecure"

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tQ:Ljava/lang/String;

    .line 23
    const-string v0, "P3G4U-LRUAJ-AOHCI-TSJUT-QE7B6"

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tR:Ljava/lang/String;

    .line 24
    iput-wide v1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tS:D

    .line 29
    iput-wide v1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tW:D

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tX:Z

    .line 31
    iput-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tY:Ltmsdkobf/gr;

    .line 32
    iput-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tZ:Ltmsdkobf/gr;

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->ua:J

    .line 36
    iput-object p2, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tV:Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;

    .line 38
    return-void
.end method

.method static synthetic a(Ltmsdk/bg/module/antitheft/AntitheftLocator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 20
    iget-wide v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->ua:J

    return-wide v0
.end method

.method static synthetic a(Ltmsdk/bg/module/antitheft/AntitheftLocator;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-wide p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->ua:J

    return-wide p1
.end method

.method static synthetic a(Ltmsdk/bg/module/antitheft/AntitheftLocator;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tU:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Ltmsdk/bg/module/antitheft/AntitheftLocator;Ltmsdkobf/gr;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->a(Ltmsdkobf/gr;)V

    return-void
.end method

.method private a(Ltmsdkobf/gr;)V
    .locals 4
    .parameter "newLbsResult"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    iget v0, p1, Ltmsdkobf/gr;->oh:I

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tZ:Ltmsdkobf/gr;

    if-nez v0, :cond_2

    .line 85
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tZ:Ltmsdkobf/gr;

    goto :goto_0

    .line 87
    :cond_2
    iget-wide v0, p1, Ltmsdkobf/gr;->nW:D

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tZ:Ltmsdkobf/gr;

    iget-wide v2, v2, Ltmsdkobf/gr;->nW:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 88
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tZ:Ltmsdkobf/gr;

    goto :goto_0
.end method

.method static synthetic a(Ltmsdk/bg/module/antitheft/AntitheftLocator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tX:Z

    return p1
.end method

.method static synthetic b(Ltmsdk/bg/module/antitheft/AntitheftLocator;Ltmsdkobf/gr;)Ltmsdkobf/gr;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tY:Ltmsdkobf/gr;

    return-object p1
.end method

.method static synthetic b(Ltmsdk/bg/module/antitheft/AntitheftLocator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->ep()V

    return-void
.end method

.method static synthetic c(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tV:Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;

    return-object v0
.end method

.method static synthetic d(Ltmsdk/bg/module/antitheft/AntitheftLocator;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 20
    iget-wide v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tW:D

    return-wide v0
.end method

.method static synthetic e(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tX:Z

    return v0
.end method

.method private eo()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 41
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tT:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    const/4 v4, 0x3

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;-><init>(Ltmsdk/bg/module/antitheft/AntitheftLocator;IIII)V

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tT:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    .line 44
    :cond_0
    invoke-static {}, Ltmsdkobf/go;->bL()Ltmsdkobf/go;

    move-result-object v0

    const-string v1, "qqpimsecure"

    const-string v3, "P3G4U-LRUAJ-AOHCI-TSJUT-QE7B6"

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/go;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    invoke-static {}, Ltmsdkobf/go;->bL()Ltmsdkobf/go;

    move-result-object v0

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tT:Ltmsdk/bg/module/antitheft/AntitheftLocator$LocListener;

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/go;->b(Landroid/content/Context;Ltmsdkobf/gp;)Z

    .line 46
    const-string v0, "AntitheftLocator"

    const-string v1, "startLocate()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const v0, 0x1d4c9

    invoke-static {v0, v2}, Ltmsdkobf/im;->a(II)V

    .line 49
    return-void
.end method

.method private ep()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->eq()V

    .line 73
    const-string v0, "AntitheftLocator"

    const-string v1, "stopLocate()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private eq()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Ltmsdkobf/go;->bL()Ltmsdkobf/go;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/go;->bM()V

    .line 78
    return-void
.end method

.method static synthetic f(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tU:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic g(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tZ:Ltmsdkobf/gr;

    return-object v0
.end method

.method static synthetic h(Ltmsdk/bg/module/antitheft/AntitheftLocator;)Ltmsdkobf/gr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tY:Ltmsdkobf/gr;

    return-object v0
.end method


# virtual methods
.method public startAccurateLocate(D)V
    .locals 2
    .parameter "minAccuracy"

    .prologue
    .line 66
    iput-wide p1, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tW:D

    .line 67
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->eo()V

    .line 68
    const-string v0, "AntitheftLocator"

    const-string v1, "startAccurateLocate()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public startNormalLocate()V
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdk/bg/module/antitheft/AntitheftLocator;->tW:D

    .line 57
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->eo()V

    .line 58
    const-string v0, "AntitheftLocator"

    const-string v1, "startNormalLocate()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
