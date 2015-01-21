.class Lcom/zte/feedback/ZTEStatisticsClient$MyHostnameVerifier;
.super Ljava/lang/Object;
.source "ZTEStatisticsClient.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/feedback/ZTEStatisticsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/ZTEStatisticsClient;


# direct methods
.method private constructor <init>(Lcom/zte/feedback/ZTEStatisticsClient;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/zte/feedback/ZTEStatisticsClient$MyHostnameVerifier;->this$0:Lcom/zte/feedback/ZTEStatisticsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/feedback/ZTEStatisticsClient;Lcom/zte/feedback/ZTEStatisticsClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/zte/feedback/ZTEStatisticsClient$MyHostnameVerifier;-><init>(Lcom/zte/feedback/ZTEStatisticsClient;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method
