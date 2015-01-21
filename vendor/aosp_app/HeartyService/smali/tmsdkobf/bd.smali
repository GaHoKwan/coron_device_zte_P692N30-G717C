.class public final Ltmsdkobf/bd;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static eS:Ltmsdkobf/cq;

.field static eu:Ltmsdkobf/co;


# instance fields
.field public eF:I

.field public eI:Ljava/lang/String;

.field public eJ:Ljava/lang/String;

.field public eK:Ljava/lang/String;

.field public eL:I

.field public eM:I

.field public eN:Ljava/lang/String;

.field public eO:I

.field public eP:Z

.field public eQ:Ljava/lang/String;

.field public eR:Ltmsdkobf/cq;

.field public es:I

.field public et:Ltmsdkobf/co;

.field public sender:Ljava/lang/String;

.field public sms:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bd;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput v1, p0, Ltmsdkobf/bd;->eF:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bd;->sender:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bd;->sms:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bd;->eI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bd;->eJ:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bd;->eK:Ljava/lang/String;

    .line 33
    iput v1, p0, Ltmsdkobf/bd;->eL:I

    .line 35
    iput v1, p0, Ltmsdkobf/bd;->eM:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bd;->eN:Ljava/lang/String;

    .line 39
    iput v1, p0, Ltmsdkobf/bd;->eO:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/bd;->eP:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bd;->eQ:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Ltmsdkobf/bd;->eR:Ltmsdkobf/cq;

    .line 47
    iput v1, p0, Ltmsdkobf/bd;->es:I

    .line 49
    iput-object v2, p0, Ltmsdkobf/bd;->et:Ltmsdkobf/co;

    .line 203
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZLjava/lang/String;Ltmsdkobf/cq;ILtmsdkobf/co;)V
    .locals 2
    .parameter "ntime"
    .parameter "sender"
    .parameter "sms"
    .parameter "strarea"
    .parameter "strsimtype"
    .parameter "strqueryorder"
    .parameter "nrework"
    .parameter "ntrafficnum"
    .parameter "strHardInfo"
    .parameter "nCollocateNum"
    .parameter "bAuto"
    .parameter "strversion"
    .parameter "stateinfo"
    .parameter "nSys"
    .parameter "additionalInfo"

    .prologue
    .line 206
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Ltmsdkobf/bd;->eF:I

    .line 23
    const-string v1, ""

    iput-object v1, p0, Ltmsdkobf/bd;->sender:Ljava/lang/String;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Ltmsdkobf/bd;->sms:Ljava/lang/String;

    .line 27
    const-string v1, ""

    iput-object v1, p0, Ltmsdkobf/bd;->eI:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Ltmsdkobf/bd;->eJ:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Ltmsdkobf/bd;->eK:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Ltmsdkobf/bd;->eL:I

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Ltmsdkobf/bd;->eM:I

    .line 37
    const-string v1, ""

    iput-object v1, p0, Ltmsdkobf/bd;->eN:Ljava/lang/String;

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Ltmsdkobf/bd;->eO:I

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltmsdkobf/bd;->eP:Z

    .line 43
    const-string v1, ""

    iput-object v1, p0, Ltmsdkobf/bd;->eQ:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Ltmsdkobf/bd;->eR:Ltmsdkobf/cq;

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Ltmsdkobf/bd;->es:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Ltmsdkobf/bd;->et:Ltmsdkobf/co;

    .line 207
    iput p1, p0, Ltmsdkobf/bd;->eF:I

    .line 208
    iput-object p2, p0, Ltmsdkobf/bd;->sender:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Ltmsdkobf/bd;->sms:Ljava/lang/String;

    .line 210
    iput-object p4, p0, Ltmsdkobf/bd;->eI:Ljava/lang/String;

    .line 211
    iput-object p5, p0, Ltmsdkobf/bd;->eJ:Ljava/lang/String;

    .line 212
    iput-object p6, p0, Ltmsdkobf/bd;->eK:Ljava/lang/String;

    .line 213
    iput p7, p0, Ltmsdkobf/bd;->eL:I

    .line 214
    iput p8, p0, Ltmsdkobf/bd;->eM:I

    .line 215
    iput-object p9, p0, Ltmsdkobf/bd;->eN:Ljava/lang/String;

    .line 216
    iput p10, p0, Ltmsdkobf/bd;->eO:I

    .line 217
    iput-boolean p11, p0, Ltmsdkobf/bd;->eP:Z

    .line 218
    iput-object p12, p0, Ltmsdkobf/bd;->eQ:Ljava/lang/String;

    .line 219
    iput-object p13, p0, Ltmsdkobf/bd;->eR:Ltmsdkobf/cq;

    .line 220
    move/from16 v0, p14

    iput v0, p0, Ltmsdkobf/bd;->es:I

    .line 221
    move-object/from16 v0, p15

    iput-object v0, p0, Ltmsdkobf/bd;->et:Ltmsdkobf/co;

    .line 222
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 267
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 273
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 269
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 271
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bd;->N:Z

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

    .line 226
    if-nez p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 231
    check-cast v0, Ltmsdkobf/bd;

    .line 232
    .local v0, t:Ltmsdkobf/bd;
    iget v2, p0, Ltmsdkobf/bd;->eF:I

    iget v3, v0, Ltmsdkobf/bd;->eF:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->sender:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bd;->sender:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->sms:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bd;->sms:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->eI:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bd;->eI:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->eJ:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bd;->eJ:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->eK:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bd;->eK:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bd;->eL:I

    iget v3, v0, Ltmsdkobf/bd;->eL:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bd;->eM:I

    iget v3, v0, Ltmsdkobf/bd;->eM:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->eN:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bd;->eN:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bd;->eO:I

    iget v3, v0, Ltmsdkobf/bd;->eO:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ltmsdkobf/bd;->eP:Z

    iget-boolean v3, v0, Ltmsdkobf/bd;->eP:Z

    invoke-static {v2, v3}, Ltmsdkobf/dg;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->eQ:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bd;->eQ:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->eR:Ltmsdkobf/cq;

    iget-object v3, v0, Ltmsdkobf/bd;->eR:Ltmsdkobf/cq;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bd;->es:I

    iget v3, v0, Ltmsdkobf/bd;->es:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bd;->et:Ltmsdkobf/co;

    iget-object v3, v0, Ltmsdkobf/bd;->et:Ltmsdkobf/co;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 254
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    iget v0, p0, Ltmsdkobf/bd;->eF:I

    invoke-virtual {p1, v0, v2, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bd;->eF:I

    .line 322
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bd;->sender:Ljava/lang/String;

    .line 323
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bd;->sms:Ljava/lang/String;

    .line 324
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bd;->eI:Ljava/lang/String;

    .line 325
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bd;->eJ:Ljava/lang/String;

    .line 326
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bd;->eK:Ljava/lang/String;

    .line 327
    iget v0, p0, Ltmsdkobf/bd;->eL:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bd;->eL:I

    .line 328
    iget v0, p0, Ltmsdkobf/bd;->eM:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bd;->eM:I

    .line 329
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bd;->eN:Ljava/lang/String;

    .line 330
    iget v0, p0, Ltmsdkobf/bd;->eO:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bd;->eO:I

    .line 331
    iget-boolean v0, p0, Ltmsdkobf/bd;->eP:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Ltmsdkobf/bd;->eP:Z

    .line 332
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bd;->eQ:Ljava/lang/String;

    .line 333
    sget-object v0, Ltmsdkobf/bd;->eS:Ltmsdkobf/cq;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ltmsdkobf/cq;

    invoke-direct {v0}, Ltmsdkobf/cq;-><init>()V

    sput-object v0, Ltmsdkobf/bd;->eS:Ltmsdkobf/cq;

    .line 337
    :cond_0
    sget-object v0, Ltmsdkobf/bd;->eS:Ltmsdkobf/cq;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/cq;

    iput-object v0, p0, Ltmsdkobf/bd;->eR:Ltmsdkobf/cq;

    .line 338
    iget v0, p0, Ltmsdkobf/bd;->es:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bd;->es:I

    .line 339
    sget-object v0, Ltmsdkobf/bd;->eu:Ltmsdkobf/co;

    if-nez v0, :cond_1

    .line 341
    new-instance v0, Ltmsdkobf/co;

    invoke-direct {v0}, Ltmsdkobf/co;-><init>()V

    sput-object v0, Ltmsdkobf/bd;->eu:Ltmsdkobf/co;

    .line 343
    :cond_1
    sget-object v0, Ltmsdkobf/bd;->eu:Ltmsdkobf/co;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/co;

    iput-object v0, p0, Ltmsdkobf/bd;->et:Ltmsdkobf/co;

    .line 344
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 278
    iget v0, p0, Ltmsdkobf/bd;->eF:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 279
    iget-object v0, p0, Ltmsdkobf/bd;->sender:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 280
    iget-object v0, p0, Ltmsdkobf/bd;->sms:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 281
    iget-object v0, p0, Ltmsdkobf/bd;->eI:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Ltmsdkobf/bd;->eI:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 285
    :cond_0
    iget-object v0, p0, Ltmsdkobf/bd;->eJ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Ltmsdkobf/bd;->eJ:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 289
    :cond_1
    iget-object v0, p0, Ltmsdkobf/bd;->eK:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Ltmsdkobf/bd;->eK:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 293
    :cond_2
    iget v0, p0, Ltmsdkobf/bd;->eL:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 294
    iget v0, p0, Ltmsdkobf/bd;->eM:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 295
    iget-object v0, p0, Ltmsdkobf/bd;->eN:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Ltmsdkobf/bd;->eN:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 299
    :cond_3
    iget v0, p0, Ltmsdkobf/bd;->eO:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 300
    iget-boolean v0, p0, Ltmsdkobf/bd;->eP:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(ZI)V

    .line 301
    iget-object v0, p0, Ltmsdkobf/bd;->eQ:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Ltmsdkobf/bd;->eQ:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 305
    :cond_4
    iget-object v0, p0, Ltmsdkobf/bd;->eR:Ltmsdkobf/cq;

    if-eqz v0, :cond_5

    .line 307
    iget-object v0, p0, Ltmsdkobf/bd;->eR:Ltmsdkobf/cq;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 309
    :cond_5
    iget v0, p0, Ltmsdkobf/bd;->es:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 310
    iget-object v0, p0, Ltmsdkobf/bd;->et:Ltmsdkobf/co;

    if-eqz v0, :cond_6

    .line 312
    iget-object v0, p0, Ltmsdkobf/bd;->et:Ltmsdkobf/co;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 314
    :cond_6
    return-void
.end method
