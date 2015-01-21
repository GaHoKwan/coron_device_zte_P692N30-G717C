.class public Lcom/zte/zdm/application/receiver/c;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/receiver/CallReceiver;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/application/receiver/CallReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/receiver/c;->a:Lcom/zte/zdm/application/receiver/CallReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Call CustomPhoneStateListener.onCallStateChanged() RINGING"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean v1, Lcom/zte/zdm/application/receiver/CallReceiver;->a:Z

    goto :goto_0

    :pswitch_1
    const-string v0, "Call CustomPhoneStateListener.onCallStateChanged() IDLE"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/receiver/CallReceiver;->a:Z

    goto :goto_0

    :pswitch_2
    const-string v0, "Call CustomPhoneStateListener.onCallStateChanged() OFFHOOK"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean v1, Lcom/zte/zdm/application/receiver/CallReceiver;->a:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
