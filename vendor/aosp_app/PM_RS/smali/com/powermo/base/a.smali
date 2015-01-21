.class final Lcom/powermo/base/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/powermo/base/AndroidServiceBase;


# direct methods
.method private constructor <init>(Lcom/powermo/base/AndroidServiceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/base/a;->a:Lcom/powermo/base/AndroidServiceBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/base/AndroidServiceBase;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/base/a;-><init>(Lcom/powermo/base/AndroidServiceBase;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/base/a;->a:Lcom/powermo/base/AndroidServiceBase;

    invoke-virtual {v1}, Lcom/powermo/base/AndroidServiceBase;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "LIB_COMMAND"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIB_PARAM1"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIB_PARAM2"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LIB_PARAM3"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    invoke-static {}, Lcom/powermo/base/AndroidServiceBase;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v4, "enable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/powermo/base/a;->a:Lcom/powermo/base/AndroidServiceBase;

    invoke-static {v0}, Lcom/powermo/base/AndroidServiceBase;->a(Lcom/powermo/base/AndroidServiceBase;)Lcom/powermo/base/o;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/powermo/base/o;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    const-string v4, "disable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/powermo/base/a;->a:Lcom/powermo/base/AndroidServiceBase;

    invoke-static {v0}, Lcom/powermo/base/AndroidServiceBase;->a(Lcom/powermo/base/AndroidServiceBase;)Lcom/powermo/base/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/powermo/base/o;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    const-string v4, "port"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/powermo/base/a;->a:Lcom/powermo/base/AndroidServiceBase;

    invoke-static {v1}, Lcom/powermo/base/AndroidServiceBase;->b(Lcom/powermo/base/AndroidServiceBase;)Lcom/powermo/base/l;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/powermo/base/l;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x301f

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/powermo/base/a;->a:Lcom/powermo/base/AndroidServiceBase;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/powermo/base/AndroidServiceBase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/powermo/base/AndroidServiceBase;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
