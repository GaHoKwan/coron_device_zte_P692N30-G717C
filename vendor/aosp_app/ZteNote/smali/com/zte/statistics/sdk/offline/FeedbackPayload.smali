.class public Lcom/zte/statistics/sdk/offline/FeedbackPayload;
.super Lcom/zte/statistics/sdk/offline/Payload;
.source "FeedbackPayload.java"


# instance fields
.field private email:Ljava/lang/String;

.field private feedback:Ljava/lang/String;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "feedbackType"

    .prologue
    const/4 v5, 0x0

    .line 25
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/Payload;-><init>()V

    .line 27
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->FEEDBACK:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->getTypeValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->version:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_version"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "time"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setDeviceInfo()V

    .line 31
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setVersionInfo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Exception creating Feedback Payload."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getAsJSON()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->email:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "email"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->phone:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "phone"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->feedback:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "content"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->root:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Exception getting Feedback Payload as JSON."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->email:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFeedback(Ljava/lang/String;)V
    .locals 0
    .parameter "feedback"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->feedback:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zte/statistics/sdk/offline/FeedbackPayload;->phone:Ljava/lang/String;

    .line 64
    return-void
.end method
