.class public Lcom/zte/zdm/d/a/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zte/zdm/d/a/i;)Ljava/net/Proxy;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/a/i;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    invoke-virtual {p0}, Lcom/zte/zdm/d/a/i;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    new-instance v1, Ljava/net/Proxy;

    invoke-virtual {p0}, Lcom/zte/zdm/d/a/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zdm/d/a/i;->c()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    goto :goto_1

    :pswitch_1
    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
