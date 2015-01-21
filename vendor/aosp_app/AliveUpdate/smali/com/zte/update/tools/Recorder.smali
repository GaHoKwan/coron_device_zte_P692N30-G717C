.class public Lcom/zte/update/tools/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"


# static fields
.field private static rec:Lcom/zte/update/tools/IRecorder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initRec(Lcom/zte/update/tools/IRecorder;)V
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    sput-object p0, Lcom/zte/update/tools/Recorder;->rec:Lcom/zte/update/tools/IRecorder;

    .line 25
    sget-object v0, Lcom/zte/update/tools/Recorder;->rec:Lcom/zte/update/tools/IRecorder;

    invoke-interface {v0}, Lcom/zte/update/tools/IRecorder;->initRecorder()V

    .line 26
    return-void
.end method

.method public static readRec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/zte/update/tools/Recorder;->rec:Lcom/zte/update/tools/IRecorder;

    invoke-interface {v0}, Lcom/zte/update/tools/IRecorder;->readRec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeRec(Ljava/lang/String;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 29
    sget-object v0, Lcom/zte/update/tools/Recorder;->rec:Lcom/zte/update/tools/IRecorder;

    invoke-interface {v0, p0}, Lcom/zte/update/tools/IRecorder;->writeRec(Ljava/lang/String;)V

    .line 30
    return-void
.end method
