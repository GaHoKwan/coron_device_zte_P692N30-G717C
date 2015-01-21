.class public Lcom/itextpdf/text/log/SysoLogger;
.super Ljava/lang/Object;
.source "SysoLogger.java"

# interfaces
.implements Lcom/itextpdf/text/log/Logger;


# instance fields
.field private name:Ljava/lang/String;

.field private final shorten:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/text/log/SysoLogger;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "packageReduce"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/itextpdf/text/log/SysoLogger;->shorten:I

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "klass"
    .parameter "shorten"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcom/itextpdf/text/log/SysoLogger;->shorten:I

    .line 76
    iput-object p1, p0, Lcom/itextpdf/text/log/SysoLogger;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private shorten(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "className"

    .prologue
    const/16 v5, 0x2e

    .line 103
    iget v4, p0, Lcom/itextpdf/text/log/SysoLogger;->shorten:I

    if-eqz v4, :cond_2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v3, target:Ljava/lang/StringBuilder;
    move-object v1, p1

    .line 106
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 107
    .local v0, fromIndex:I
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 108
    iget v4, p0, Lcom/itextpdf/text/log/SysoLogger;->shorten:I

    if-ge v0, v4, :cond_0

    move v2, v0

    .line 109
    .local v2, parseTo:I
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 113
    goto :goto_0

    .line 108
    .end local v2           #parseTo:I
    :cond_0
    iget v2, p0, Lcom/itextpdf/text/log/SysoLogger;->shorten:I

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    .end local v0           #fromIndex:I
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #target:Ljava/lang/StringBuilder;
    .end local p1
    :cond_2
    return-object p1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 125
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%s DEBUG %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/text/log/SysoLogger;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/itextpdf/text/log/SysoLogger;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 133
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%s ERROR %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/text/log/SysoLogger;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .parameter "message"
    .parameter "e"

    .prologue
    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%s ERROR %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/text/log/SysoLogger;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 139
    return-void
.end method

.method public getLogger(Ljava/lang/Class;)Lcom/itextpdf/text/log/Logger;
    .locals 3
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
    .line 80
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/itextpdf/text/log/SysoLogger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/log/SysoLogger;->shorten:I

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/log/SysoLogger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lcom/itextpdf/text/log/Logger;
    .locals 3
    .parameter "name"

    .prologue
    .line 87
    new-instance v0, Lcom/itextpdf/text/log/SysoLogger;

    const-string v1, "[itext]"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/log/SysoLogger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%s INFO  %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/text/log/SysoLogger;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/itextpdf/text/log/SysoLogger;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public isLogging(Lcom/itextpdf/text/log/Level;)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%s TRACE %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/text/log/SysoLogger;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/itextpdf/text/log/SysoLogger;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%s WARN  %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/text/log/SysoLogger;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/itextpdf/text/log/SysoLogger;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    return-void
.end method
