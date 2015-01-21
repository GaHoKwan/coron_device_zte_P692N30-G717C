.class public Lcom/zte/heartyservice/intercept/Tencent/CallFirewallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallFirewallReceiver.java"


# static fields
.field public static LISTTYPE:Ljava/lang/String;

.field public static WHILTLISTTYPE:I

.field public static call_firewall_off:Ljava/lang/String;

.field public static call_firewall_on:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "com.zte.heartyservice.intent.action.call_firewall_on"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/CallFirewallReceiver;->call_firewall_on:Ljava/lang/String;

    .line 17
    const-string v0, "com.zte.heartyservice.intent.action.call_firewall_off"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/CallFirewallReceiver;->call_firewall_off:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/zte/heartyservice/intercept/Tencent/CallFirewallReceiver;->WHILTLISTTYPE:I

    .line 20
    const-string v0, "list_type"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/CallFirewallReceiver;->LISTTYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallFirewallReceiver;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallFirewallReceiver;->call_firewall_on:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterMod(I)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallFirewallReceiver;->call_firewall_off:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setFilterMod(I)V

    goto :goto_0
.end method
