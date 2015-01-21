.class public final Ltmsdkobf/s;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static aU:[B


# instance fields
.field public aO:Ljava/lang/String;

.field public aP:Ljava/lang/String;

.field public aS:I

.field public aT:Ljava/lang/String;

.field public d:I

.field public data:[B

.field public size:I

.field public u:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/s;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/s;->aO:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/s;->aP:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdkobf/s;->d:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/s;->url:Ljava/lang/String;

    .line 29
    iput v1, p0, Ltmsdkobf/s;->aS:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/s;->aT:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/s;->data:[B

    .line 35
    iput v1, p0, Ltmsdkobf/s;->u:I

    .line 37
    iput v1, p0, Ltmsdkobf/s;->size:I

    .line 131
    iget-object v0, p0, Ltmsdkobf/s;->aO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->n(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Ltmsdkobf/s;->aP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->o(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Ltmsdkobf/s;->d:I

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->m(I)V

    .line 134
    iget-object v0, p0, Ltmsdkobf/s;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->setUrl(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Ltmsdkobf/s;->aS:I

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->p(I)V

    .line 136
    iget-object v0, p0, Ltmsdkobf/s;->aT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->p(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Ltmsdkobf/s;->data:[B

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->setData([B)V

    .line 138
    iget v0, p0, Ltmsdkobf/s;->u:I

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->q(I)V

    .line 139
    iget v0, p0, Ltmsdkobf/s;->size:I

    invoke-virtual {p0, v0}, Ltmsdkobf/s;->setSize(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 192
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 194
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 196
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/s;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 162
    check-cast v0, Ltmsdkobf/s;

    .line 163
    .local v0, t:Ltmsdkobf/s;
    iget-object v2, p0, Ltmsdkobf/s;->aO:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/s;->aO:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/s;->aP:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/s;->aP:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/s;->d:I

    iget v3, v0, Ltmsdkobf/s;->d:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/s;->url:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/s;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/s;->aS:I

    iget v3, v0, Ltmsdkobf/s;->aS:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/s;->aT:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/s;->aT:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/s;->data:[B

    iget-object v3, v0, Ltmsdkobf/s;->data:[B

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/s;->u:I

    iget v3, v0, Ltmsdkobf/s;->u:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/s;->size:I

    iget v3, v0, Ltmsdkobf/s;->size:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ltmsdkobf/s;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 179
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    const/4 v1, 0x0

    return v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ltmsdkobf/s;->aO:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltmsdkobf/s;->aP:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Ltmsdkobf/s;->aS:I

    return v0
.end method

.method public m(I)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 66
    iput p1, p0, Ltmsdkobf/s;->d:I

    .line 67
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ltmsdkobf/s;->aT:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 46
    iput-object p1, p0, Ltmsdkobf/s;->aO:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .parameter "checksum"

    .prologue
    .line 56
    iput-object p1, p0, Ltmsdkobf/s;->aP:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public p(I)V
    .locals 0
    .parameter "isincreupdate"

    .prologue
    .line 86
    iput p1, p0, Ltmsdkobf/s;->aS:I

    .line 87
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0
    .parameter "iuchecksum"

    .prologue
    .line 96
    iput-object p1, p0, Ltmsdkobf/s;->aT:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public q(I)V
    .locals 0
    .parameter "rnum"

    .prologue
    .line 116
    iput p1, p0, Ltmsdkobf/s;->u:I

    .line 117
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 5
    .parameter "_is"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-virtual {p1, v3, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->n(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v4, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->o(Ljava/lang/String;)V

    .line 228
    iget v1, p0, Ltmsdkobf/s;->d:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->m(I)V

    .line 230
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->setUrl(Ljava/lang/String;)V

    .line 232
    iget v1, p0, Ltmsdkobf/s;->aS:I

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->p(I)V

    .line 234
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->p(Ljava/lang/String;)V

    .line 236
    sget-object v1, Ltmsdkobf/s;->aU:[B

    if-nez v1, :cond_0

    .line 238
    new-array v1, v4, [B

    check-cast v1, [B

    sput-object v1, Ltmsdkobf/s;->aU:[B

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, __var_11:B
    sget-object v1, Ltmsdkobf/s;->aU:[B

    check-cast v1, [B

    aput-byte v0, v1, v3

    .line 242
    .end local v0           #__var_11:B
    :cond_0
    sget-object v1, Ltmsdkobf/s;->aU:[B

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a([BIZ)[B

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->setData([B)V

    .line 244
    iget v1, p0, Ltmsdkobf/s;->u:I

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->q(I)V

    .line 246
    iget v1, p0, Ltmsdkobf/s;->size:I

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/s;->setSize(I)V

    .line 248
    return-void
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 106
    iput-object p1, p0, Ltmsdkobf/s;->data:[B

    .line 107
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 126
    iput p1, p0, Ltmsdkobf/s;->size:I

    .line 127
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 76
    iput-object p1, p0, Ltmsdkobf/s;->url:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 203
    iget-object v0, p0, Ltmsdkobf/s;->aO:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 204
    iget-object v0, p0, Ltmsdkobf/s;->aP:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 205
    iget v0, p0, Ltmsdkobf/s;->d:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 206
    iget-object v0, p0, Ltmsdkobf/s;->url:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 207
    iget v0, p0, Ltmsdkobf/s;->aS:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 208
    iget-object v0, p0, Ltmsdkobf/s;->aT:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Ltmsdkobf/s;->aT:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 212
    :cond_0
    iget-object v0, p0, Ltmsdkobf/s;->data:[B

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Ltmsdkobf/s;->data:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a([BI)V

    .line 216
    :cond_1
    iget v0, p0, Ltmsdkobf/s;->u:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 217
    iget v0, p0, Ltmsdkobf/s;->size:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 218
    return-void
.end method
