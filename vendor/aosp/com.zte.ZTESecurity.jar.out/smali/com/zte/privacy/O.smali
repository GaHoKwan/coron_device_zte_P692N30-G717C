.class Lcom/zte/privacy/O;
.super Landroid/os/Handler;


# instance fields
.field final synthetic cB:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/O;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/privacy/as;

    iget-object v1, p0, Lcom/zte/privacy/O;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-static {v1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->d(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/M;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/privacy/M;->a(Lcom/zte/privacy/as;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/privacy/O;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-static {v1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->e(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/privacy/aq;->Q(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/privacy/w;

    iget-object v1, p0, Lcom/zte/privacy/O;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iget-object v2, v0, Lcom/zte/privacy/w;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/zte/privacy/w;->uid:I

    invoke-static {v1, v2, v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/privacy/O;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-static {v1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->d(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/M;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/privacy/M;->v(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/privacy/l;

    iget-object v1, p0, Lcom/zte/privacy/O;->cB:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iget-object v2, v0, Lcom/zte/privacy/l;->pkg:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/zte/privacy/l;->enabled:Z

    invoke-static {v1, v2, v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->a(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
