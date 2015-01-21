.class public Lcom/zte/feedback/sdk/offline/FeedbackPayload;
.super Lcom/zte/feedback/sdk/offline/Payload;
.source "FeedbackPayload.java"


# instance fields
.field private contactInfo:Ljava/lang/String;

.field private feedback:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-direct {p0}, Lcom/zte/feedback/sdk/offline/Payload;-><init>()V

    .line 30
    :try_start_0
    sget-object v1, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;->FEEDBACK:Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;

    invoke-virtual {v1}, Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;->getTypeValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->version:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_version"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/zte/feedback/sdk/util/Util;->offsetTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "time"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setDeviceInfo()V

    .line 34
    invoke-virtual {p0}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setVersionInfo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Exception creating Feedback Payload."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/zte/feedback/sdk/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getAsJSON()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->contactInfo:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contactInfo"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->feedback:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "content"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->root:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Exception getting Feedback Payload as JSON."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/zte/feedback/sdk/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setContactInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "contactInfo"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->contactInfo:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setFeedback(Ljava/lang/String;)V
    .locals 0
    .parameter "feedback"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->feedback:Ljava/lang/String;

    .line 54
    return-void
.end method
