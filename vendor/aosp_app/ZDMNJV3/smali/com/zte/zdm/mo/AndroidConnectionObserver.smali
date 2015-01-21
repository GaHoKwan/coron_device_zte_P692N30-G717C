.class public Lcom/zte/zdm/mo/AndroidConnectionObserver;
.super Lcom/zte/zdm/mo/notification/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/mo/notification/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/mo/DmConectionManager;

    invoke-direct {v0}, Lcom/zte/zdm/mo/DmConectionManager;-><init>()V

    invoke-virtual {v0}, Lcom/zte/zdm/mo/DmConectionManager;->m()V

    return-void
.end method
