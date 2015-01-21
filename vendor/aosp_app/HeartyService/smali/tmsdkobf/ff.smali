.class public final Ltmsdkobf/ff;
.super Ltmsdkobf/fj;
.source "SourceFile"


# static fields
.field private static lW:Ltmsdkobf/ff;


# instance fields
.field private kE:[B

.field private lX:Ltmsdkobf/ji;

.field private lY:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/ff;->lW:Ltmsdkobf/ff;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 91
    const/4 v0, 0x3

    const/16 v1, 0xce

    invoke-direct {p0, p1, v0, v1}, Ltmsdkobf/fj;-><init>(Landroid/content/Context;II)V

    .line 46
    iput-object v2, p0, Ltmsdkobf/ff;->kE:[B

    .line 55
    iput-object v2, p0, Ltmsdkobf/ff;->lX:Ltmsdkobf/ji;

    .line 56
    iput-object v2, p0, Ltmsdkobf/ff;->lY:[Ljava/lang/Long;

    .line 92
    return-void
.end method

.method public static declared-synchronized k(Landroid/content/Context;)Ltmsdkobf/ff;
    .locals 2
    .parameter

    .prologue
    .line 66
    const-class v1, Ltmsdkobf/ff;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Ltmsdkobf/ff;->lW:Ltmsdkobf/ff;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ltmsdkobf/ff;

    invoke-direct {v0, p0}, Ltmsdkobf/ff;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdkobf/ff;->lW:Ltmsdkobf/ff;

    .line 70
    :cond_0
    sget-object v0, Ltmsdkobf/ff;->lW:Ltmsdkobf/ff;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
