.class final Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$1;
.super Landroid/os/Handler;
.source "EventsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->notifyCallDataReached(Landroid/content/Intent;)V
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$000(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$1;->removeMessages(I)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
