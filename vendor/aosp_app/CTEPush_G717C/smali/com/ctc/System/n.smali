.class final Lcom/ctc/System/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/System/m;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ctc/System/m;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    iput-object p2, p0, Lcom/ctc/System/n;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ctc/System/n;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    invoke-static {v0}, Lcom/ctc/System/m;->a(Lcom/ctc/System/m;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    iget-object v1, p0, Lcom/ctc/System/n;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/c/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    invoke-static {v0}, Lcom/ctc/System/m;->a(Lcom/ctc/System/m;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "pushAppJson"

    iget-object v2, p0, Lcom/ctc/System/n;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    invoke-static {v0}, Lcom/ctc/System/m;->a(Lcom/ctc/System/m;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->c(Lcom/ctc/System/PushAPPService;)Lcom/ctc/c/n;

    move-result-object v0

    const-string v1, "getPushAppTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    invoke-static {v0}, Lcom/ctc/System/m;->a(Lcom/ctc/System/m;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ctc/System/n;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/System/PushAPPService;->b(Lcom/ctc/System/PushAPPService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    invoke-static {v0}, Lcom/ctc/System/m;->a(Lcom/ctc/System/m;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    iget-object v1, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    invoke-static {v1}, Lcom/ctc/System/m;->a(Lcom/ctc/System/m;)Lcom/ctc/System/i;

    move-result-object v1

    iget-object v1, v1, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v1}, Lcom/ctc/System/PushAPPService;->e(Lcom/ctc/System/PushAPPService;)Ljava/lang/String;

    invoke-static {v0}, Lcom/ctc/System/PushAPPService;->f(Lcom/ctc/System/PushAPPService;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    invoke-static {v1}, Lcom/ctc/System/m;->a(Lcom/ctc/System/m;)Lcom/ctc/System/i;

    move-result-object v1

    iget-object v1, v1, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-static {v1}, Lcom/ctc/System/PushAPPService;->g(Lcom/ctc/System/PushAPPService;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/ctc/System/n;->a:Lcom/ctc/System/m;

    invoke-static {v0}, Lcom/ctc/System/m;->a(Lcom/ctc/System/m;)Lcom/ctc/System/i;

    move-result-object v0

    iget-object v0, v0, Lcom/ctc/System/i;->a:Lcom/ctc/System/PushAPPService;

    invoke-virtual {v0}, Lcom/ctc/System/PushAPPService;->stopSelf()V

    return-void
.end method
