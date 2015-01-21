.class public final Ltmsdkobf/bc;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public eA:I

.field public eB:I

.field public eC:I

.field public eD:I

.field public eE:I

.field public eF:I

.field public eG:I

.field public eH:Ljava/lang/String;

.field public ez:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bc;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput v0, p0, Ltmsdkobf/bc;->ez:I

    .line 23
    iput v0, p0, Ltmsdkobf/bc;->eA:I

    .line 25
    iput v0, p0, Ltmsdkobf/bc;->eB:I

    .line 27
    iput v0, p0, Ltmsdkobf/bc;->eC:I

    .line 29
    iput v0, p0, Ltmsdkobf/bc;->eD:I

    .line 31
    iput v0, p0, Ltmsdkobf/bc;->eE:I

    .line 33
    iput v0, p0, Ltmsdkobf/bc;->eF:I

    .line 35
    iput v0, p0, Ltmsdkobf/bc;->eG:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bc;->eH:Ljava/lang/String;

    .line 131
    iget v0, p0, Ltmsdkobf/bc;->ez:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->G(I)V

    .line 132
    iget v0, p0, Ltmsdkobf/bc;->eA:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->H(I)V

    .line 133
    iget v0, p0, Ltmsdkobf/bc;->eB:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->I(I)V

    .line 134
    iget v0, p0, Ltmsdkobf/bc;->eC:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->J(I)V

    .line 135
    iget v0, p0, Ltmsdkobf/bc;->eD:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->K(I)V

    .line 136
    iget v0, p0, Ltmsdkobf/bc;->eE:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->L(I)V

    .line 137
    iget v0, p0, Ltmsdkobf/bc;->eF:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->M(I)V

    .line 138
    iget v0, p0, Ltmsdkobf/bc;->eG:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->N(I)V

    .line 139
    iget-object v0, p0, Ltmsdkobf/bc;->eH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->O(Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public G(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 46
    iput p1, p0, Ltmsdkobf/bc;->ez:I

    .line 47
    return-void
.end method

.method public H(I)V
    .locals 0
    .parameter "nLeft"

    .prologue
    .line 56
    iput p1, p0, Ltmsdkobf/bc;->eA:I

    .line 57
    return-void
.end method

.method public I(I)V
    .locals 0
    .parameter "nUsed"

    .prologue
    .line 66
    iput p1, p0, Ltmsdkobf/bc;->eB:I

    .line 67
    return-void
.end method

.method public J(I)V
    .locals 0
    .parameter "nExcess"

    .prologue
    .line 76
    iput p1, p0, Ltmsdkobf/bc;->eC:I

    .line 77
    return-void
.end method

.method public K(I)V
    .locals 0
    .parameter "nPaNet"

    .prologue
    .line 86
    iput p1, p0, Ltmsdkobf/bc;->eD:I

    .line 87
    return-void
.end method

.method public L(I)V
    .locals 0
    .parameter "nPaMoney"

    .prologue
    .line 96
    iput p1, p0, Ltmsdkobf/bc;->eE:I

    .line 97
    return-void
.end method

.method public M(I)V
    .locals 0
    .parameter "ntime"

    .prologue
    .line 106
    iput p1, p0, Ltmsdkobf/bc;->eF:I

    .line 107
    return-void
.end method

.method public N(I)V
    .locals 0
    .parameter "nStopType"

    .prologue
    .line 116
    iput p1, p0, Ltmsdkobf/bc;->eG:I

    .line 117
    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 0
    .parameter "strMsg"

    .prologue
    .line 126
    iput-object p1, p0, Ltmsdkobf/bc;->eH:Ljava/lang/String;

    .line 127
    return-void
.end method

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
    sget-boolean v2, Ltmsdkobf/bc;->N:Z

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
    check-cast v0, Ltmsdkobf/bc;

    .line 163
    .local v0, t:Ltmsdkobf/bc;
    iget v2, p0, Ltmsdkobf/bc;->ez:I

    iget v3, v0, Ltmsdkobf/bc;->ez:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bc;->eA:I

    iget v3, v0, Ltmsdkobf/bc;->eA:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bc;->eB:I

    iget v3, v0, Ltmsdkobf/bc;->eB:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bc;->eC:I

    iget v3, v0, Ltmsdkobf/bc;->eC:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bc;->eD:I

    iget v3, v0, Ltmsdkobf/bc;->eD:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bc;->eE:I

    iget v3, v0, Ltmsdkobf/bc;->eE:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bc;->eF:I

    iget v3, v0, Ltmsdkobf/bc;->eF:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bc;->eG:I

    iget v3, v0, Ltmsdkobf/bc;->eG:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bc;->eH:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bc;->eH:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
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

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 220
    iget v0, p0, Ltmsdkobf/bc;->ez:I

    invoke-virtual {p1, v0, v3, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->G(I)V

    .line 222
    iget v0, p0, Ltmsdkobf/bc;->eA:I

    invoke-virtual {p1, v0, v2, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->H(I)V

    .line 224
    iget v0, p0, Ltmsdkobf/bc;->eB:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->I(I)V

    .line 226
    iget v0, p0, Ltmsdkobf/bc;->eC:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->J(I)V

    .line 228
    iget v0, p0, Ltmsdkobf/bc;->eD:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->K(I)V

    .line 230
    iget v0, p0, Ltmsdkobf/bc;->eE:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->L(I)V

    .line 232
    iget v0, p0, Ltmsdkobf/bc;->eF:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->M(I)V

    .line 234
    iget v0, p0, Ltmsdkobf/bc;->eG:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->N(I)V

    .line 236
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/bc;->O(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 203
    iget v0, p0, Ltmsdkobf/bc;->ez:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 204
    iget v0, p0, Ltmsdkobf/bc;->eA:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 205
    iget v0, p0, Ltmsdkobf/bc;->eB:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 206
    iget v0, p0, Ltmsdkobf/bc;->eC:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 207
    iget v0, p0, Ltmsdkobf/bc;->eD:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 208
    iget v0, p0, Ltmsdkobf/bc;->eE:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 209
    iget v0, p0, Ltmsdkobf/bc;->eF:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 210
    iget v0, p0, Ltmsdkobf/bc;->eG:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 211
    iget-object v0, p0, Ltmsdkobf/bc;->eH:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Ltmsdkobf/bc;->eH:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 215
    :cond_0
    return-void
.end method
