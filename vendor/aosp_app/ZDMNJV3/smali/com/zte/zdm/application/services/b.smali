.class Lcom/zte/zdm/application/services/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/services/ZdmSelfRegisterService;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/services/ZdmSelfRegisterService;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/services/b;->a:Lcom/zte/zdm/application/services/ZdmSelfRegisterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/application/services/b;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "NAVY"

    const-string v1, "Send msg failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/application/services/b;->a:Lcom/zte/zdm/application/services/ZdmSelfRegisterService;

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->stopSelf()V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "NAVY"

    const-string v1, "Send msg successfull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/application/services/b;->a:Lcom/zte/zdm/application/services/ZdmSelfRegisterService;

    invoke-virtual {v0}, Lcom/zte/zdm/application/services/ZdmSelfRegisterService;->stopSelf()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
