.class Lcn/com/zte/nlt/receiver/PhoneReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/nlt/receiver/PhoneReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/nlt/receiver/PhoneReceiver;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/receiver/PhoneReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver$1;->this$0:Lcn/com/zte/nlt/receiver/PhoneReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 68
    :pswitch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u6302\u65ad"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver$1;->this$0:Lcn/com/zte/nlt/receiver/PhoneReceiver;

    #getter for: Lcn/com/zte/nlt/receiver/PhoneReceiver;->callView:Lcn/com/zte/nlt/CallInfoFloatView;
    invoke-static {v1}, Lcn/com/zte/nlt/receiver/PhoneReceiver;->access$000(Lcn/com/zte/nlt/receiver/PhoneReceiver;)Lcn/com/zte/nlt/CallInfoFloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/zte/nlt/CallInfoFloatView;->dismissCallInfo()V

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u63a5\u542c"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u54cd\u94c3:\u6765\u7535\u53f7\u7801"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver$1;->this$0:Lcn/com/zte/nlt/receiver/PhoneReceiver;

    #getter for: Lcn/com/zte/nlt/receiver/PhoneReceiver;->context:Landroid/content/Context;
    invoke-static {v1}, Lcn/com/zte/nlt/receiver/PhoneReceiver;->access$100(Lcn/com/zte/nlt/receiver/PhoneReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcn/com/zte/nlt/CallInfoQuery;->doSearch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, zone:Ljava/lang/String;
    iget-object v1, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver$1;->this$0:Lcn/com/zte/nlt/receiver/PhoneReceiver;

    #getter for: Lcn/com/zte/nlt/receiver/PhoneReceiver;->callView:Lcn/com/zte/nlt/CallInfoFloatView;
    invoke-static {v1}, Lcn/com/zte/nlt/receiver/PhoneReceiver;->access$000(Lcn/com/zte/nlt/receiver/PhoneReceiver;)Lcn/com/zte/nlt/CallInfoFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/zte/nlt/CallInfoFloatView;->showCallInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
