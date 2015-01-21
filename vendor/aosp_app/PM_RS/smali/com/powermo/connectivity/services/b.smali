.class final Lcom/powermo/connectivity/services/b;
.super Lcom/powermo/base/r;


# instance fields
.field final synthetic a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;


# direct methods
.method private constructor <init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/connectivity/services/b;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-direct {p0}, Lcom/powermo/base/r;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/connectivity/services/b;-><init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)V

    return-void
.end method


# virtual methods
.method protected final c()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mount -o remount,rw /system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/powermo/connectivity/services/b;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v2}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->a(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pm_sainputserver."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/connectivity/services/b;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /system/bin/pm_sainputserver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 750 /system/bin/pm_sainputserver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mount -o remount,ro /system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
