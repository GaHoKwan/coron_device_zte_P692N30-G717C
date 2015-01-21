.class public Lcom/itextpdf/text/ExceptionConverter;
.super Ljava/lang/RuntimeException;
.source "ExceptionConverter.java"


# static fields
.field private static final serialVersionUID:J = 0x782614f206d87cb7L


# instance fields
.field private ex:Ljava/lang/Exception;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    iput-object p1, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    .line 74
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->prefix:Ljava/lang/String;

    .line 75
    return-void

    .line 74
    :cond_0
    const-string v0, "ExceptionConverter: "

    goto :goto_0
.end method

.method public static final convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter "ex"

    .prologue
    .line 86
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 87
    check-cast p0, Ljava/lang/RuntimeException;

    .line 89
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 159
    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ExceptionConverter;->printStackTrace(Ljava/io/PrintStream;)V

    .line 127
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 135
    monitor-enter p1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 138
    monitor-exit p1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 146
    monitor-enter p1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 149
    monitor-exit p1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/text/ExceptionConverter;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/ExceptionConverter;->ex:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
