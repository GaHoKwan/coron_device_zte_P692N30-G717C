.class public abstract Ltmsdkobf/fp;
.super Ltmsdkobf/fy$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltmsdkobf/fy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltmsdkobf/fp;->b(Ltmsdkobf/fx;Ltmsdkobf/fx;)I

    move-result v0

    invoke-virtual {p1}, Ltmsdkobf/fx;->recycle()V

    return v0
.end method

.method public abstract b(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
