.class public Lcn/com/zte/nlt/receiver/PhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneReceiver.java"


# instance fields
.field private callView:Lcn/com/zte/nlt/CallInfoFloatView;

.field private context:Landroid/content/Context;

.field listener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver;->callView:Lcn/com/zte/nlt/CallInfoFloatView;

    .line 61
    new-instance v0, Lcn/com/zte/nlt/receiver/PhoneReceiver$1;

    invoke-direct {v0, p0}, Lcn/com/zte/nlt/receiver/PhoneReceiver$1;-><init>(Lcn/com/zte/nlt/receiver/PhoneReceiver;)V

    iput-object v0, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver;->listener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/nlt/receiver/PhoneReceiver;)Lcn/com/zte/nlt/CallInfoFloatView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver;->callView:Lcn/com/zte/nlt/CallInfoFloatView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/zte/nlt/receiver/PhoneReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    iput-object p1, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver;->context:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcn/com/zte/nlt/CallInfoFloatView;->getInstance(Landroid/content/Context;)Lcn/com/zte/nlt/CallInfoFloatView;

    move-result-object v3

    iput-object v3, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver;->callView:Lcn/com/zte/nlt/CallInfoFloatView;

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, phoneNumber:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call OUT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 39
    invoke-static {p1, v0}, Lcn/com/zte/nlt/CallInfoQuery;->doSearch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, zone:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver;->callView:Lcn/com/zte/nlt/CallInfoFloatView;

    invoke-virtual {v3, v2}, Lcn/com/zte/nlt/CallInfoFloatView;->showCallInfo(Ljava/lang/String;)V

    .line 59
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v2           #zone:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 56
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcn/com/zte/nlt/receiver/PhoneReceiver;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method
