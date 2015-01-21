.class public Lcom/autonavi/xmgd/d/g;
.super Lcom/autonavi/xmgd/d/d;


# static fields
.field private static a:Lcom/autonavi/xmgd/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/d/g;->a:Lcom/autonavi/xmgd/d/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/d/d;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/autonavi/xmgd/d/g;
    .locals 2

    const-class v1, Lcom/autonavi/xmgd/d/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xmgd/d/g;->a:Lcom/autonavi/xmgd/d/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/d/g;

    invoke-direct {v0}, Lcom/autonavi/xmgd/d/g;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/d/g;->a:Lcom/autonavi/xmgd/d/g;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/d/g;->a:Lcom/autonavi/xmgd/d/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
