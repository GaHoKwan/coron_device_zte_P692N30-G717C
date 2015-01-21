.class public final Ltmsdkobf/cn;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public ak:Ljava/lang/String;

.field public d:I

.field public iA:I

.field public iR:Z

.field public iS:Ljava/lang/String;

.field public ij:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/cn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/cn;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cn;->ij:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/cn;->iR:Z

    .line 25
    iput v1, p0, Ltmsdkobf/cn;->version:I

    .line 27
    iput v1, p0, Ltmsdkobf/cn;->d:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cn;->url:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cn;->ak:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cn;->iS:Ljava/lang/String;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Ltmsdkobf/cn;->iA:I

    .line 119
    iget-object v0, p0, Ltmsdkobf/cn;->ij:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->ad(Ljava/lang/String;)V

    .line 120
    iget-boolean v0, p0, Ltmsdkobf/cn;->iR:Z

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->b(Z)V

    .line 121
    iget v0, p0, Ltmsdkobf/cn;->version:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->setVersion(I)V

    .line 122
    iget v0, p0, Ltmsdkobf/cn;->d:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->m(I)V

    .line 123
    iget-object v0, p0, Ltmsdkobf/cn;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->setUrl(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Ltmsdkobf/cn;->ak:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->ai(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Ltmsdkobf/cn;->iS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->aj(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Ltmsdkobf/cn;->iA:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->an(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Ltmsdkobf/cn;->iR:Z

    return v0
.end method

.method public ad(Ljava/lang/String;)V
    .locals 0
    .parameter "strTips"

    .prologue
    .line 44
    iput-object p1, p0, Ltmsdkobf/cn;->ij:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public ai(Ljava/lang/String;)V
    .locals 0
    .parameter "short_desc"

    .prologue
    .line 94
    iput-object p1, p0, Ltmsdkobf/cn;->ak:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public aj(Ljava/lang/String;)V
    .locals 0
    .parameter "advise"

    .prologue
    .line 104
    iput-object p1, p0, Ltmsdkobf/cn;->iS:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public an(I)V
    .locals 0
    .parameter "engine_version"

    .prologue
    .line 114
    iput p1, p0, Ltmsdkobf/cn;->iA:I

    .line 115
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter "bUpdate"

    .prologue
    .line 54
    iput-boolean p1, p0, Ltmsdkobf/cn;->iR:Z

    .line 55
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 177
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 179
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 181
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/cn;->N:Z

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

    .line 143
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 148
    check-cast v0, Ltmsdkobf/cn;

    .line 149
    .local v0, t:Ltmsdkobf/cn;
    iget-object v2, p0, Ltmsdkobf/cn;->ij:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/cn;->ij:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ltmsdkobf/cn;->iR:Z

    iget-boolean v3, v0, Ltmsdkobf/cn;->iR:Z

    invoke-static {v2, v3}, Ltmsdkobf/dg;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/cn;->version:I

    iget v3, v0, Ltmsdkobf/cn;->version:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/cn;->d:I

    iget v3, v0, Ltmsdkobf/cn;->d:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/cn;->url:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/cn;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/cn;->ak:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/cn;->ak:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/cn;->iS:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/cn;->iS:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/cn;->iA:I

    iget v3, v0, Ltmsdkobf/cn;->iA:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 164
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const/4 v1, 0x0

    return v1
.end method

.method public m(I)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 74
    iput p1, p0, Ltmsdkobf/cn;->d:I

    .line 75
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 201
    invoke-virtual {p1, v3, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->ad(Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Ltmsdkobf/cn;->iR:Z

    invoke-virtual {p1, v0, v2, v2}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->b(Z)V

    .line 205
    iget v0, p0, Ltmsdkobf/cn;->version:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->setVersion(I)V

    .line 207
    iget v0, p0, Ltmsdkobf/cn;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->m(I)V

    .line 209
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->setUrl(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->ai(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->aj(Ljava/lang/String;)V

    .line 215
    iget v0, p0, Ltmsdkobf/cn;->iA:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cn;->an(I)V

    .line 217
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 84
    iput-object p1, p0, Ltmsdkobf/cn;->url:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 64
    iput p1, p0, Ltmsdkobf/cn;->version:I

    .line 65
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 188
    iget-object v0, p0, Ltmsdkobf/cn;->ij:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 189
    iget-boolean v0, p0, Ltmsdkobf/cn;->iR:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(ZI)V

    .line 190
    iget v0, p0, Ltmsdkobf/cn;->version:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 191
    iget v0, p0, Ltmsdkobf/cn;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 192
    iget-object v0, p0, Ltmsdkobf/cn;->url:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 193
    iget-object v0, p0, Ltmsdkobf/cn;->ak:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 194
    iget-object v0, p0, Ltmsdkobf/cn;->iS:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 195
    iget v0, p0, Ltmsdkobf/cn;->iA:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 196
    return-void
.end method
