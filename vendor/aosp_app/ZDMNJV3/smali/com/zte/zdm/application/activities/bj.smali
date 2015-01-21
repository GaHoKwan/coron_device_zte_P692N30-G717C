.class Lcom/zte/zdm/application/activities/bj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bj;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "Handler: setProgressDialogBarProgressValue"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bj;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->a(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->b(II)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/zte/zdm/application/activities/bj;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->b(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method
