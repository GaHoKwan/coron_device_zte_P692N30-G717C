.class Lcom/zte/engineer/NetWorkType$3;
.super Landroid/os/Handler;
.source "NetWorkType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/NetWorkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/NetWorkType;


# direct methods
.method constructor <init>(Lcom/zte/engineer/NetWorkType;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zte/engineer/NetWorkType$3;->this$0:Lcom/zte/engineer/NetWorkType;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 147
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 152
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 153
    .local v1, type:I
    iget-object v2, p0, Lcom/zte/engineer/NetWorkType$3;->this$0:Lcom/zte/engineer/NetWorkType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/engineer/NetWorkType;->log(Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/zte/engineer/NetWorkType$3;->this$0:Lcom/zte/engineer/NetWorkType;

    #getter for: Lcom/zte/engineer/NetWorkType;->button1:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/zte/engineer/NetWorkType;->access$000(Lcom/zte/engineer/NetWorkType;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/zte/engineer/NetWorkType$3;->this$0:Lcom/zte/engineer/NetWorkType;

    #getter for: Lcom/zte/engineer/NetWorkType;->button2:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/zte/engineer/NetWorkType;->access$100(Lcom/zte/engineer/NetWorkType;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/zte/engineer/NetWorkType$3;->this$0:Lcom/zte/engineer/NetWorkType;

    #getter for: Lcom/zte/engineer/NetWorkType;->button3:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/zte/engineer/NetWorkType;->access$200(Lcom/zte/engineer/NetWorkType;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 168
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #type:I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/zte/engineer/NetWorkType$3;->this$0:Lcom/zte/engineer/NetWorkType;

    #getter for: Lcom/zte/engineer/NetWorkType;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/zte/engineer/NetWorkType;->access$300(Lcom/zte/engineer/NetWorkType;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
