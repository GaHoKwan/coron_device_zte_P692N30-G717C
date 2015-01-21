.class final Lcom/nuance/dragon/toolkit/elvis/b;
.super Lcom/nuance/dragon/toolkit/elvis/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/f;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/elvis/f;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;-><init>(Lcom/nuance/dragon/toolkit/elvis/e;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method
