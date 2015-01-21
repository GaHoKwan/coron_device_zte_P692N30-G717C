.class final Ltmsdkobf/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/gz;


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private pg:Lcom/google/android/mms/pdu/GenericPdu;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Ltmsdkobf/hd;->mIntent:Landroid/content/Intent;

    .line 454
    return-void
.end method


# virtual methods
.method public ca()Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 481
    const/4 v2, 0x0

    .line 482
    .local v2, entity:Ltmsdk/common/module/aresengine/SmsEntity;
    iget-object v3, p0, Ltmsdkobf/hd;->mIntent:Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 483
    .local v1, data:[B
    invoke-virtual {p0, v1}, Ltmsdkobf/hd;->k([B)V

    .line 485
    iget-object v3, p0, Ltmsdkobf/hd;->pg:Lcom/google/android/mms/pdu/GenericPdu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltmsdkobf/hd;->pg:Lcom/google/android/mms/pdu/GenericPdu;

    instance-of v3, v3, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v3, :cond_0

    .line 486
    new-instance v2, Ltmsdk/common/module/aresengine/SmsEntity;

    .end local v2           #entity:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-direct {v2}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 487
    .restart local v2       #entity:Ltmsdk/common/module/aresengine/SmsEntity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    .line 488
    invoke-virtual {p0}, Ltmsdkobf/hd;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 489
    invoke-virtual {p0}, Ltmsdkobf/hd;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 490
    iput v5, v2, Ltmsdk/common/module/aresengine/SmsEntity;->protocolType:I

    .line 491
    iget-object v3, p0, Ltmsdkobf/hd;->mIntent:Landroid/content/Intent;

    iput-object v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->raw:Landroid/content/Intent;

    .line 492
    const/4 v3, 0x0

    iput v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->read:I

    .line 493
    iput v5, v2, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    .line 494
    new-instance v3, Ltmsdk/common/module/aresengine/MmsData;

    invoke-direct {v3}, Ltmsdk/common/module/aresengine/MmsData;-><init>()V

    iput-object v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    .line 495
    iget-object v4, v2, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    iget-object v3, p0, Ltmsdkobf/hd;->pg:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v3, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4, v3}, Ltmsdk/common/module/aresengine/MmsData;->writeNotificationInd(Lcom/google/android/mms/pdu/NotificationInd;)V

    .line 496
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 497
    .local v0, adapter:Ltmsdkobf/lm;
    if-eqz v0, :cond_0

    .line 498
    iget-object v3, p0, Ltmsdkobf/hd;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v3}, Ltmsdkobf/lm;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ltmsdk/common/module/aresengine/SmsEntity;->fromCard:Ljava/lang/String;

    .line 502
    .end local v0           #adapter:Ltmsdkobf/lm;
    :cond_0
    return-object v2
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Ltmsdkobf/hd;->pg:Lcom/google/android/mms/pdu/GenericPdu;

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Ltmsdkobf/hd;->pg:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 466
    .local v1, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 469
    .end local v1           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    :goto_0
    return-object v0

    .line 466
    .restart local v1       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    const-string v0, ""

    return-object v0
.end method

.method public k([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 474
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v0, p1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 476
    .local v0, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/hd;->pg:Lcom/google/android/mms/pdu/GenericPdu;

    .line 477
    return-void
.end method
