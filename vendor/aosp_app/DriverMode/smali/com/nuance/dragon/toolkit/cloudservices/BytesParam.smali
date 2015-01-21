.class public Lcom/nuance/dragon/toolkit/cloudservices/BytesParam;
.super Lcom/nuance/dragon/toolkit/cloudservices/Param;


# instance fields
.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Param;-><init>(ILjava/lang/String;)V

    const-string v0, "data"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/BytesParam;->c:[B

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/BytesParam;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/BytesParam;->c:[B

    invoke-interface {p1, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;[B)V

    const/4 v0, 0x1

    return v0
.end method
