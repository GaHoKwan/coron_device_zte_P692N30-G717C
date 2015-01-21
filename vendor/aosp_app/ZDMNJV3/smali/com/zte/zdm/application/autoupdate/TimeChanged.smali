.class public Lcom/zte/zdm/application/autoupdate/TimeChanged;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String; = "android.action.checked"

.field public static final b:Ljava/lang/String; = "android.action.unchecked"

.field public static final c:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final d:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "TimeChanged UPDATE_CHECKED"

    invoke-static {p1, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/application/autoupdate/b;

    invoke-direct {v0}, Lcom/zte/zdm/application/autoupdate/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/autoupdate/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "TimeChanged TIMEZONE_CHANGED"

    invoke-static {p1, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/b;->d(Landroid/content/Context;)Z

    new-instance v0, Lcom/zte/zdm/application/autoupdate/b;

    invoke-direct {v0}, Lcom/zte/zdm/application/autoupdate/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/zte/zdm/application/autoupdate/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeChanged received: action ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "time or timezone changed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/autoupdate/TimeChanged;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/zte/zdm/application/receiver/DataConnectivityReceiver;->d()V

    :goto_0
    invoke-static {}, Lcom/zte/zdm/application/b/gc;->a()Lcom/zte/zdm/application/b/gc;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/gc;->c(Landroid/content/Context;)V

    return-void

    :cond_1
    const-string v1, "android.action.unchecked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "UPDATE_UNCHECKED"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TimeChanged UPDATE_UNCHECKED"

    invoke-static {p1, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zte/zdm/application/autoupdate/b;->f(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.action.checked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "UPDATE_CHECKED"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/autoupdate/TimeChanged;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v0, "else"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
