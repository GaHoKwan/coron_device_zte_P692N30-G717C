.class final Ltmsdkobf/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/gz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/hh$b;,
        Ltmsdkobf/hh$a;
    }
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private ph:Ltmsdkobf/gz;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Ltmsdkobf/hh;->mIntent:Landroid/content/Intent;

    .line 51
    return-void
.end method


# virtual methods
.method public ca()Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v7, p0, Ltmsdkobf/hh;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 78
    .local v2, bundle:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 79
    .local v6, pdus:[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 80
    const-string v7, "pdus"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v6, v7

    check-cast v6, [Ljava/lang/Object;

    .line 83
    :cond_0
    if-eqz v6, :cond_1

    array-length v7, v6

    if-nez v7, :cond_2

    .line 119
    :cond_1
    :goto_0
    return-object v3

    .line 86
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v5, msg:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 89
    .local v1, address:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v6

    if-ge v4, v7, :cond_5

    .line 90
    aget-object v7, v6, v4

    if-nez v7, :cond_4

    .line 89
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 93
    :cond_4
    aget-object v7, v6, v4

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {p0, v7}, Ltmsdkobf/hh;->k([B)V

    .line 95
    invoke-virtual {p0}, Ltmsdkobf/hh;->getBody()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 104
    :cond_5
    if-eqz v1, :cond_1

    .line 107
    new-instance v3, Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {v3}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 108
    .local v3, data:Ltmsdk/common/module/aresengine/SmsEntity;
    iput-object v1, v3, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 110
    const/4 v7, 0x1

    iput v7, v3, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    .line 111
    const/4 v7, 0x0

    iput v7, v3, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 112
    iget-object v7, p0, Ltmsdkobf/hh;->mIntent:Landroid/content/Intent;

    iput-object v7, v3, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    .line 113
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 114
    .local v0, adapter:Ltmsdkobf/lm;
    if-eqz v0, :cond_1

    .line 115
    iget-object v7, p0, Ltmsdkobf/hh;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v7}, Ltmsdkobf/lm;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    .line 116
    const-string v7, "DualSim"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMSParser number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fromcard:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    .end local v0           #adapter:Ltmsdkobf/lm;
    .end local v3           #data:Ltmsdk/common/module/aresengine/SmsEntity;
    :cond_6
    invoke-virtual {p0}, Ltmsdkobf/hh;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    if-nez v1, :cond_3

    .line 100
    invoke-virtual {p0}, Ltmsdkobf/hh;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltmsdkobf/hh;->ph:Ltmsdkobf/gz;

    invoke-interface {v0}, Ltmsdkobf/gz;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltmsdkobf/hh;->ph:Ltmsdkobf/gz;

    invoke-interface {v0}, Ltmsdkobf/gz;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 65
    iget-object v0, p0, Ltmsdkobf/hh;->ph:Ltmsdkobf/gz;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 67
    new-instance v0, Ltmsdkobf/hh$b;

    invoke-direct {v0}, Ltmsdkobf/hh$b;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hh;->ph:Ltmsdkobf/gz;

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Ltmsdkobf/hh;->ph:Ltmsdkobf/gz;

    invoke-interface {v0, p1}, Ltmsdkobf/gz;->k([B)V

    .line 73
    return-void

    .line 69
    :cond_1
    new-instance v0, Ltmsdkobf/hh$a;

    invoke-direct {v0}, Ltmsdkobf/hh$a;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hh;->ph:Ltmsdkobf/gz;

    goto :goto_0
.end method
