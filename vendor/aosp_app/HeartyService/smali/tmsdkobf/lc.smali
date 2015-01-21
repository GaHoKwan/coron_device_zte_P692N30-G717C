.class final Ltmsdkobf/lc;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/lc$1;,
        Ltmsdkobf/lc$b;,
        Ltmsdkobf/lc$d;,
        Ltmsdkobf/lc$c;,
        Ltmsdkobf/lc$a;
    }
.end annotation


# instance fields
.field private BB:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdkobf/lc$b;",
            ">;"
        }
    .end annotation
.end field

.field private BC:Ltmsdk/common/BaseService;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/lc;->BB:Ljava/util/LinkedList;

    .line 205
    return-void
.end method

.method static synthetic a(Ltmsdkobf/lc;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Ltmsdkobf/lc;->BB:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Ltmsdkobf/lc;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Ltmsdkobf/lc;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ltmsdkobf/la;)Ltmsdkobf/la;
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v2, p0, Ltmsdkobf/lc;->BB:Ljava/util/LinkedList;

    monitor-enter v2

    .line 46
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ltmsdkobf/lc$b;

    invoke-direct {v0, p1}, Ltmsdkobf/lc$b;-><init>(Ltmsdkobf/la;)V

    .line 48
    .local v0, wrap_listener:Ltmsdkobf/lc$b;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Ltmsdkobf/lc;->BB:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    iget-object v1, p0, Ltmsdkobf/lc;->BB:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v2

    .line 52
    .end local p1
    :goto_1
    return-object p1

    .end local v0           #wrap_listener:Ltmsdkobf/lc$b;
    .restart local p1
    :cond_0
    move-object v0, v1

    .line 46
    goto :goto_0

    .line 52
    .restart local v0       #wrap_listener:Ltmsdkobf/lc$b;
    :cond_1
    monitor-exit v2

    move-object p1, v1

    goto :goto_1

    .line 54
    .end local v0           #wrap_listener:Ltmsdkobf/lc$b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 34
    iput-object p1, p0, Ltmsdkobf/lc;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Ltmsdkobf/lc$c;

    invoke-direct {v0, p0, v1}, Ltmsdkobf/lc$c;-><init>(Ltmsdkobf/lc;Ltmsdkobf/lc$1;)V

    iput-object v0, p0, Ltmsdkobf/lc;->BC:Ltmsdk/common/BaseService;

    .line 36
    iget-object v0, p0, Ltmsdkobf/lc;->BC:Ltmsdk/common/BaseService;

    invoke-static {v0, v1}, Ltmsdk/common/TMSService;->startService(Ltmsdk/common/BaseService;Landroid/content/Intent;)Ltmsdk/common/BaseService;

    .line 37
    return-void
.end method
