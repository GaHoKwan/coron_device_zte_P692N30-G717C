.class final Ltmsdkobf/hh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/gz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private pq:Landroid/telephony/gsm/SmsMessage;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ltmsdkobf/hh$a;->pq:Landroid/telephony/gsm/SmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hh$a;->pq:Landroid/telephony/gsm/SmsMessage;

    invoke-virtual {v0}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltmsdkobf/hh$a;->pq:Landroid/telephony/gsm/SmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hh$a;->pq:Landroid/telephony/gsm/SmsMessage;

    invoke-virtual {v0}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k([B)V
    .locals 2
    .parameter "pdu"

    .prologue
    .line 139
    :try_start_0
    invoke-static {p1}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/hh$a;->pq:Landroid/telephony/gsm/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Throwable;
    const/4 v1, 0x0

    iput-object v1, p0, Ltmsdkobf/hh$a;->pq:Landroid/telephony/gsm/SmsMessage;

    goto :goto_0
.end method
