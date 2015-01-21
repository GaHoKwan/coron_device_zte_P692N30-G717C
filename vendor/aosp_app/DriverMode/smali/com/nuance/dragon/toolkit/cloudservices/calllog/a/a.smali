.class public final Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/calllog/CalllogSender;


# instance fields
.field private final a:Lcom/nuance/a/a/a/b/a/a/a;


# direct methods
.method public constructor <init>(Lcom/nuance/a/a/a/b/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/a;->a:Lcom/nuance/a/a/a/b/a/a/a;

    return-void
.end method


# virtual methods
.method public final send([B)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/calllog/a/a;->a:Lcom/nuance/a/a/a/b/a/a/a;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/a/a/a;->a([B)V

    return-void
.end method
