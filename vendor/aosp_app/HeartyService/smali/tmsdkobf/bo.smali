.class public final Ltmsdkobf/bo;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static fI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/au;",
            ">;"
        }
    .end annotation
.end field

.field static fJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ci;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aM:Ljava/lang/String;

.field public fB:I

.field public fC:I

.field public fD:I

.field public fE:I

.field public fF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/au;",
            ">;"
        }
    .end annotation
.end field

.field public fG:I

.field public fH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ci;",
            ">;"
        }
    .end annotation
.end field

.field public product:I

.field public sender:Ljava/lang/String;

.field public sms:Ljava/lang/String;

.field public smsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bo;->N:Z

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

    .line 166
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bo;->sender:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bo;->sms:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdkobf/bo;->fB:I

    .line 27
    iput v1, p0, Ltmsdkobf/bo;->fC:I

    .line 29
    iput v1, p0, Ltmsdkobf/bo;->fD:I

    .line 31
    iput v1, p0, Ltmsdkobf/bo;->fE:I

    .line 33
    iput-object v2, p0, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    .line 35
    iput v1, p0, Ltmsdkobf/bo;->fG:I

    .line 37
    iput-object v2, p0, Ltmsdkobf/bo;->fH:Ljava/util/ArrayList;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bo;->aM:Ljava/lang/String;

    .line 41
    iput v1, p0, Ltmsdkobf/bo;->smsType:I

    .line 43
    iput v1, p0, Ltmsdkobf/bo;->product:I

    .line 167
    iget-object v0, p0, Ltmsdkobf/bo;->sender:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->aa(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Ltmsdkobf/bo;->sms:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->ab(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Ltmsdkobf/bo;->fB:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->S(I)V

    .line 170
    iget v0, p0, Ltmsdkobf/bo;->fC:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->T(I)V

    .line 171
    iget v0, p0, Ltmsdkobf/bo;->fD:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->U(I)V

    .line 172
    iget v0, p0, Ltmsdkobf/bo;->fE:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->V(I)V

    .line 173
    iget-object v0, p0, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->j(Ljava/util/ArrayList;)V

    .line 174
    iget v0, p0, Ltmsdkobf/bo;->fG:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->W(I)V

    .line 175
    iget-object v0, p0, Ltmsdkobf/bo;->fH:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->k(Ljava/util/ArrayList;)V

    .line 176
    iget-object v0, p0, Ltmsdkobf/bo;->aM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->setComment(Ljava/lang/String;)V

    .line 177
    iget v0, p0, Ltmsdkobf/bo;->smsType:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->X(I)V

    .line 178
    iget v0, p0, Ltmsdkobf/bo;->product:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bo;->f(I)V

    .line 179
    return-void
.end method


# virtual methods
.method public S(I)V
    .locals 0
    .parameter "matchTime"

    .prologue
    .line 72
    iput p1, p0, Ltmsdkobf/bo;->fB:I

    .line 73
    return-void
.end method

.method public T(I)V
    .locals 0
    .parameter "ucAction"

    .prologue
    .line 82
    iput p1, p0, Ltmsdkobf/bo;->fC:I

    .line 83
    return-void
.end method

.method public U(I)V
    .locals 0
    .parameter "ucActionReason"

    .prologue
    .line 92
    iput p1, p0, Ltmsdkobf/bo;->fD:I

    .line 93
    return-void
.end method

.method public V(I)V
    .locals 0
    .parameter "ucContentType"

    .prologue
    .line 102
    iput p1, p0, Ltmsdkobf/bo;->fE:I

    .line 103
    return-void
.end method

.method public W(I)V
    .locals 0
    .parameter "ucMinusMark"

    .prologue
    .line 122
    iput p1, p0, Ltmsdkobf/bo;->fG:I

    .line 123
    return-void
.end method

.method public X(I)V
    .locals 0
    .parameter "smsType"

    .prologue
    .line 152
    iput p1, p0, Ltmsdkobf/bo;->smsType:I

    .line 153
    return-void
.end method

.method public aa(Ljava/lang/String;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 52
    iput-object p1, p0, Ltmsdkobf/bo;->sender:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public ab(Ljava/lang/String;)V
    .locals 0
    .parameter "sms"

    .prologue
    .line 62
    iput-object p1, p0, Ltmsdkobf/bo;->sms:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 237
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 243
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 239
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 241
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bo;->N:Z

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

    .line 199
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 204
    check-cast v0, Ltmsdkobf/bo;

    .line 205
    .local v0, t:Ltmsdkobf/bo;
    iget-object v2, p0, Ltmsdkobf/bo;->sender:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bo;->sender:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bo;->sms:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bo;->sms:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bo;->fB:I

    iget v3, v0, Ltmsdkobf/bo;->fB:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bo;->fC:I

    iget v3, v0, Ltmsdkobf/bo;->fC:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bo;->fD:I

    iget v3, v0, Ltmsdkobf/bo;->fD:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bo;->fE:I

    iget v3, v0, Ltmsdkobf/bo;->fE:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bo;->fG:I

    iget v3, v0, Ltmsdkobf/bo;->fG:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bo;->fH:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/bo;->fH:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bo;->aM:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bo;->aM:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bo;->smsType:I

    iget v3, v0, Ltmsdkobf/bo;->smsType:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bo;->product:I

    iget v3, v0, Ltmsdkobf/bo;->product:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public f(I)V
    .locals 0
    .parameter "product"

    .prologue
    .line 162
    iput p1, p0, Ltmsdkobf/bo;->product:I

    .line 163
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    const/4 v1, 0x0

    return v1
.end method

.method public j(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, vecHitRule:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/au;>;"
    iput-object p1, p0, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method public k(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ci;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, vecUserAction:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ci;>;"
    iput-object p1, p0, Ltmsdkobf/bo;->fH:Ljava/util/ArrayList;

    .line 133
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 6
    .parameter "_is"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    invoke-virtual {p1, v4, v5}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->aa(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1, v5, v5}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->ab(Ljava/lang/String;)V

    .line 282
    iget v2, p0, Ltmsdkobf/bo;->fB:I

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3, v5}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->S(I)V

    .line 284
    iget v2, p0, Ltmsdkobf/bo;->fC:I

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3, v5}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->T(I)V

    .line 286
    iget v2, p0, Ltmsdkobf/bo;->fD:I

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3, v5}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->U(I)V

    .line 288
    iget v2, p0, Ltmsdkobf/bo;->fE:I

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->V(I)V

    .line 290
    sget-object v2, Ltmsdkobf/bo;->fI:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ltmsdkobf/bo;->fI:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ltmsdkobf/au;

    invoke-direct {v0}, Ltmsdkobf/au;-><init>()V

    .line 294
    .local v0, __var_1:Ltmsdkobf/au;
    sget-object v2, Ltmsdkobf/bo;->fI:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v0           #__var_1:Ltmsdkobf/au;
    :cond_0
    sget-object v2, Ltmsdkobf/bo;->fI:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->j(Ljava/util/ArrayList;)V

    .line 298
    iget v2, p0, Ltmsdkobf/bo;->fG:I

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->W(I)V

    .line 300
    sget-object v2, Ltmsdkobf/bo;->fJ:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ltmsdkobf/bo;->fJ:Ljava/util/ArrayList;

    .line 303
    new-instance v1, Ltmsdkobf/ci;

    invoke-direct {v1}, Ltmsdkobf/ci;-><init>()V

    .line 304
    .local v1, __var_2:Ltmsdkobf/ci;
    sget-object v2, Ltmsdkobf/bo;->fJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v1           #__var_2:Ltmsdkobf/ci;
    :cond_1
    sget-object v2, Ltmsdkobf/bo;->fJ:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->k(Ljava/util/ArrayList;)V

    .line 308
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->setComment(Ljava/lang/String;)V

    .line 310
    iget v2, p0, Ltmsdkobf/bo;->smsType:I

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->X(I)V

    .line 312
    iget v2, p0, Ltmsdkobf/bo;->product:I

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    invoke-virtual {p0, v2}, Ltmsdkobf/bo;->f(I)V

    .line 314
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 142
    iput-object p1, p0, Ltmsdkobf/bo;->aM:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 248
    iget-object v0, p0, Ltmsdkobf/bo;->sender:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Ltmsdkobf/bo;->sms:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 250
    iget v0, p0, Ltmsdkobf/bo;->fB:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 251
    iget v0, p0, Ltmsdkobf/bo;->fC:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 252
    iget v0, p0, Ltmsdkobf/bo;->fD:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 253
    iget v0, p0, Ltmsdkobf/bo;->fE:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 254
    iget-object v0, p0, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Ltmsdkobf/bo;->fF:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 258
    :cond_0
    iget v0, p0, Ltmsdkobf/bo;->fG:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 259
    iget-object v0, p0, Ltmsdkobf/bo;->fH:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Ltmsdkobf/bo;->fH:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 263
    :cond_1
    iget-object v0, p0, Ltmsdkobf/bo;->aM:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Ltmsdkobf/bo;->aM:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 267
    :cond_2
    iget v0, p0, Ltmsdkobf/bo;->smsType:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 268
    iget v0, p0, Ltmsdkobf/bo;->product:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 269
    return-void
.end method
