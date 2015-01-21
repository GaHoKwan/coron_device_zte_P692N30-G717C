.class final Lcom/nuance/dragon/toolkit/cloudservices/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/b/a/a/a$a;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/c;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/c;Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/c;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(S[B)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;->failed(S[B)V

    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$1;->a:Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;

    invoke-interface {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender$SenderListener;->succeeded([B)V

    :cond_0
    return-void
.end method
