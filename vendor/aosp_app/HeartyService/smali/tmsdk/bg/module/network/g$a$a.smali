.class final Ltmsdk/bg/module/network/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/network/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic wf:Ltmsdk/bg/module/network/g$a;


# direct methods
.method private constructor <init>(Ltmsdk/bg/module/network/g$a;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Ltmsdk/bg/module/network/g$a$a;->wf:Ltmsdk/bg/module/network/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltmsdk/bg/module/network/g$a;Ltmsdk/bg/module/network/g$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Ltmsdk/bg/module/network/g$a$a;-><init>(Ltmsdk/bg/module/network/g$a;)V

    return-void
.end method

.method private p(J)J
    .locals 10
    .parameter "delay"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 397
    .local v0, current_date:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 398
    .local v1, gc:Ljava/util/GregorianCalendar;
    const/4 v6, 0x5

    invoke-virtual {v1, v6, v8}, Ljava/util/GregorianCalendar;->add(II)V

    .line 399
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 400
    const/16 v6, 0xc

    invoke-virtual {v1, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 401
    const/16 v6, 0xd

    invoke-virtual {v1, v6, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 402
    const/16 v6, 0xe

    invoke-virtual {v1, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 403
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 404
    .local v4, temp_result:J
    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    move-wide v2, p1

    .line 405
    .local v2, result:J
    :goto_0
    return-wide v2

    .end local v2           #result:J
    :cond_0
    move-wide v2, v4

    .line 404
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 378
    iget-object v2, p0, Ltmsdk/bg/module/network/g$a$a;->wf:Ltmsdk/bg/module/network/g$a;

    iget-object v2, v2, Ltmsdk/bg/module/network/g$a;->wa:Ltmsdk/bg/module/network/g;

    invoke-static {v2}, Ltmsdk/bg/module/network/g;->b(Ltmsdk/bg/module/network/g;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/d;

    .line 379
    .local v1, monitor:Ltmsdk/bg/module/network/d;
    invoke-virtual {v1}, Ltmsdk/bg/module/network/d;->ey()V

    goto :goto_0

    .line 382
    .end local v1           #monitor:Ltmsdk/bg/module/network/d;
    :cond_0
    iget-object v2, p0, Ltmsdk/bg/module/network/g$a$a;->wf:Ltmsdk/bg/module/network/g$a;

    iget-object v2, v2, Ltmsdk/bg/module/network/g$a;->wa:Ltmsdk/bg/module/network/g;

    invoke-static {v2}, Ltmsdk/bg/module/network/g;->d(Ltmsdk/bg/module/network/g;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Ltmsdk/bg/module/network/g$a$a;->wf:Ltmsdk/bg/module/network/g$a;

    invoke-static {v2}, Ltmsdk/bg/module/network/g$a;->b(Ltmsdk/bg/module/network/g$a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Ltmsdk/bg/module/network/g$a$a;->wf:Ltmsdk/bg/module/network/g$a;

    invoke-static {v3}, Ltmsdk/bg/module/network/g$a;->a(Ltmsdk/bg/module/network/g$a;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 384
    iget-object v2, p0, Ltmsdk/bg/module/network/g$a$a;->wf:Ltmsdk/bg/module/network/g$a;

    invoke-static {v2}, Ltmsdk/bg/module/network/g$a;->b(Ltmsdk/bg/module/network/g$a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Ltmsdk/bg/module/network/g$a$a;->wf:Ltmsdk/bg/module/network/g$a;

    invoke-static {v3}, Ltmsdk/bg/module/network/g$a;->a(Ltmsdk/bg/module/network/g$a;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Ltmsdk/bg/module/network/g$a$a;->wf:Ltmsdk/bg/module/network/g$a;

    iget-object v4, v4, Ltmsdk/bg/module/network/g$a;->wa:Ltmsdk/bg/module/network/g;

    invoke-static {v4}, Ltmsdk/bg/module/network/g;->e(Ltmsdk/bg/module/network/g;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ltmsdk/bg/module/network/g$a$a;->p(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    :cond_1
    return-void
.end method
