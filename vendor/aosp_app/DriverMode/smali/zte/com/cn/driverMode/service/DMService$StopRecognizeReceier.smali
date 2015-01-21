.class public Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DMService"

    const-string v1, "StopRecognizeReceier-->onReceive!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMService;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x0

    iput v1, v0, Lzte/com/cn/driverMode/service/DMService;->a:I

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ca;->f()V

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->c()Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$StopRecognizeReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->f:Lzte/com/cn/driverMode/service/l;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/l;->i()V

    :cond_2
    return-void
.end method
