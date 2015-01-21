.class Ltmsdkobf/hi$a$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hi$a;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pA:Ltmsdkobf/hi$a;


# direct methods
.method constructor <init>(Ltmsdkobf/hi$a;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Ltmsdkobf/hi$a$1;->pA:Ltmsdkobf/hi$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 123
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #number:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ltmsdkobf/hi$a$1;->getResultData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 129
    const-string v1, "incoming_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #number:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .restart local v0       #number:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ltmsdkobf/hi$a$1;->getResultData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, phonenum:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-direct {p0, p2}, Ltmsdkobf/hi$a$1;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Ltmsdkobf/hi$a$1;->pA:Ltmsdkobf/hi$a;

    invoke-static {v1}, Ltmsdkobf/hi$a;->a(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    if-nez v0, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p1, p2}, Ltmsdk/common/utils/DualSimCallUtil;->getCallState(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 112
    invoke-static {}, Ltmsdkobf/hi$a;->ce()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-direct {p0, p2}, Ltmsdkobf/hi$a$1;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Ltmsdkobf/hi$a$1;->pA:Ltmsdkobf/hi$a;

    invoke-static {v1}, Ltmsdkobf/hi$a;->b(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    if-nez v0, :cond_3

    const-string v1, "null"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2
.end method
