.class final Ltmsdkobf/hh$b;
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
    name = "b"
.end annotation


# static fields
.field private static ps:Ljava/lang/reflect/Method;

.field private static pt:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pr:Landroid/telephony/SmsMessage;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

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
    .line 163
    iget-object v0, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k([B)V
    .locals 11
    .parameter "pdu"

    .prologue
    const/4 v10, 0x0

    .line 169
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    iput-object v3, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    .line 170
    iget-object v3, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 173
    .local v1, t:Ljava/lang/Throwable;
    :try_start_1
    sget-object v3, Ltmsdkobf/hh$b;->ps:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    sget-object v3, Ltmsdkobf/hh$b;->pt:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_1

    .line 174
    :cond_0
    const-string v3, "com.android.internal.telephony.gsm.SmsMessage"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "createFromPdu"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Ltmsdkobf/hh$b;->ps:Ljava/lang/reflect/Method;

    .line 175
    sget-object v3, Ltmsdkobf/hh$b;->ps:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 177
    const-string v3, "com.android.internal.telephony.SmsMessageBase"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 178
    .local v2, wrappedMessageClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v3, Landroid/telephony/SmsMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Ltmsdkobf/hh$b;->pt:Ljava/lang/reflect/Constructor;

    .line 179
    sget-object v3, Ltmsdkobf/hh$b;->pt:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 181
    .end local v2           #wrappedMessageClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    sget-object v3, Ltmsdkobf/hh$b;->pt:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ltmsdkobf/hh$b;->ps:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsMessage;

    iput-object v3, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    .line 182
    iget-object v3, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    iput-object v10, p0, Ltmsdkobf/hh$b;->pr:Landroid/telephony/SmsMessage;

    goto :goto_0
.end method
