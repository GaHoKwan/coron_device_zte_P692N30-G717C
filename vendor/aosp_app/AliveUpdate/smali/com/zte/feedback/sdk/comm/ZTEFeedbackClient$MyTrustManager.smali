.class Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyTrustManager;
.super Ljava/lang/Object;
.source "ZTEFeedbackClient.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTrustManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;


# direct methods
.method private constructor <init>(Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyTrustManager;->this$0:Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyTrustManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient$MyTrustManager;-><init>(Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 145
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method
