.class public final Ltmsdkobf/r;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public aO:Ljava/lang/String;

.field public aP:Ljava/lang/String;

.field public aQ:I

.field public aR:I

.field public d:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/r;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/r;->aO:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/r;->aP:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdkobf/r;->d:I

    .line 27
    iput v1, p0, Ltmsdkobf/r;->aQ:I

    .line 29
    iput v1, p0, Ltmsdkobf/r;->aR:I

    .line 31
    iput v1, p0, Ltmsdkobf/r;->version:I

    .line 95
    iget-object v0, p0, Ltmsdkobf/r;->aO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->n(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Ltmsdkobf/r;->aP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->o(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Ltmsdkobf/r;->d:I

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->m(I)V

    .line 98
    iget v0, p0, Ltmsdkobf/r;->aQ:I

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->n(I)V

    .line 99
    iget v0, p0, Ltmsdkobf/r;->aR:I

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->o(I)V

    .line 100
    iget v0, p0, Ltmsdkobf/r;->version:I

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->setVersion(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 147
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 149
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 151
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/r;->N:Z

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

    .line 115
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 120
    check-cast v0, Ltmsdkobf/r;

    .line 121
    .local v0, t:Ltmsdkobf/r;
    iget-object v2, p0, Ltmsdkobf/r;->aO:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/r;->aO:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/r;->aP:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/r;->aP:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/r;->d:I

    iget v3, v0, Ltmsdkobf/r;->d:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/r;->aQ:I

    iget v3, v0, Ltmsdkobf/r;->aQ:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/r;->aR:I

    iget v3, v0, Ltmsdkobf/r;->aR:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/r;->version:I

    iget v3, v0, Ltmsdkobf/r;->version:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Ltmsdkobf/r;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 134
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const/4 v1, 0x0

    return v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ltmsdkobf/r;->aO:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Ltmsdkobf/r;->d:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Ltmsdkobf/r;->aQ:I

    return v0
.end method

.method public m(I)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 60
    iput p1, p0, Ltmsdkobf/r;->d:I

    .line 61
    return-void
.end method

.method public n(I)V
    .locals 0
    .parameter "pfutimestamp"

    .prologue
    .line 70
    iput p1, p0, Ltmsdkobf/r;->aQ:I

    .line 71
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 40
    iput-object p1, p0, Ltmsdkobf/r;->aO:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public o(I)V
    .locals 0
    .parameter "gettype"

    .prologue
    .line 80
    iput p1, p0, Ltmsdkobf/r;->aR:I

    .line 81
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .parameter "checksum"

    .prologue
    .line 50
    iput-object p1, p0, Ltmsdkobf/r;->aP:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p1, v2, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->n(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, v3, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->o(Ljava/lang/String;)V

    .line 173
    iget v0, p0, Ltmsdkobf/r;->d:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->m(I)V

    .line 175
    iget v0, p0, Ltmsdkobf/r;->aQ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->n(I)V

    .line 177
    iget v0, p0, Ltmsdkobf/r;->aR:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->o(I)V

    .line 179
    iget v0, p0, Ltmsdkobf/r;->version:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/r;->setVersion(I)V

    .line 181
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 90
    iput p1, p0, Ltmsdkobf/r;->version:I

    .line 91
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 158
    iget-object v0, p0, Ltmsdkobf/r;->aO:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 159
    iget-object v0, p0, Ltmsdkobf/r;->aP:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 160
    iget v0, p0, Ltmsdkobf/r;->d:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 161
    iget v0, p0, Ltmsdkobf/r;->aQ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 162
    iget v0, p0, Ltmsdkobf/r;->aR:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 163
    iget v0, p0, Ltmsdkobf/r;->version:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 164
    return-void
.end method
