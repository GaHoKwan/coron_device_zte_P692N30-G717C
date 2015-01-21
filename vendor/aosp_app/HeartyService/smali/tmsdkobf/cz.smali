.class public final Ltmsdkobf/cz;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static final synthetic N:Z

.field static jF:[B

.field static jG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public jA:Ljava/lang/String;

.field public jB:[B

.field public jC:I

.field public jD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jv:S

.field public jw:B

.field public jx:I

.field public jy:I

.field public jz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    const-class v0, Ltmsdkobf/cz;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/cz;->N:Z

    .line 90
    sput-object v1, Ltmsdkobf/cz;->jF:[B

    .line 91
    sput-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 7
    iput-short v0, p0, Ltmsdkobf/cz;->jv:S

    .line 9
    iput-byte v0, p0, Ltmsdkobf/cz;->jw:B

    .line 11
    iput v0, p0, Ltmsdkobf/cz;->jx:I

    .line 13
    iput v0, p0, Ltmsdkobf/cz;->jy:I

    .line 15
    iput-object v1, p0, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    .line 21
    iput v0, p0, Ltmsdkobf/cz;->jC:I

    .line 29
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 66
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 68
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/cz;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    .line 47
    move-object v0, p1

    check-cast v0, Ltmsdkobf/cz;

    .line 48
    .local v0, t:Ltmsdkobf/cz;
    iget-short v2, v0, Ltmsdkobf/cz;->jv:S

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-byte v2, v0, Ltmsdkobf/cz;->jw:B

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Ltmsdkobf/cz;->jx:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Ltmsdkobf/cz;->jy:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Ltmsdkobf/cz;->jB:[B

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Ltmsdkobf/cz;->jC:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Ltmsdkobf/cz;->jD:Ljava/util/Map;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Ltmsdkobf/cz;->jE:Ljava/util/Map;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    .line 96
    :try_start_0
    iget-short v1, p0, Ltmsdkobf/cz;->jv:S

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(SIZ)S

    move-result v1

    iput-short v1, p0, Ltmsdkobf/cz;->jv:S

    .line 97
    iget-byte v1, p0, Ltmsdkobf/cz;->jw:B

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v1

    iput-byte v1, p0, Ltmsdkobf/cz;->jw:B

    .line 98
    iget v1, p0, Ltmsdkobf/cz;->jx:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/cz;->jx:I

    .line 99
    iget v1, p0, Ltmsdkobf/cz;->jy:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/cz;->jy:I

    .line 100
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    .line 101
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    .line 102
    sget-object v1, Ltmsdkobf/cz;->jF:[B

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    sput-object v1, Ltmsdkobf/cz;->jF:[B

    .line 105
    :cond_0
    sget-object v1, Ltmsdkobf/cz;->jF:[B

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a([BIZ)[B

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ltmsdkobf/cz;->jB:[B

    .line 106
    iget v1, p0, Ltmsdkobf/cz;->jC:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/cz;->jC:I

    .line 107
    sget-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    .line 109
    sget-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    sget-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Ltmsdkobf/cz;->jD:Ljava/util/Map;

    .line 112
    sget-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    .line 114
    sget-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    sget-object v1, Ltmsdkobf/cz;->jG:Ljava/util/Map;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Ltmsdkobf/cz;->jE:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestPacket decode error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltmsdkobf/cz;->jB:[B

    invoke-static {v3}, Ltmsdkobf/cy;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 77
    iget-short v0, p0, Ltmsdkobf/cz;->jv:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(SI)V

    .line 78
    iget-byte v0, p0, Ltmsdkobf/cz;->jw:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->b(BI)V

    .line 79
    iget v0, p0, Ltmsdkobf/cz;->jx:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 80
    iget v0, p0, Ltmsdkobf/cz;->jy:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 81
    iget-object v0, p0, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Ltmsdkobf/cz;->jB:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a([BI)V

    .line 84
    iget v0, p0, Ltmsdkobf/cz;->jC:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 85
    iget-object v0, p0, Ltmsdkobf/cz;->jD:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Map;I)V

    .line 86
    iget-object v0, p0, Ltmsdkobf/cz;->jE:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Map;I)V

    .line 88
    return-void
.end method
