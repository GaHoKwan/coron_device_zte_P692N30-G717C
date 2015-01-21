.class Lcom/powermo/smartshow/frameworks/ag;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ag;->b:Z

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ag;->d:Z

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ag;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/ag;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ag;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->getMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/ag;->a(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/powermo/smartshow/frameworks/ag;->a(Z)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ag;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ss_watermark_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ag;->d:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/powermo/smartshow/frameworks/ag;->d:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.watermark.work"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v1, "command"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ag;->c:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
