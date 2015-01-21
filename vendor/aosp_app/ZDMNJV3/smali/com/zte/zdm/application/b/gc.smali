.class public Lcom/zte/zdm/application/b/gc;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x2

.field private static final b:Ljava/lang/String; = "android.intent.action.KILL_ZDMAPP"

.field private static c:Lcom/zte/zdm/application/b/gc;


# instance fields
.field private d:Z

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/b/gc;

    invoke-direct {v0}, Lcom/zte/zdm/application/b/gc;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/b/gc;->c:Lcom/zte/zdm/application/b/gc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/gc;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/zdm/application/b/gc;->e:J

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/b/gc;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/gc;->c:Lcom/zte/zdm/application/b/gc;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/receiver/a;->a()Lcom/zte/zdm/application/receiver/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/receiver/a;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/b/gc;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "already start alarm for exit app"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/gc;->d:Z

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/application/b/gc;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zte/zdm/application/b/gc;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/gc;->d:Z

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zte/zdm/application/services/ZdmService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/zte/zdm/application/b/gc;->e:J

    return-wide v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide p3, p0, Lcom/zte/zdm/application/b/gc;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v1, v0, p3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-static {v3, v5, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/b/gc;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/b/gc;->d(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.KILL_ZDMAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "exitApplication"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->N()Lcom/zte/zdm/a/c;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/b/k;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    const-string v1, "android.action.alarm.kill.zdmApp"

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/zte/zdm/application/b/gc;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/application/b/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x927c0

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/gc;->b()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zte/zdm/application/b/gc;->a(Z)V

    :cond_2
    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v2

    const-string v3, "android.action.alarm.kill.zdmApp"

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/zte/zdm/application/b/gc;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method
