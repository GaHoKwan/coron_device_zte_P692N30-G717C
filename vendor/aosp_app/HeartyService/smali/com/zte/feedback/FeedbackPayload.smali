.class public Lcom/zte/feedback/FeedbackPayload;
.super Lcom/zte/feedback/Payload;
.source "FeedbackPayload.java"


# instance fields
.field private email:Ljava/lang/String;

.field private feedback:Ljava/lang/String;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "appContext"
    .parameter "appuid"
    .parameter "app_version"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/zte/feedback/Payload;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    :try_start_0
    const-string v1, "feedback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 23
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "app_version"

    aput-object v3, v1, v2

    invoke-virtual {p0, p3, v1}, Lcom/zte/feedback/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/zte/feedback/Util;->offsetTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "time"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/zte/feedback/FeedbackPayload;->setDeviceInfo()V

    .line 26
    invoke-virtual {p0}, Lcom/zte/feedback/FeedbackPayload;->setVersionInfo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method


# virtual methods
.method public getAsJSON()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/zte/feedback/FeedbackPayload;->email:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "email"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/zte/feedback/FeedbackPayload;->phone:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "phone"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/zte/feedback/FeedbackPayload;->feedback:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "content"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/feedback/FeedbackPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/zte/feedback/FeedbackPayload;->root:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/feedback/FeedbackPayload;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zte/feedback/FeedbackPayload;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public sendFeedBack()Z
    .locals 4

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, result:Z
    new-instance v0, Lcom/zte/feedback/ZTEStatisticsClient;

    invoke-direct {v0}, Lcom/zte/feedback/ZTEStatisticsClient;-><init>()V

    .line 48
    .local v0, client:Lcom/zte/feedback/ZTEStatisticsClient;
    invoke-virtual {p0}, Lcom/zte/feedback/FeedbackPayload;->getAsJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/feedback/ZTEStatisticsClient;->postJSON(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, code:I
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_0

    const/16 v3, 0x12c

    if-ge v1, v3, :cond_0

    .line 50
    const/4 v2, 0x1

    .line 52
    :cond_0
    return v2
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/feedback/FeedbackPayload;->email:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setFeedback(Ljava/lang/String;)V
    .locals 0
    .parameter "feedback"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/feedback/FeedbackPayload;->feedback:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zte/feedback/FeedbackPayload;->phone:Ljava/lang/String;

    .line 69
    return-void
.end method
