.class public interface abstract Lcom/itextpdf/text/pdf/security/TSAClient;
.super Ljava/lang/Object;
.source "TSAClient.java"


# virtual methods
.method public abstract getDigestAlgorithm()Ljava/lang/String;
.end method

.method public abstract getTimeStampToken([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTokenSizeEstimate()I
.end method
