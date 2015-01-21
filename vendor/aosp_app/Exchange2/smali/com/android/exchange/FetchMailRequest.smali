.class public Lcom/android/exchange/FetchMailRequest;
.super Lcom/android/exchange/Request;
.source "FetchMailRequest.java"


# direct methods
.method constructor <init>(J)V
    .locals 0
    .parameter "messageId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/Request;-><init>(J)V

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 68
    instance-of v1, p1, Lcom/android/exchange/FetchMailRequest;

    if-nez v1, :cond_1

    .line 71
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/exchange/FetchMailRequest;

    .end local p1
    iget-wide v1, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v3, p0, Lcom/android/exchange/Request;->mMessageId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/exchange/Request;->mMessageId:J

    long-to-int v0, v0

    return v0
.end method
