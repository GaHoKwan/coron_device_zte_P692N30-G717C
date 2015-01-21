.class public final Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;


# instance fields
.field private final a:Lcom/nuance/a/a/a/b/a/a/d;


# direct methods
.method public constructor <init>(Lcom/nuance/a/a/a/b/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    return-void
.end method


# virtual methods
.method public final commit()Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/a/a/d;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;-><init>(Lcom/nuance/a/a/a/b/a/a/b;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final putBinaryValue(Ljava/lang/String;[B)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    invoke-interface {v0, p1, p2}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;[B)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "Cannot add value into committed event!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putBooleanValue(Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    invoke-interface {v0, p1, p2}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Z)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "Cannot add value into committed event!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putEventReference(Ljava/lang/String;Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    check-cast p2, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;->a()Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/a/b;)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "Cannot add value into committed event!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putFloatValue(Ljava/lang/String;D)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;D)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "Cannot add value into committed event!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putIntegerValue(Ljava/lang/String;I)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    invoke-interface {v0, p1, p2}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;I)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "Cannot add value into committed event!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putLongValue(Ljava/lang/String;J)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;J)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "Cannot add value into committed event!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;->a:Lcom/nuance/a/a/a/b/a/a/d;

    invoke-interface {v0, p1, p2}, Lcom/nuance/a/a/a/b/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "Cannot add value into committed event!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
