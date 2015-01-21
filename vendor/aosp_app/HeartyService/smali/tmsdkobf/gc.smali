.class public final Ltmsdkobf/gc;
.super Ljava/lang/Object;


# direct methods
.method public static aO(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const-string v0, "system_server_manager"

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_3

    :cond_2
    const-string v0, "phone_server_manager"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aQ(Ljava/lang/String;)Ltmsdkobf/ga;
    .locals 1

    invoke-static {p0}, Ltmsdkobf/fw;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/ga$a;->c(Landroid/os/IBinder;)Ltmsdkobf/ga;

    move-result-object v0

    return-object v0
.end method
