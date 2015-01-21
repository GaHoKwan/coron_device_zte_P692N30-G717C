.class public Ltmsdkobf/cx;
.super Ltmsdkobf/cw;
.source "SourceFile"


# static fields
.field static jq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field static jr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected jp:Ltmsdkobf/cz;

.field private js:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    sput-object v0, Ltmsdkobf/cx;->jq:Ljava/util/HashMap;

    .line 95
    sput-object v0, Ltmsdkobf/cx;->jr:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ltmsdkobf/cw;-><init>()V

    .line 16
    new-instance v0, Ltmsdkobf/cz;

    invoke-direct {v0}, Ltmsdkobf/cz;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/cx;->js:I

    .line 21
    iget-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    const/4 v1, 0x2

    iput-short v1, v0, Ltmsdkobf/cz;->jv:S

    .line 22
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "useVersion3"

    .prologue
    .line 24
    invoke-direct {p0}, Ltmsdkobf/cw;-><init>()V

    .line 16
    new-instance v0, Ltmsdkobf/cz;

    invoke-direct {v0}, Ltmsdkobf/cz;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/cx;->js:I

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Ltmsdkobf/cx;->G()V

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    const/4 v1, 0x2

    iput-short v1, v0, Ltmsdkobf/cz;->jv:S

    goto :goto_0
.end method

