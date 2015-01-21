.class Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyHostnameVerifier;
.super Ljava/lang/Object;
.source "ZTEFeedbackClient.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;


# direct methods
.method private constructor <init>(Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyHostnameVerifier;->this$0:Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyHostnameVerifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyHostnameVerifier;-><init>(Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method
