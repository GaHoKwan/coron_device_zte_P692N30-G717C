.class public final Ltmsdkobf/bi;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public ab:I

.field public dZ:I

.field public fe:Ljava/lang/String;

.field public ff:Ljava/lang/String;

.field public fg:Ljava/lang/String;

.field public fh:Ljava/lang/String;

.field public fi:Ljava/lang/String;

.field public fj:Ljava/lang/String;

.field public fk:Ljava/lang/String;

.field public fl:Ljava/lang/String;

.field public fm:S

.field public fn:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:I

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bi;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->fe:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->name:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->version:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->U:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->imsi:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->ff:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->ip:Ljava/lang/String;

    .line 35
    sget-object v0, Ltmsdkobf/w;->bq:Ltmsdkobf/w;

    invoke-virtual {v0}, Ltmsdkobf/w;->value()I

    move-result v0

    iput v0, p0, Ltmsdkobf/bi;->type:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->fg:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->fh:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->fi:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->fj:Ljava/lang/String;

    .line 45
    iput v1, p0, Ltmsdkobf/bi;->dZ:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->fk:Ljava/lang/String;

    .line 49
    iput v1, p0, Ltmsdkobf/bi;->ab:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->fl:Ljava/lang/String;

    .line 53
    iput-short v1, p0, Ltmsdkobf/bi;->fm:S

    .line 55
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->V:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bi;->fn:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Ltmsdkobf/bi;->fe:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->Q(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Ltmsdkobf/bi;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->setName(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Ltmsdkobf/bi;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->setVersion(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Ltmsdkobf/bi;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->d(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Ltmsdkobf/bi;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->q(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Ltmsdkobf/bi;->ff:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->R(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Ltmsdkobf/bi;->ip:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->S(Ljava/lang/String;)V

    .line 258
    iget v0, p0, Ltmsdkobf/bi;->type:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->setType(I)V

    .line 259
    iget-object v0, p0, Ltmsdkobf/bi;->fg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->T(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Ltmsdkobf/bi;->fh:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->U(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Ltmsdkobf/bi;->fi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->V(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Ltmsdkobf/bi;->fj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->setPhone(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Ltmsdkobf/bi;->dZ:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->x(I)V

    .line 264
    iget-object v0, p0, Ltmsdkobf/bi;->fk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->W(Ljava/lang/String;)V

    .line 265
    iget v0, p0, Ltmsdkobf/bi;->ab:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->i(I)V

    .line 266
    iget-object v0, p0, Ltmsdkobf/bi;->fl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->X(Ljava/lang/String;)V

    .line 267
    iget-short v0, p0, Ltmsdkobf/bi;->fm:S

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->b(S)V

    .line 268
    iget-object v0, p0, Ltmsdkobf/bi;->V:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->f(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Ltmsdkobf/bi;->fn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->Y(Ljava/lang/String;)V

    .line 270
    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/String;)V
    .locals 0
    .parameter "lc"

    .prologue
    .line 66
    iput-object p1, p0, Ltmsdkobf/bi;->fe:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 116
    iput-object p1, p0, Ltmsdkobf/bi;->ff:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 126
    iput-object p1, p0, Ltmsdkobf/bi;->ip:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0
    .parameter "osversion"

    .prologue
    .line 146
    iput-object p1, p0, Ltmsdkobf/bi;->fg:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0
    .parameter "machineuid"

    .prologue
    .line 156
    iput-object p1, p0, Ltmsdkobf/bi;->fh:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0
    .parameter "machineconf"

    .prologue
    .line 166
    iput-object p1, p0, Ltmsdkobf/bi;->fi:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 0
    .parameter "channelid"

    .prologue
    .line 196
    iput-object p1, p0, Ltmsdkobf/bi;->fk:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0
    .parameter "uuid"

    .prologue
    .line 216
    iput-object p1, p0, Ltmsdkobf/bi;->fl:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0
    .parameter "sdk"

    .prologue
    .line 246
    iput-object p1, p0, Ltmsdkobf/bi;->fn:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public b(S)V
    .locals 0
    .parameter "lang"

    .prologue
    .line 226
    iput-short p1, p0, Ltmsdkobf/bi;->fm:S

    .line 227
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 342
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 348
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 344
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 346
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bi;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 96
    iput-object p1, p0, Ltmsdkobf/bi;->U:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 297
    if-nez p1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 302
    check-cast v0, Ltmsdkobf/bi;

    .line 303
    .local v0, t:Ltmsdkobf/bi;
    iget-object v2, p0, Ltmsdkobf/bi;->fe:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->fe:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->name:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->version:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->U:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->U:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->imsi:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->imsi:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->ff:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->ff:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->ip:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->ip:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bi;->type:I

    iget v3, v0, Ltmsdkobf/bi;->type:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->fg:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->fg:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->fh:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->fh:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->fi:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->fi:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->fj:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->fj:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bi;->dZ:I

    iget v3, v0, Ltmsdkobf/bi;->dZ:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->fk:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->fk:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bi;->ab:I

    iget v3, v0, Ltmsdkobf/bi;->ab:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->fl:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->fl:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-short v2, p0, Ltmsdkobf/bi;->fm:S

    iget-short v3, v0, Ltmsdkobf/bi;->fm:S

    invoke-static {v2, v3}, Ltmsdkobf/dg;->a(SS)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->V:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->V:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bi;->fn:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bi;->fn:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter "guid"

    .prologue
    .line 236
    iput-object p1, p0, Ltmsdkobf/bi;->V:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 329
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    const/4 v1, 0x0

    return v1
.end method

.method public i(I)V
    .locals 0
    .parameter "isbuildin"

    .prologue
    .line 206
    iput p1, p0, Ltmsdkobf/bi;->ab:I

    .line 207
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 106
    iput-object p1, p0, Ltmsdkobf/bi;->imsi:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->Q(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->setName(Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->setVersion(Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->d(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->q(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->R(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->S(Ljava/lang/String;)V

    .line 422
    iget v0, p0, Ltmsdkobf/bi;->type:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->setType(I)V

    .line 424
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->T(Ljava/lang/String;)V

    .line 426
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->U(Ljava/lang/String;)V

    .line 428
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->V(Ljava/lang/String;)V

    .line 430
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->setPhone(Ljava/lang/String;)V

    .line 432
    iget v0, p0, Ltmsdkobf/bi;->dZ:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->x(I)V

    .line 434
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->W(Ljava/lang/String;)V

    .line 436
    iget v0, p0, Ltmsdkobf/bi;->ab:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->i(I)V

    .line 438
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->X(Ljava/lang/String;)V

    .line 440
    iget-short v0, p0, Ltmsdkobf/bi;->fm:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(SIZ)S

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->b(S)V

    .line 442
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->f(Ljava/lang/String;)V

    .line 444
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bi;->Y(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 76
    iput-object p1, p0, Ltmsdkobf/bi;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 176
    iput-object p1, p0, Ltmsdkobf/bi;->fj:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 136
    iput p1, p0, Ltmsdkobf/bi;->type:I

    .line 137
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 86
    iput-object p1, p0, Ltmsdkobf/bi;->version:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 353
    iget-object v0, p0, Ltmsdkobf/bi;->fe:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 354
    iget-object v0, p0, Ltmsdkobf/bi;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 355
    iget-object v0, p0, Ltmsdkobf/bi;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 356
    iget-object v0, p0, Ltmsdkobf/bi;->U:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 357
    iget-object v0, p0, Ltmsdkobf/bi;->imsi:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 358
    iget-object v0, p0, Ltmsdkobf/bi;->ff:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Ltmsdkobf/bi;->ff:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 362
    :cond_0
    iget-object v0, p0, Ltmsdkobf/bi;->ip:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Ltmsdkobf/bi;->ip:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 366
    :cond_1
    iget v0, p0, Ltmsdkobf/bi;->type:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 367
    iget-object v0, p0, Ltmsdkobf/bi;->fg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Ltmsdkobf/bi;->fg:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 371
    :cond_2
    iget-object v0, p0, Ltmsdkobf/bi;->fh:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Ltmsdkobf/bi;->fh:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 375
    :cond_3
    iget-object v0, p0, Ltmsdkobf/bi;->fi:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Ltmsdkobf/bi;->fi:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 379
    :cond_4
    iget-object v0, p0, Ltmsdkobf/bi;->fj:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Ltmsdkobf/bi;->fj:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 383
    :cond_5
    iget v0, p0, Ltmsdkobf/bi;->dZ:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 384
    iget-object v0, p0, Ltmsdkobf/bi;->fk:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 386
    iget-object v0, p0, Ltmsdkobf/bi;->fk:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 388
    :cond_6
    iget v0, p0, Ltmsdkobf/bi;->ab:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 389
    iget-object v0, p0, Ltmsdkobf/bi;->fl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 391
    iget-object v0, p0, Ltmsdkobf/bi;->fl:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 393
    :cond_7
    iget-short v0, p0, Ltmsdkobf/bi;->fm:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(SI)V

    .line 394
    iget-object v0, p0, Ltmsdkobf/bi;->V:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 396
    iget-object v0, p0, Ltmsdkobf/bi;->V:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 398
    :cond_8
    iget-object v0, p0, Ltmsdkobf/bi;->fn:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 400
    iget-object v0, p0, Ltmsdkobf/bi;->fn:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 402
    :cond_9
    return-void
.end method

.method public x(I)V
    .locals 0
    .parameter "subplatform"

    .prologue
    .line 186
    iput p1, p0, Ltmsdkobf/bi;->dZ:I

    .line 187
    return-void
.end method
