.class public Lcom/zte/ZTESecurity/ZTEPackageManager;
.super Lcom/zte/security/ZTEIPackageManager;

# interfaces
.implements Landroid/content/pm/IPackageManager;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTEPackageManager"


# instance fields
.field private dm:Lcom/zte/ZTESecurity/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIPackageManager;-><init>(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->dm:Lcom/zte/ZTESecurity/b;

    return-void
.end method


# virtual methods
.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x2710

    if-le p2, v1, :cond_3

    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v1, p1}, Lcom/zte/ZTESecurity/b;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v1, p1, p2}, Lcom/zte/ZTESecurity/b;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v1, p1}, Lcom/zte/ZTESecurity/b;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v1, p1, p2}, Lcom/zte/ZTESecurity/b;->b(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v1, p1}, Lcom/zte/ZTESecurity/b;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v1, p1, p2}, Lcom/zte/ZTESecurity/b;->c(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEIPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTEPackageManager"

    const-string v2, "Exception checkUidPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
