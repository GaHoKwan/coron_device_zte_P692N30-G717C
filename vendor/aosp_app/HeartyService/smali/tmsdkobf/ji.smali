.class public final Ltmsdkobf/ji;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static jF:[B


# instance fields
.field public jB:[B

.field public tb:B

.field public tc:Ljava/lang/String;

.field public td:Ljava/lang/String;

.field public te:Ljava/lang/String;

.field public tf:Ljava/lang/String;

.field public tg:I

.field public th:Ljava/lang/String;

.field public ti:Ljava/lang/String;

.field public tj:B

.field public tk:B

.field public tl:Ljava/lang/String;

.field public tm:Ljava/lang/String;

.field public tn:Ljava/lang/String;

.field public to:B

.field public tp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/ji;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/ji;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput-byte v1, p0, Ltmsdkobf/ji;->tb:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->tc:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->td:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->te:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->tf:Ljava/lang/String;

    .line 31
    iput v1, p0, Ltmsdkobf/ji;->tg:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/ji;->jB:[B

    .line 35
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->th:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    .line 39
    iput-byte v1, p0, Ltmsdkobf/ji;->tj:B

    .line 41
    iput-byte v1, p0, Ltmsdkobf/ji;->tk:B

    .line 43
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    .line 49
    iput-byte v1, p0, Ltmsdkobf/ji;->to:B

    .line 51
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    .line 215
    iget-byte v0, p0, Ltmsdkobf/ji;->tb:B

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->b(B)V

    .line 216
    iget-object v0, p0, Ltmsdkobf/ji;->tc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->br(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Ltmsdkobf/ji;->td:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->bs(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Ltmsdkobf/ji;->te:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->bt(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Ltmsdkobf/ji;->tf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->bu(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Ltmsdkobf/ji;->tg:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->ba(I)V

    .line 221
    iget-object v0, p0, Ltmsdkobf/ji;->jB:[B

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->m([B)V

    .line 222
    iget-object v0, p0, Ltmsdkobf/ji;->th:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->bv(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->bw(Ljava/lang/String;)V

    .line 224
    iget-byte v0, p0, Ltmsdkobf/ji;->tj:B

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->c(B)V

    .line 225
    iget-byte v0, p0, Ltmsdkobf/ji;->tk:B

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->d(B)V

    .line 226
    iget-object v0, p0, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->bx(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->by(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->bz(Ljava/lang/String;)V

    .line 229
    iget-byte v0, p0, Ltmsdkobf/ji;->to:B

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->e(B)V

    .line 230
    iget-object v0, p0, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ji;->bA(Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method public final b(B)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-byte p1, p0, Ltmsdkobf/ji;->tb:B

    .line 61
    return-void
.end method

.method public final bA(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public final ba(I)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput p1, p0, Ltmsdkobf/ji;->tg:I

    .line 111
    return-void
.end method

.method public final br(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Ltmsdkobf/ji;->tc:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final bs(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Ltmsdkobf/ji;->td:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final bt(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Ltmsdkobf/ji;->te:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public final bu(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Ltmsdkobf/ji;->tf:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public final bv(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Ltmsdkobf/ji;->th:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public final bw(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public final bx(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public final by(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public final bz(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public final c(B)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-byte p1, p0, Ltmsdkobf/ji;->tj:B

    .line 151
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 297
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :cond_0
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    sget-boolean v1, Ltmsdkobf/ji;->N:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final d(B)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-byte p1, p0, Ltmsdkobf/ji;->tk:B

    .line 161
    return-void
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 390
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 391
    iget-byte v1, p0, Ltmsdkobf/ji;->tb:B

    const-string v2, "platformId"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(BLjava/lang/String;)Ltmsdkobf/db;

    .line 392
    iget-object v1, p0, Ltmsdkobf/ji;->tc:Ljava/lang/String;

    const-string v2, "productId"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 393
    iget-object v1, p0, Ltmsdkobf/ji;->td:Ljava/lang/String;

    const-string v2, "productVersion"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 394
    iget-object v1, p0, Ltmsdkobf/ji;->te:Ljava/lang/String;

    const-string v2, "sdkId"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 395
    iget-object v1, p0, Ltmsdkobf/ji;->tf:Ljava/lang/String;

    const-string v2, "sdkVersion"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 396
    iget v1, p0, Ltmsdkobf/ji;->tg:I

    const-string v2, "cmd"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 397
    iget-object v1, p0, Ltmsdkobf/ji;->jB:[B

    const-string v2, "sBuffer"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a([BLjava/lang/String;)Ltmsdkobf/db;

    .line 398
    iget-object v1, p0, Ltmsdkobf/ji;->th:Ljava/lang/String;

    const-string v2, "hardware_os"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 399
    iget-object v1, p0, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    const-string v2, "qua"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 400
    iget-byte v1, p0, Ltmsdkobf/ji;->tj:B

    const-string v2, "encryType"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(BLjava/lang/String;)Ltmsdkobf/db;

    .line 401
    iget-byte v1, p0, Ltmsdkobf/ji;->tk:B

    const-string v2, "zipType"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(BLjava/lang/String;)Ltmsdkobf/db;

    .line 402
    iget-object v1, p0, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    const-string v2, "productIdentity"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 403
    iget-object v1, p0, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    const-string v2, "reserved"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 404
    iget-object v1, p0, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    const-string v2, "bundleId"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 405
    iget-byte v1, p0, Ltmsdkobf/ji;->to:B

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(BLjava/lang/String;)Ltmsdkobf/db;

    .line 406
    iget-object v1, p0, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    const-string v2, "qimei"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 407
    return-void
.end method

.method public final e(B)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-byte p1, p0, Ltmsdkobf/ji;->to:B

    .line 201
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 255
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    check-cast p1, Ltmsdkobf/ji;

    .line 262
    iget-byte v1, p0, Ltmsdkobf/ji;->tb:B

    iget-byte v2, p1, Ltmsdkobf/ji;->tb:B

    invoke-static {v1, v2}, Ltmsdkobf/dg;->a(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Ltmsdkobf/ji;->tc:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->tc:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Ltmsdkobf/ji;->td:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->td:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Ltmsdkobf/ji;->te:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->te:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Ltmsdkobf/ji;->tf:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->tf:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget v1, p0, Ltmsdkobf/ji;->tg:I

    iget v2, p1, Ltmsdkobf/ji;->tg:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Ltmsdkobf/ji;->jB:[B

    iget-object v2, p1, Ltmsdkobf/ji;->jB:[B

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Ltmsdkobf/ji;->th:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->th:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-byte v1, p0, Ltmsdkobf/ji;->tj:B

    iget-byte v2, p1, Ltmsdkobf/ji;->tj:B

    invoke-static {v1, v2}, Ltmsdkobf/dg;->a(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-byte v1, p0, Ltmsdkobf/ji;->tk:B

    iget-byte v2, p1, Ltmsdkobf/ji;->tk:B

    invoke-static {v1, v2}, Ltmsdkobf/dg;->a(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-byte v1, p0, Ltmsdkobf/ji;->to:B

    iget-byte v2, p1, Ltmsdkobf/ji;->to:B

    invoke-static {v1, v2}, Ltmsdkobf/dg;->a(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 284
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public final m([B)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Ltmsdkobf/ji;->jB:[B

    .line 121
    return-void
.end method

.method public final readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    iget-byte v0, p0, Ltmsdkobf/ji;->tb:B

    invoke-virtual {p1, v0, v2, v3}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Ltmsdkobf/ji;->tb:B

    .line 350
    invoke-virtual {p1, v3, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->tc:Ljava/lang/String;

    .line 352
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->td:Ljava/lang/String;

    .line 354
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->te:Ljava/lang/String;

    .line 356
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->tf:Ljava/lang/String;

    .line 358
    iget v0, p0, Ltmsdkobf/ji;->tg:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/ji;->tg:I

    .line 360
    sget-object v0, Ltmsdkobf/ji;->jF:[B

    if-nez v0, :cond_0

    .line 362
    new-array v0, v3, [B

    .line 363
    sput-object v0, Ltmsdkobf/ji;->jF:[B

    aput-byte v2, v0, v2

    .line 366
    :cond_0
    sget-object v0, Ltmsdkobf/ji;->jF:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->jB:[B

    .line 368
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->th:Ljava/lang/String;

    .line 370
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    .line 372
    iget-byte v0, p0, Ltmsdkobf/ji;->tj:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Ltmsdkobf/ji;->tj:B

    .line 374
    iget-byte v0, p0, Ltmsdkobf/ji;->tk:B

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Ltmsdkobf/ji;->tk:B

    .line 376
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    .line 378
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    .line 380
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    .line 382
    iget-byte v0, p0, Ltmsdkobf/ji;->to:B

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Ltmsdkobf/ji;->to:B

    .line 384
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public final writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    iget-byte v0, p0, Ltmsdkobf/ji;->tb:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->b(BI)V

    .line 309
    iget-object v0, p0, Ltmsdkobf/ji;->tc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 310
    iget-object v0, p0, Ltmsdkobf/ji;->td:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 311
    iget-object v0, p0, Ltmsdkobf/ji;->te:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 312
    iget-object v0, p0, Ltmsdkobf/ji;->tf:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 313
    iget v0, p0, Ltmsdkobf/ji;->tg:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 314
    iget-object v0, p0, Ltmsdkobf/ji;->jB:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a([BI)V

    .line 315
    iget-object v0, p0, Ltmsdkobf/ji;->th:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Ltmsdkobf/ji;->th:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 319
    :cond_0
    iget-object v0, p0, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Ltmsdkobf/ji;->ti:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 323
    :cond_1
    iget-byte v0, p0, Ltmsdkobf/ji;->tj:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->b(BI)V

    .line 324
    iget-byte v0, p0, Ltmsdkobf/ji;->tk:B

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->b(BI)V

    .line 325
    iget-object v0, p0, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Ltmsdkobf/ji;->tl:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 329
    :cond_2
    iget-object v0, p0, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Ltmsdkobf/ji;->tm:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 333
    :cond_3
    iget-object v0, p0, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Ltmsdkobf/ji;->tn:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 337
    :cond_4
    iget-byte v0, p0, Ltmsdkobf/ji;->to:B

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->b(BI)V

    .line 338
    iget-object v0, p0, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Ltmsdkobf/ji;->tp:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 342
    :cond_5
    return-void
.end method
