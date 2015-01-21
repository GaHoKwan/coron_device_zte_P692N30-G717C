.class Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;
.super Ljava/lang/Object;
.source "OplmnUpdateCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/telephony/OplmnUpdateCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;


# direct methods
.method constructor <init>(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 61
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    invoke-static {}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    #setter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;
    invoke-static {v4, v5}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$002(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljavax/net/ssl/SSLContext;)Ljavax/net/ssl/SSLContext;

    .line 62
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get the SslContext = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;
    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$000(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$100(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;
    invoke-static {v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$000(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    if-nez v4, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;
    invoke-static {v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$000(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mUrl:Ljava/net/URL;
    invoke-static {v5}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$200(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljava/net/URL;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->getOplmnInfo(Ljavax/net/ssl/SSLContext;Ljava/net/URL;)Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;

    move-result-object v2

    .line 67
    .local v2, oplmnInfo:Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;
    if-eqz v2, :cond_0

    .line 68
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$300(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "com.mediatek.oplmn.update.version"

    const-string v6, "0.0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, currentVersion:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current version of oplmn file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$100(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSslContext:Ljavax/net/ssl/SSLContext;
    invoke-static {v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$000(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mediatek/op/telephony/OplmnUpdateUtils;->downloadOplmnFile(Ljavax/net/ssl/SSLContext;Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;)[B

    move-result-object v3

    .line 73
    .local v3, rawData:[B
    if-eqz v3, :cond_0

    .line 75
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$300(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 76
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.mediatek.oplmn.update.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v4, "com.mediatek.oplmn.update.version"

    invoke-virtual {v2}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$1;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    invoke-virtual {v2}, Lcom/mediatek/op/telephony/OplmnUpdateUtils$OplmnInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->sendOplmnFile(Ljava/lang/String;[B)V
    invoke-static {v4, v5, v3}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$400(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljava/lang/String;[B)V

    goto :goto_0
.end method
