.class public final Lcom/itextpdf/text/log/NoOpLogger;
.super Ljava/lang/Object;
.source "NoOpLogger.java"

# interfaces
.implements Lcom/itextpdf/text/log/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 76
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 101
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "e"

    .prologue
    .line 88
    return-void
.end method

.method public getLogger(Ljava/lang/Class;)Lcom/itextpdf/text/log/Logger;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/itextpdf/text/log/Logger;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, name:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-object p0
.end method

.method public getLogger(Ljava/lang/String;)Lcom/itextpdf/text/log/Logger;
    .locals 0
    .parameter "name"

    .prologue
    .line 107
    return-object p0
.end method

.method public info(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 82
    return-void
.end method

.method public isLogging(Lcom/itextpdf/text/log/Level;)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 70
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 64
    return-void
.end method
