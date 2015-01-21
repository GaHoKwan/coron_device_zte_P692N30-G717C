.class public final Ltmsdkobf/ak;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static dQ:Ltmsdkobf/by;


# instance fields
.field public dM:I

.field public dN:I

.field public dO:I

.field public dP:Ljava/lang/String;

.field public softSimpleInfo:Ltmsdkobf/by;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/ak;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/ak;->softSimpleInfo:Ltmsdkobf/by;

    .line 23
    iput v1, p0, Ltmsdkobf/ak;->dM:I

    .line 25
    iput v1, p0, Ltmsdkobf/ak;->dN:I

    .line 27
    iput v1, p0, Ltmsdkobf/ak;->dO:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ak;->dP:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Ltmsdkobf/ak;->softSimpleInfo:Ltmsdkobf/by;

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->setSoftSimpleInfo(Ltmsdkobf/by;)V

    .line 84
    iget v0, p0, Ltmsdkobf/ak;->dM:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->t(I)V

    .line 85
    iget v0, p0, Ltmsdkobf/ak;->dN:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->u(I)V

    .line 86
    iget v0, p0, Ltmsdkobf/ak;->dO:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->v(I)V

    .line 87
    iget-object v0, p0, Ltmsdkobf/ak;->dP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->G(Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public G(Ljava/lang/String;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 78
    iput-object p1, p0, Ltmsdkobf/ak;->dP:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 132
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 134
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 136
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/ak;->N:Z

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

    .line 101
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 106
    check-cast v0, Ltmsdkobf/ak;

    .line 107
    .local v0, t:Ltmsdkobf/ak;
    iget-object v2, p0, Ltmsdkobf/ak;->softSimpleInfo:Ltmsdkobf/by;

    iget-object v3, v0, Ltmsdkobf/ak;->softSimpleInfo:Ltmsdkobf/by;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ak;->dM:I

    iget v3, v0, Ltmsdkobf/ak;->dM:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ak;->dN:I

    iget v3, v0, Ltmsdkobf/ak;->dN:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ak;->dO:I

    iget v3, v0, Ltmsdkobf/ak;->dO:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/ak;->dP:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/ak;->dP:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 119
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    sget-object v0, Ltmsdkobf/ak;->dQ:Ltmsdkobf/by;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ltmsdkobf/by;

    invoke-direct {v0}, Ltmsdkobf/by;-><init>()V

    sput-object v0, Ltmsdkobf/ak;->dQ:Ltmsdkobf/by;

    .line 161
    :cond_0
    sget-object v0, Ltmsdkobf/ak;->dQ:Ltmsdkobf/by;

    invoke-virtual {p1, v0, v2, v1}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/by;

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->setSoftSimpleInfo(Ltmsdkobf/by;)V

    .line 163
    iget v0, p0, Ltmsdkobf/ak;->dM:I

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->t(I)V

    .line 165
    iget v0, p0, Ltmsdkobf/ak;->dN:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->u(I)V

    .line 167
    iget v0, p0, Ltmsdkobf/ak;->dO:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->v(I)V

    .line 169
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ak;->G(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setSoftSimpleInfo(Ltmsdkobf/by;)V
    .locals 0
    .parameter "softSimpleInfo"

    .prologue
    .line 38
    iput-object p1, p0, Ltmsdkobf/ak;->softSimpleInfo:Ltmsdkobf/by;

    .line 39
    return-void
.end method

.method public t(I)V
    .locals 0
    .parameter "reportFeature"

    .prologue
    .line 48
    iput p1, p0, Ltmsdkobf/ak;->dM:I

    .line 49
    return-void
.end method

.method public u(I)V
    .locals 0
    .parameter "official"

    .prologue
    .line 58
    iput p1, p0, Ltmsdkobf/ak;->dN:I

    .line 59
    return-void
.end method

.method public v(I)V
    .locals 0
    .parameter "update"

    .prologue
    .line 68
    iput p1, p0, Ltmsdkobf/ak;->dO:I

    .line 69
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 143
    iget-object v0, p0, Ltmsdkobf/ak;->softSimpleInfo:Ltmsdkobf/by;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 144
    iget v0, p0, Ltmsdkobf/ak;->dM:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 145
    iget v0, p0, Ltmsdkobf/ak;->dN:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 146
    iget v0, p0, Ltmsdkobf/ak;->dO:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 147
    iget-object v0, p0, Ltmsdkobf/ak;->dP:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Ltmsdkobf/ak;->dP:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 151
    :cond_0
    return-void
.end method
