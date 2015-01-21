.class final enum Lcom/zte/zdm/mo/am;
.super Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/zdm/mo/WriteEnum$GprsWriteHandler;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/ad;)V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 1

    const-string v0, "gprs Apn has been writed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/mo/GprsSetting;->a:Lcom/zte/zdm/mo/GprsSetting;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/mo/GprsSetting;->g(I[B)V

    return-void
.end method
