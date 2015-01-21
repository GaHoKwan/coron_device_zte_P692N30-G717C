.class public Lcom/zte/zdm/application/receiver/GreenNetReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String; = "persist.sys.lwmode.enable"

.field private static final b:Ljava/lang/String; = "persist.sys.lvwang"

.field private static final c:Ljava/lang/String; = "android.intent.action.LW_MODE_ON"

.field private static e:Lcom/zte/zdm/application/receiver/GreenNetReceiver;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->e:Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->d:Z

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/receiver/GreenNetReceiver;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->e:Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    invoke-direct {v0}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->e:Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->e:Lcom/zte/zdm/application/receiver/GreenNetReceiver;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 3

    const-string v0, "persist.sys.lwmode.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.lvwang"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->d:Z

    :goto_0
    iget-boolean v0, p0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->d:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->d:Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "showgreenNeton"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->L()V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "android.intent.action.LW_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/receiver/GreenNetReceiver;->c()V

    :cond_0
    return-void
.end method
