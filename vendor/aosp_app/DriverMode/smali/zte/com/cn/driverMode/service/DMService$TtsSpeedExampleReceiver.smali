.class public Lzte/com/cn/driverMode/service/DMService$TtsSpeedExampleReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$TtsSpeedExampleReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "tts_example_text"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$TtsSpeedExampleReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$TtsSpeedExampleReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->g:Lzte/com/cn/driverMode/service/ca;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ca;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
