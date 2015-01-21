.class public Lcom/zte/zdm/f/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;

.field private static b:Landroid/os/PowerManager$WakeLock;

.field private static c:Landroid/app/KeyguardManager$KeyguardLock;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    sput-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    sput-object v0, Lcom/zte/zdm/f/a/h;->c:Landroid/app/KeyguardManager$KeyguardLock;

    const-string v0, "com.zte.zdm.fullWakelock"

    sput-object v0, Lcom/zte/zdm/f/a/h;->d:Ljava/lang/String;

    const-string v0, "com.zte.zdm.PartialWakelock"

    sput-object v0, Lcom/zte/zdm/f/a/h;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget-object v1, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/zte/zdm/f/a/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "need to aquire partial wake up"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    const-string v0, "not need to aquire partial wake up"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget-object v1, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const v1, 0x3000001a

    sget-object v2, Lcom/zte/zdm/f/a/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "need to aquire full wake up"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    const-string v0, "not need to aquire full wake up"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/f/a/h;->a:Landroid/os/PowerManager$WakeLock;

    const-string v0, "releaseFullWakeLock release"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "releaseFullWakeLock mWakelock.isHeld() == false"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "releaseFullWakeLock mWakelock == null"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/f/a/h;->b:Landroid/os/PowerManager$WakeLock;

    const-string v0, "releasePartialWakeLock release"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "releasePartialWakeLock mWakelock.isHeld() == false"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "releasePartialWakeLock mWakelock == null"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/zte/zdm/f/a/h;->c:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/f/a/h;->c:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/f/a/h;->c:Landroid/app/KeyguardManager$KeyguardLock;

    const-string v0, "enableKeyguard reenableKeyguard"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "enableKeyguard mKeyguardLock == null"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/zte/zdm/f/a/h;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/zte/zdm/f/a/h;->c(Landroid/content/Context;)V

    return-void
.end method
