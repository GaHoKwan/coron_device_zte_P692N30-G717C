.class public final Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;


# instance fields
.field private final a:Lcom/nuance/a/a/a/b/a/a/b;


# direct methods
.method public constructor <init>(Lcom/nuance/a/a/a/b/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;->a:Lcom/nuance/a/a/a/b/a/a/b;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/nuance/a/a/a/b/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;->a:Lcom/nuance/a/a/a/b/a/a/b;

    return-object v0
.end method

.method public final createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;->a:Lcom/nuance/a/a/a/b/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;->a:Lcom/nuance/a/a/a/b/a/a/b;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/a/a/d;

    move-result-object v1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/b;-><init>(Lcom/nuance/a/a/a/b/a/a/d;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createRemoteChildEvent(Ljava/lang/String;Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent$RemoteEventCommitted;)Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;->a:Lcom/nuance/a/a/a/b/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;->a:Lcom/nuance/a/a/a/b/a/a/b;

    new-instance v1, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c$a;

    invoke-direct {v1, p0, p2}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c$a;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent$RemoteEventCommitted;)V

    invoke-interface {v0, p1, v1}, Lcom/nuance/a/a/a/b/a/a/b;->a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/a/b$a;)Lcom/nuance/a/a/a/b/a/a/b;

    move-result-object v1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;-><init>(Lcom/nuance/a/a/a/b/a/a/b;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
