.class final Ltmsdk/bg/module/network/g$a;
.super Ltmsdk/common/BaseService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/network/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/network/g$a$a;
    }
.end annotation


# instance fields
.field private mLooper:Landroid/os/Looper;

.field final synthetic wa:Ltmsdk/bg/module/network/g;

.field private wb:Landroid/os/HandlerThread;

.field private wc:Landroid/os/Handler;

.field private wd:Ljava/lang/Runnable;

.field private we:Ltmsdk/bg/module/network/g$b;


# direct methods
.method private constructor <init>(Ltmsdk/bg/module/network/g;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 336
    iput-object p1, p0, Ltmsdk/bg/module/network/g$a;->wa:Ltmsdk/bg/module/network/g;

    invoke-direct {p0}, Ltmsdk/common/BaseService;-><init>()V

    .line 341
    new-instance v0, Ltmsdk/bg/module/network/g$a$a;

    invoke-direct {v0, p0, v2}, Ltmsdk/bg/module/network/g$a$a;-><init>(Ltmsdk/bg/module/network/g$a;Ltmsdk/bg/module/network/g$1;)V

    iput-object v0, p0, Ltmsdk/bg/module/network/g$a;->wd:Ljava/lang/Runnable;

    .line 342
    new-instance v0, Ltmsdk/bg/module/network/g$b;

    iget-object v1, p0, Ltmsdk/bg/module/network/g$a;->wa:Ltmsdk/bg/module/network/g;

    invoke-direct {v0, v1, v2}, Ltmsdk/bg/module/network/g$b;-><init>(Ltmsdk/bg/module/network/g;Ltmsdk/bg/module/network/g$1;)V

    iput-object v0, p0, Ltmsdk/bg/module/network/g$a;->we:Ltmsdk/bg/module/network/g$b;

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Ltmsdk/bg/module/network/g;Ltmsdk/bg/module/network/g$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Ltmsdk/bg/module/network/g$a;-><init>(Ltmsdk/bg/module/network/g;)V

    return-void
.end method

.method static synthetic a(Ltmsdk/bg/module/network/g$a;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 336
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->wd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Ltmsdk/bg/module/network/g$a;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 336
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->wc:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 346
    invoke-super {p0, p1}, Ltmsdk/common/BaseService;->onCreate(Landroid/content/Context;)V

    .line 347
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/ij;->bj(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/network/g$a;->wb:Landroid/os/HandlerThread;

    .line 348
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->wb:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 349
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->wb:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/network/g$a;->mLooper:Landroid/os/Looper;

    .line 350
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltmsdk/bg/module/network/g$a;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltmsdk/bg/module/network/g$a;->wc:Landroid/os/Handler;

    .line 351
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->we:Ltmsdk/bg/module/network/g$b;

    iget-object v1, p0, Ltmsdk/bg/module/network/g$a;->wa:Ltmsdk/bg/module/network/g;

    invoke-static {v1}, Ltmsdk/bg/module/network/g;->c(Ltmsdk/bg/module/network/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/network/g$b;->l(Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method public onDestory()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Ltmsdk/common/BaseService;->onDestory()V

    .line 364
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->wc:Landroid/os/Handler;

    iget-object v1, p0, Ltmsdk/bg/module/network/g$a;->wd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 366
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->we:Ltmsdk/bg/module/network/g$b;

    iget-object v1, p0, Ltmsdk/bg/module/network/g$a;->wa:Ltmsdk/bg/module/network/g;

    invoke-static {v1}, Ltmsdk/bg/module/network/g;->c(Ltmsdk/bg/module/network/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdk/bg/module/network/g$b;->m(Landroid/content/Context;)V

    .line 367
    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 356
    invoke-super {p0, p1}, Ltmsdk/common/BaseService;->onStart(Landroid/content/Intent;)V

    .line 357
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->wc:Landroid/os/Handler;

    iget-object v1, p0, Ltmsdk/bg/module/network/g$a;->wd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    iget-object v0, p0, Ltmsdk/bg/module/network/g$a;->wc:Landroid/os/Handler;

    iget-object v1, p0, Ltmsdk/bg/module/network/g$a;->wd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method
