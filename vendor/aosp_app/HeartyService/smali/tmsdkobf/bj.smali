.class public final Ltmsdkobf/bj;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public U:Ljava/lang/String;

.field public fe:Ljava/lang/String;

.field public ff:Ljava/lang/String;

.field public fj:Ljava/lang/String;

.field public fo:I

.field public fp:I

.field public fq:I

.field public imsi:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bj;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bj;->U:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bj;->ff:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bj;->fj:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bj;->ip:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bj;->fe:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bj;->imsi:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bj;->version:Ljava/lang/String;

    .line 35
    iput v1, p0, Ltmsdkobf/bj;->fo:I

    .line 37
    iput v1, p0, Ltmsdkobf/bj;->fp:I

    .line 39
    iput v1, p0, Ltmsdkobf/bj;->fq:I

    .line 143
    iget-object v0, p0, Ltmsdkobf/bj;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->d(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Ltmsdkobf/bj;->ff:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->R(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Ltmsdkobf/bj;->fj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->setPhone(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Ltmsdkobf/bj;->ip:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->S(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Ltmsdkobf/bj;->fe:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->Q(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Ltmsdkobf/bj;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->q(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Ltmsdkobf/bj;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->setVersion(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Ltmsdkobf/bj;->fo:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->O(I)V

    .line 151
    iget v0, p0, Ltmsdkobf/bj;->fp:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->P(I)V

    .line 152
    iget v0, p0, Ltmsdkobf/bj;->fq:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->Q(I)V

    .line 153
    return-void
.end method


# virtual methods
.method public O(I)V
    .locals 0
    .parameter "buildno"

    .prologue
    .line 118
    iput p1, p0, Ltmsdkobf/bj;->fo:I

    .line 119
    return-void
.end method

.method public P(I)V
    .locals 0
    .parameter "productid"

    .prologue
    .line 128
    iput p1, p0, Ltmsdkobf/bj;->fp:I

    .line 129
    return-void
.end method

.method public Q(I)V
    .locals 0
    .parameter "ruletime"

    .prologue
    .line 138
    iput p1, p0, Ltmsdkobf/bj;->fq:I

    .line 139
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0
    .parameter "lc"

    .prologue
    .line 88
    iput-object p1, p0, Ltmsdkobf/bj;->fe:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 58
    iput-object p1, p0, Ltmsdkobf/bj;->ff:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 78
    iput-object p1, p0, Ltmsdkobf/bj;->ip:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 207
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 209
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 211
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bj;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 48
    iput-object p1, p0, Ltmsdkobf/bj;->U:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 176
    check-cast v0, Ltmsdkobf/bj;

    .line 177
    .local v0, t:Ltmsdkobf/bj;
    iget-object v2, p0, Ltmsdkobf/bj;->U:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bj;->U:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bj;->ff:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bj;->ff:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bj;->fj:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bj;->fj:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bj;->ip:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bj;->ip:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bj;->fe:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bj;->fe:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bj;->imsi:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bj;->imsi:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bj;->version:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bj;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bj;->fo:I

    iget v3, v0, Ltmsdkobf/bj;->fo:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bj;->fp:I

    iget v3, v0, Ltmsdkobf/bj;->fp:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bj;->fq:I

    iget v3, v0, Ltmsdkobf/bj;->fq:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 194
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v1, 0x0

    return v1
.end method

.method public q(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 98
    iput-object p1, p0, Ltmsdkobf/bj;->imsi:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->d(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v1, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->R(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->setPhone(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->S(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->Q(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->q(Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->setVersion(Ljava/lang/String;)V

    .line 265
    iget v0, p0, Ltmsdkobf/bj;->fo:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->O(I)V

    .line 267
    iget v0, p0, Ltmsdkobf/bj;->fp:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->P(I)V

    .line 269
    iget v0, p0, Ltmsdkobf/bj;->fq:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bj;->Q(I)V

    .line 271
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 68
    iput-object p1, p0, Ltmsdkobf/bj;->fj:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 108
    iput-object p1, p0, Ltmsdkobf/bj;->version:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 218
    iget-object v0, p0, Ltmsdkobf/bj;->U:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 219
    iget-object v0, p0, Ltmsdkobf/bj;->ff:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Ltmsdkobf/bj;->ff:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 223
    :cond_0
    iget-object v0, p0, Ltmsdkobf/bj;->fj:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Ltmsdkobf/bj;->fj:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 227
    :cond_1
    iget-object v0, p0, Ltmsdkobf/bj;->ip:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Ltmsdkobf/bj;->ip:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 231
    :cond_2
    iget-object v0, p0, Ltmsdkobf/bj;->fe:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Ltmsdkobf/bj;->fe:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 235
    :cond_3
    iget-object v0, p0, Ltmsdkobf/bj;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Ltmsdkobf/bj;->imsi:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 239
    :cond_4
    iget-object v0, p0, Ltmsdkobf/bj;->version:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Ltmsdkobf/bj;->version:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 243
    :cond_5
    iget v0, p0, Ltmsdkobf/bj;->fo:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 244
    iget v0, p0, Ltmsdkobf/bj;->fp:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 245
    iget v0, p0, Ltmsdkobf/bj;->fq:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 246
    return-void
.end method
