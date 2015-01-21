.class final Lcom/ctc/System/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/System/k;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ctc/System/k;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    iput-object p2, p0, Lcom/ctc/System/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v0}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    iget-object v1, p0, Lcom/ctc/System/l;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/c/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v0}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "pushAppJson"

    iget-object v2, p0, Lcom/ctc/System/l;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v0}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "getPushAppTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v0}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "updatejson"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v1}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v1

    iget-object v1, v1, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v1, v2}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v0}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v0}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v1}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v1

    iget-object v1, v1, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    const-class v2, Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v1}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v1

    iget-object v1, v1, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v1, v0}, Lcom/ctc/System/PushAPPService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ctc/System/l;->a:Lcom/ctc/System/k;

    invoke-static {v0}, Lcom/ctc/System/k;->a(Lcom/ctc/System/k;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
