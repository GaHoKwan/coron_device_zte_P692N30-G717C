.class final Lcom/powermo/connectivity/services/e;
.super Lcom/powermo/base/r;


# instance fields
.field final synthetic a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;


# direct methods
.method private constructor <init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/connectivity/services/e;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-direct {p0}, Lcom/powermo/base/r;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/connectivity/services/e;-><init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)V

    return-void
.end method


# virtual methods
.method protected final c()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mount -o remount,rw /system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "rm /system/bin/pm_sainputserver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mount -o remount,ro /system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
