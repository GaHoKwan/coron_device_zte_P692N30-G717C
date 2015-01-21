.class public Lcom/mediatek/encapsulation/android/net/http/EncapsulatedAndroidHttpClient;
.super Ljava/lang/Object;
.source "EncapsulatedAndroidHttpClient.java"


# instance fields
.field private mHttpClient:Landroid/net/http/AndroidHttpClient;


# direct methods
.method public constructor <init>(Landroid/net/http/AndroidHttpClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mediatek/encapsulation/android/net/http/EncapsulatedAndroidHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 15
    return-void
.end method


# virtual methods
.method public setHttpRequestRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V
    .locals 1
    .parameter "retryHandler"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/encapsulation/android/net/http/EncapsulatedAndroidHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1}, Landroid/net/http/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V

    .line 29
    return-void
.end method
