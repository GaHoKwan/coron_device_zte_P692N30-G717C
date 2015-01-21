.class public interface abstract Lcom/baidu/oauth/BaiduOAuth$OAuthListener;
.super Ljava/lang/Object;
.source "BaiduOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/BaiduOAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OAuthListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;)V
.end method

.method public abstract onException(Ljava/lang/String;)V
.end method
