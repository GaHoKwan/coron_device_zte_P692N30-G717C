.class public Ltmsdkobf/go;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static nJ:Ltmsdkobf/gj;

.field private static nK:Ltmsdkobf/go;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Ltmsdkobf/gj;->bJ()Ltmsdkobf/gj;

    move-result-object v0

    .line 130
    sput-object v0, Ltmsdkobf/go;->nJ:Ltmsdkobf/gj;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized bL()Ltmsdkobf/go;
    .locals 2

    .prologue
    .line 140
    const-class v1, Ltmsdkobf/go;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/go;->nK:Ltmsdkobf/go;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ltmsdkobf/go;

    invoke-direct {v0}, Ltmsdkobf/go;-><init>()V

    sput-object v0, Ltmsdkobf/go;->nK:Ltmsdkobf/go;

    .line 143
    :cond_0
    sget-object v0, Ltmsdkobf/go;->nK:Ltmsdkobf/go;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ltmsdkobf/gp;)Z
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 156
    sget-object v0, Ltmsdkobf/go;->nJ:Ltmsdkobf/gj;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/gj;->a(Landroid/content/Context;Ltmsdkobf/gp;)Z

    move-result v0

    return v0
.end method

.method public bM()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Ltmsdkobf/go;->nJ:Ltmsdkobf/gj;

    invoke-virtual {v0}, Ltmsdkobf/gj;->Q()V

    .line 164
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "appName"
    .parameter "regCode"

    .prologue
    .line 173
    sget-object v0, Ltmsdkobf/go;->nJ:Ltmsdkobf/gj;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/gj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
