.class Lcom/zte/zdm/custom/selfregister/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zte/zdm/custom/selfregister/b;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/custom/selfregister/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/custom/selfregister/d;->a:Lcom/zte/zdm/custom/selfregister/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/custom/selfregister/b;Lcom/zte/zdm/custom/selfregister/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/custom/selfregister/d;-><init>(Lcom/zte/zdm/custom/selfregister/b;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/d;->a:Lcom/zte/zdm/custom/selfregister/b;

    invoke-static {v0}, Lcom/zte/zdm/custom/selfregister/b;->b(Lcom/zte/zdm/custom/selfregister/b;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/d;->a:Lcom/zte/zdm/custom/selfregister/b;

    invoke-static {v0}, Lcom/zte/zdm/custom/selfregister/b;->c(Lcom/zte/zdm/custom/selfregister/b;)I

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/d;->a:Lcom/zte/zdm/custom/selfregister/b;

    invoke-static {v0}, Lcom/zte/zdm/custom/selfregister/b;->d(Lcom/zte/zdm/custom/selfregister/b;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "resend self regist sms time out!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/d;->a:Lcom/zte/zdm/custom/selfregister/b;

    invoke-static {v0}, Lcom/zte/zdm/custom/selfregister/b;->a(Lcom/zte/zdm/custom/selfregister/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/zte/zdm/custom/selfregister/d;->getResultCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "self regist sms send getResultCode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/zte/zdm/custom/selfregister/d;->a()V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Send msg successfull"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/d;->a:Lcom/zte/zdm/custom/selfregister/b;

    invoke-virtual {v0}, Lcom/zte/zdm/custom/selfregister/b;->h()V

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/d;->a:Lcom/zte/zdm/custom/selfregister/b;

    invoke-static {v0}, Lcom/zte/zdm/custom/selfregister/b;->a(Lcom/zte/zdm/custom/selfregister/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/f/a/h;->f(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
