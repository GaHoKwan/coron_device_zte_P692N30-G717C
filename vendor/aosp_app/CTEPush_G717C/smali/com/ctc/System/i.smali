.class final Lcom/ctc/System/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ctc/c/o;


# instance fields
.field final synthetic a:Lcom/ctc/System/PushAPPService;


# direct methods
.method constructor <init>(Lcom/ctc/System/PushAPPService;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ctc/a/c;Ljava/util/List;I)V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_0

    invoke-virtual {p1, v3}, Lcom/ctc/a/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "updateAppCount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->d(Lcom/ctc/System/PushAPPService;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    const-class v2, Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pushModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v1, v0}, Lcom/ctc/System/PushAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ctc.epush.ReportAppUpdate_Action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "pushModel"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0, v1}, Lcom/ctc/System/PushAPPService;->sendStickyBroadcast(Landroid/content/Intent;)V

    :goto_1
    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    return-void

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    invoke-virtual {v0}, Lcom/ctc/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ctc/b/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cmd:\u5378\u8f7d level:2 \u9759\u9ed8\u5378\u8f7d\u4e86: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ctc.epush.ReportAppUpdate_Action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "pushModel"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0, v1}, Lcom/ctc/System/PushAPPService;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.ctc.epush.ReportAppUpdate_Action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "pushModel"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0, v2}, Lcom/ctc/System/PushAPPService;->sendStickyBroadcast(Landroid/content/Intent;)V

    throw v1
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "pushAppJson"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_0
    if-lt v1, p3, :cond_1

    const-string v0, ""

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v1}, Lcom/ctc/System/PushAPPService;->b(Lcom/ctc/System/PushAPPService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060016

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    const-class v3, Lcom/ctc/epush/UserDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "dialogFlag"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "prompt"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0, v1}, Lcom/ctc/System/PushAPPService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    return-void

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u3001"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;

    move-result-object v1

    const-string v0, "0"

    invoke-virtual {v1}, Lcom/ctc/a/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "dataReport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v2, v0}, Lcom/ctc/System/PushAPPService;->a(Lcom/ctc/System/PushAPPService;Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/ctc/a/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/ctc/a/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v1}, Lcom/ctc/a/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ctc/System/PushAPPService;->a(Lcom/ctc/System/PushAPPService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v3}, Lcom/ctc/System/PushAPPService;->b(Lcom/ctc/System/PushAPPService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, ""

    iget-object v4, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v4}, Lcom/ctc/System/PushAPPService;->b(Lcom/ctc/System/PushAPPService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v3}, Lcom/ctc/System/PushAPPService;->b(Lcom/ctc/System/PushAPPService;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ctc/c/g;->f:Ljava/lang/String;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cmd: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v3, "down"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v3}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v3

    const-string v4, "PUSH_LEVEL"

    invoke-virtual {v3, v4, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/ctc/System/m;

    invoke-direct {v3, p0, p1}, Lcom/ctc/System/m;-><init>(Lcom/ctc/System/i;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    iget-object v5, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v1}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/ctc/System/PushAPPService;->a(Lcom/ctc/System/PushAPPService;Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    :cond_5
    const-string v3, "down"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v3}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v3

    const-string v4, "PUSH_LEVEL"

    invoke-virtual {v3, v4, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/ctc/System/k;

    invoke-direct {v3, p0, p1}, Lcom/ctc/System/k;-><init>(Lcom/ctc/System/i;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    iget-object v5, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v1}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/ctc/System/PushAPPService;->a(Lcom/ctc/System/PushAPPService;Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    :cond_6
    const-string v3, "down"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v3}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v3

    const-string v4, "PUSH_LEVEL"

    invoke-virtual {v3, v4, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/ctc/System/j;

    invoke-direct {v3, p0, p1}, Lcom/ctc/System/j;-><init>(Lcom/ctc/System/i;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    iget-object v5, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v1}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/ctc/System/PushAPPService;->a(Lcom/ctc/System/PushAPPService;Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    :cond_7
    const-string v3, "down"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "PUSH_LEVEL"

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "pushAppJson"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    const-class v2, Lcom/ctc/System/DownOrUnInstalAPPService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v1, v0}, Lcom/ctc/System/PushAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    sput-object v3, Lcom/ctc/c/g;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v3, "revoke"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v1}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ctc/System/PushAPPService;->a(Lcom/ctc/System/PushAPPService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    iget-object v0, p0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    goto/16 :goto_0

    :cond_a
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0, p1, v0, v3}, Lcom/ctc/System/i;->a(Ljava/lang/Object;Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v0, v3}, Lcom/ctc/System/i;->a(Lcom/ctc/a/c;Ljava/util/List;I)V

    goto/16 :goto_0
.end method
