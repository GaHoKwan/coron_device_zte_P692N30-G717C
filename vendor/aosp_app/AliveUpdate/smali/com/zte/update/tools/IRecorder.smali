.class public interface abstract Lcom/zte/update/tools/IRecorder;
.super Ljava/lang/Object;
.source "IRecorder.java"


# virtual methods
.method public abstract initRecorder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRec()Ljava/lang/String;
.end method

.method public abstract writeRec(Ljava/lang/String;)V
.end method
