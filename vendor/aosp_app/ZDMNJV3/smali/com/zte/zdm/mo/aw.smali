.class final enum Lcom/zte/zdm/mo/aw;
.super Lcom/zte/zdm/mo/WriteEnum$WapWriteHandler;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/zdm/mo/WriteEnum$WapWriteHandler;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/ad;)V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/WapSetting;->a:Lcom/zte/zdm/mo/WapSetting;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/mo/WapSetting;->b(I[B)V

    return-void
.end method
