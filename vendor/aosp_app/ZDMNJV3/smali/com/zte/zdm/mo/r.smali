.class final enum Lcom/zte/zdm/mo/r;
.super Lcom/zte/zdm/mo/ReadEnum$GprsCMNetReadHandler;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/zdm/mo/ReadEnum$GprsCMNetReadHandler;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/mo/a;)V

    return-void
.end method


# virtual methods
.method public a(I[B)I
    .locals 1

    sget-object v0, Lcom/zte/zdm/mo/GprsSettingCmnet;->a:Lcom/zte/zdm/mo/GprsSettingCmnet;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/mo/GprsSettingCmnet;->c(I[B)I

    move-result v0

    return v0
.end method