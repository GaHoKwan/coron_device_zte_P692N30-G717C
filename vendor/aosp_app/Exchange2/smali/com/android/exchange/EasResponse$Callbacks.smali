.class public interface abstract Lcom/android/exchange/EasResponse$Callbacks;
.super Ljava/lang/Object;
.source "EasResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract fromHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
