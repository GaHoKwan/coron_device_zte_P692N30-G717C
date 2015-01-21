.class public abstract Ltmsdkobf/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/eo$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static lb:Ltmsdkobf/eo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Ltmsdkobf/eo;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized aH()Ltmsdkobf/eo;
    .locals 2

    .prologue
    .line 53
    const-class v1, Ltmsdkobf/eo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/eo;->lb:Ltmsdkobf/eo;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ltmsdkobf/eo$a;

    invoke-direct {v0}, Ltmsdkobf/eo$a;-><init>()V

    sput-object v0, Ltmsdkobf/eo;->lb:Ltmsdkobf/eo;

    .line 57
    :cond_0
    sget-object v0, Ltmsdkobf/eo;->lb:Ltmsdkobf/eo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract a(ILjava/lang/Runnable;JJ)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/Runnable;J)V
.end method

.method public abstract b(IZ)V
.end method
