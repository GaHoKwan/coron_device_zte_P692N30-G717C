.class public final Ltmsdkobf/u;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public U:Ljava/lang/String;

.field public be:Ljava/lang/String;

.field public bf:Ljava/lang/String;

.field public bg:I

.field public bh:Ljava/lang/String;

.field public bi:Ljava/lang/String;

.field public bj:Ljava/lang/String;

.field public bk:Ljava/lang/String;

.field public iccid:Ljava/lang/String;

.field public imsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/u;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->U:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->imsi:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->be:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->iccid:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->bf:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/u;->bg:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->bh:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->bi:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->bj:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/u;->bk:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Ltmsdkobf/u;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->d(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Ltmsdkobf/u;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->q(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Ltmsdkobf/u;->be:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->r(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Ltmsdkobf/u;->iccid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->s(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Ltmsdkobf/u;->bf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->t(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Ltmsdkobf/u;->bg:I

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->r(I)V

    .line 149
    iget-object v0, p0, Ltmsdkobf/u;->bh:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->u(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Ltmsdkobf/u;->bi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->v(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Ltmsdkobf/u;->bj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->w(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Ltmsdkobf/u;->bk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->x(Ljava/lang/String;)V

    .line 153
    return-void
.end method


# virtual methods
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
    sget-boolean v2, Ltmsdkobf/u;->N:Z

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
    iput-object p1, p0, Ltmsdkobf/u;->U:Ljava/lang/String;

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
    check-cast v0, Ltmsdkobf/u;

    .line 177
    .local v0, t:Ltmsdkobf/u;
    iget-object v2, p0, Ltmsdkobf/u;->U:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->U:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/u;->imsi:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->imsi:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/u;->be:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->be:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/u;->iccid:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->iccid:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/u;->bf:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->bf:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/u;->bg:I

    iget v3, v0, Ltmsdkobf/u;->bg:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/u;->bh:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->bh:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/u;->bi:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->bi:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/u;->bj:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->bj:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/u;->bk:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/u;->bk:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 58
    iput-object p1, p0, Ltmsdkobf/u;->imsi:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public r(I)V
    .locals 0
    .parameter "sdkversion"

    .prologue
    .line 98
    iput p1, p0, Ltmsdkobf/u;->bg:I

    .line 99
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0
    .parameter "mac"

    .prologue
    .line 68
    iput-object p1, p0, Ltmsdkobf/u;->be:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->d(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1, v1, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->q(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->r(Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->s(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->t(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Ltmsdkobf/u;->bg:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->r(I)V

    .line 269
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->u(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->v(Ljava/lang/String;)V

    .line 273
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->w(Ljava/lang/String;)V

    .line 275
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/u;->x(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0
    .parameter "iccid"

    .prologue
    .line 78
    iput-object p1, p0, Ltmsdkobf/u;->iccid:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0
    .parameter "androidid"

    .prologue
    .line 88
    iput-object p1, p0, Ltmsdkobf/u;->bf:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 108
    iput-object p1, p0, Ltmsdkobf/u;->bh:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0
    .parameter "product"

    .prologue
    .line 118
    iput-object p1, p0, Ltmsdkobf/u;->bi:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0
    .parameter "netfile"

    .prologue
    .line 128
    iput-object p1, p0, Ltmsdkobf/u;->bj:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 218
    iget-object v0, p0, Ltmsdkobf/u;->U:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 219
    iget-object v0, p0, Ltmsdkobf/u;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Ltmsdkobf/u;->imsi:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 223
    :cond_0
    iget-object v0, p0, Ltmsdkobf/u;->be:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Ltmsdkobf/u;->be:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 227
    :cond_1
    iget-object v0, p0, Ltmsdkobf/u;->iccid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Ltmsdkobf/u;->iccid:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 231
    :cond_2
    iget-object v0, p0, Ltmsdkobf/u;->bf:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Ltmsdkobf/u;->bf:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 235
    :cond_3
    iget v0, p0, Ltmsdkobf/u;->bg:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 236
    iget-object v0, p0, Ltmsdkobf/u;->bh:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Ltmsdkobf/u;->bh:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 240
    :cond_4
    iget-object v0, p0, Ltmsdkobf/u;->bi:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Ltmsdkobf/u;->bi:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 244
    :cond_5
    iget-object v0, p0, Ltmsdkobf/u;->bj:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 246
    iget-object v0, p0, Ltmsdkobf/u;->bj:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 248
    :cond_6
    iget-object v0, p0, Ltmsdkobf/u;->bk:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Ltmsdkobf/u;->bk:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 252
    :cond_7
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0
    .parameter "lguid"

    .prologue
    .line 138
    iput-object p1, p0, Ltmsdkobf/u;->bk:Ljava/lang/String;

    .line 139
    return-void
.end method