.method private H()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v0, Ltmsdkobf/dd;

    iget-object v1, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-object v1, v1, Ltmsdkobf/cz;->jB:[B

    invoke-direct {v0, v1}, Ltmsdkobf/dd;-><init>([B)V

    .line 128
    .local v0, _is:Ltmsdkobf/dd;
    iget-object v1, p0, Ltmsdkobf/cx;->jm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/dd;->ar(Ljava/lang/String;)I

    .line 129
    sget-object v1, Ltmsdkobf/cx;->jq:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ltmsdkobf/cx;->jq:Ljava/util/HashMap;

    .line 131
    sget-object v1, Ltmsdkobf/cx;->jq:Ljava/util/HashMap;

    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    sget-object v1, Ltmsdkobf/cx;->jq:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4, v4}, Ltmsdkobf/dd;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/cx;->jo:Ljava/util/HashMap;

    .line 134
    return-void
.end method

.method private I()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v0, Ltmsdkobf/dd;

    iget-object v2, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-object v2, v2, Ltmsdkobf/cz;->jB:[B

    invoke-direct {v0, v2}, Ltmsdkobf/dd;-><init>([B)V

    .line 160
    .local v0, _is:Ltmsdkobf/dd;
    iget-object v2, p0, Ltmsdkobf/cx;->jm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltmsdkobf/dd;->ar(Ljava/lang/String;)I

    .line 161
    sget-object v2, Ltmsdkobf/cx;->jr:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Ltmsdkobf/cx;->jr:Ljava/util/HashMap;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v1, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v2, Ltmsdkobf/cx;->jr:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1           #h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_0
    sget-object v2, Ltmsdkobf/cx;->jr:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4, v4}, Ltmsdkobf/dd;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Ltmsdkobf/cx;->jj:Ljava/util/HashMap;

    .line 168
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ltmsdkobf/cx;->jk:Ljava/util/HashMap;

    .line 169
    return-void
.end method


# virtual methods
.method public F()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 60
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-short v4, v4, Ltmsdkobf/cz;->jv:S

    if-ne v4, v7, :cond_3

    .line 61
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-object v4, v4, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-object v4, v4, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "servantName can not is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_1
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-object v4, v4, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-object v4, v4, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 65
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "funcName can not is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_3
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-object v4, v4, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 69
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    const-string v5, ""

    iput-object v5, v4, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    .line 71
    :cond_4
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-object v4, v4, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 72
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    const-string v5, ""

    iput-object v5, v4, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    .line 75
    :cond_5
    new-instance v0, Ltmsdkobf/de;

    invoke-direct {v0, v6}, Ltmsdkobf/de;-><init>(I)V

    .line 76
    .local v0, _os:Ltmsdkobf/de;
    iget-object v4, p0, Ltmsdkobf/cx;->jm:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ltmsdkobf/de;->ar(Ljava/lang/String;)I

    .line 77
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-short v4, v4, Ltmsdkobf/cz;->jv:S

    if-ne v4, v7, :cond_6

    .line 78
    iget-object v4, p0, Ltmsdkobf/cx;->jj:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Ltmsdkobf/de;->a(Ljava/util/Map;I)V

    .line 82
    :goto_0
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    invoke-virtual {v0}, Ltmsdkobf/de;->M()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Ltmsdkobf/dg;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    iput-object v5, v4, Ltmsdkobf/cz;->jB:[B

    .line 83
    new-instance v0, Ltmsdkobf/de;

    .end local v0           #_os:Ltmsdkobf/de;
    invoke-direct {v0, v6}, Ltmsdkobf/de;-><init>(I)V

    .line 84
    .restart local v0       #_os:Ltmsdkobf/de;
    iget-object v4, p0, Ltmsdkobf/cx;->jm:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ltmsdkobf/de;->ar(Ljava/lang/String;)I

    .line 86
    iget-object v4, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    invoke-virtual {v4, v0}, Ltmsdkobf/cz;->writeTo(Ltmsdkobf/de;)V

    .line 87
    invoke-virtual {v0}, Ltmsdkobf/de;->M()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/dg;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 88
    .local v1, bodys:[B
    array-length v3, v1

    .line 89
    .local v3, size:I
    add-int/lit8 v4, v3, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 90
    .local v2, buf:Ljava/nio/ByteBuffer;
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 80
    .end local v1           #bodys:[B
    .end local v2           #buf:Ljava/nio/ByteBuffer;
    .end local v3           #size:I
    :cond_6
    iget-object v4, p0, Ltmsdkobf/cx;->jo:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Ltmsdkobf/de;->a(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public G()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Ltmsdkobf/cw;->G()V

    .line 53
    iget-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    const/4 v1, 0x3

    iput-short v1, v0, Ltmsdkobf/cz;->jv:S

    .line 54
    return-void
.end method

.method public J()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget v0, v0, Ltmsdkobf/cz;->jy:I

    return v0
.end method

.method public ao(Ljava/lang/String;)V
    .locals 1
    .parameter "servantName"

    .prologue
    .line 210
    iget-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iput-object p1, v0, Ltmsdkobf/cz;->jz:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public ap(Ljava/lang/String;)V
    .locals 1
    .parameter "sFuncName"

    .prologue
    .line 228
    iget-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iput-object p1, v0, Ltmsdkobf/cz;->jA:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public as(I)V
    .locals 1
    .parameter "iRequestId"

    .prologue
    .line 246
    iget-object v0, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iput p1, v0, Ltmsdkobf/cz;->jy:I

    .line 247
    return-void
.end method

.method public b([B)V
    .locals 4
    .parameter "buffer"

    .prologue
    const/4 v3, 0x4

    .line 175
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "decode package must include size head"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    :try_start_0
    new-instance v0, Ltmsdkobf/dd;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Ltmsdkobf/dd;-><init>([BI)V

    .line 181
    .local v0, _is:Ltmsdkobf/dd;
    iget-object v2, p0, Ltmsdkobf/cx;->jm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltmsdkobf/dd;->ar(Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    invoke-virtual {v2, v0}, Ltmsdkobf/cz;->readFrom(Ltmsdkobf/dd;)V

    .line 184
    iget-object v2, p0, Ltmsdkobf/cx;->jp:Ltmsdkobf/cz;

    iget-short v2, v2, Ltmsdkobf/cz;->jv:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 185
    invoke-direct {p0}, Ltmsdkobf/cx;->H()V

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Ltmsdkobf/cx;->jo:Ljava/util/HashMap;

    .line 188
    invoke-direct {p0}, Ltmsdkobf/cx;->I()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v0           #_is:Ltmsdkobf/dd;
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, t:Ljava/lang/Object;,"TT;"
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put name can not startwith . , now is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Ltmsdkobf/cw;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method
