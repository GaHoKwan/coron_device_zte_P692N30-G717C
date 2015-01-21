.class public final Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/b/a/a/b$a;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;

.field private b:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent$RemoteEventCommitted;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent$RemoteEventCommitted;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c$a;->b:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent$RemoteEventCommitted;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/c$a;->b:Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent$RemoteEventCommitted;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/SessionEvent$RemoteEventCommitted;->committed(Ljava/lang/String;)V

    return-void
.end method
