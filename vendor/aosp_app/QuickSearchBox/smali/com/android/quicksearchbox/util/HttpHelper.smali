.class public interface abstract Lcom/android/quicksearchbox/util/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;,
        Lcom/android/quicksearchbox/util/HttpHelper$HttpException;,
        Lcom/android/quicksearchbox/util/HttpHelper$PostRequest;,
        Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;
    }
.end annotation


# virtual methods
.method public abstract get(Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation
.end method

.method public abstract post(Lcom/android/quicksearchbox/util/HttpHelper$PostRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation
.end method

.method public abstract setConnectTimeout(I)V
.end method

.method public abstract setReadTimeout(I)V
.end method
