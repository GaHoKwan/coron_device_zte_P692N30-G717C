.class public final Ltmsdkobf/af;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public dE:Ljava/lang/String;

.field public dF:Ljava/lang/String;

.field public r:I

.field public softName:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/af;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/af;->N:Z

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

    iput-object v0, p0, Ltmsdkobf/af;->dE:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/af;->softName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/af;->version:Ljava/lang/String;

    .line 27
    iput v1, p0, Ltmsdkobf/af;->versionCode:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/af;->dF:Ljava/lang/String;

    .line 31
    iput v1, p0, Ltmsdkobf/af;->r:I

    .line 95
    iget-object v0, p0, Ltmsdkobf/af;->dE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->A(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Ltmsdkobf/af;->softName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->B(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Ltmsdkobf/af;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->setVersion(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Ltmsdkobf/af;->versionCode:I

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->setVersionCode(I)V

    .line 99
    iget-object v0, p0, Ltmsdkobf/af;->dF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->C(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Ltmsdkobf/af;->r:I

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->h(I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "uniCode"
    .parameter "softName"
    .parameter "version"
    .parameter "versionCode"
    .parameter "cert"
    .parameter "fileSize"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/af;->dE:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/af;->softName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/af;->version:Ljava/lang/String;

    .line 27
    iput v1, p0, Ltmsdkobf/af;->versionCode:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/af;->dF:Ljava/lang/String;

    .line 31
    iput v1, p0, Ltmsdkobf/af;->r:I

    .line 105
    invoke-virtual {p0, p1}, Ltmsdkobf/af;->A(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p2}, Ltmsdkobf/af;->B(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p3}, Ltmsdkobf/af;->setVersion(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p4}, Ltmsdkobf/af;->setVersionCode(I)V

    .line 109
    invoke-virtual {p0, p5}, Ltmsdkobf/af;->C(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p6}, Ltmsdkobf/af;->h(I)V

    .line 111
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0
    .parameter "uniCode"

    .prologue
    .line 40
    iput-object p1, p0, Ltmsdkobf/af;->dE:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0
    .parameter "softName"

    .prologue
    .line 50
    iput-object p1, p0, Ltmsdkobf/af;->softName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0
    .parameter "cert"

    .prologue
    .line 80
    iput-object p1, p0, Ltmsdkobf/af;->dF:Ljava/lang/String;

    .line 81
    return-void
.end method

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
    sget-boolean v2, Ltmsdkobf/af;->N:Z

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
    check-cast v0, Ltmsdkobf/af;

    .line 121
    .local v0, t:Ltmsdkobf/af;
    iget-object v2, p0, Ltmsdkobf/af;->dE:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/af;->dE:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/af;->softName:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/af;->softName:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/af;->version:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/af;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/af;->versionCode:I

    iget v3, v0, Ltmsdkobf/af;->versionCode:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/af;->dF:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/af;->dF:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/af;->r:I

    iget v3, v0, Ltmsdkobf/af;->r:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public h(I)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 90
    iput p1, p0, Ltmsdkobf/af;->r:I

    .line 91
    return-void
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

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->A(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->B(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->setVersion(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Ltmsdkobf/af;->versionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->setVersionCode(I)V

    .line 180
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->C(Ljava/lang/String;)V

    .line 182
    iget v0, p0, Ltmsdkobf/af;->r:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/af;->h(I)V

    .line 184
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 60
    iput-object p1, p0, Ltmsdkobf/af;->version:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 70
    iput p1, p0, Ltmsdkobf/af;->versionCode:I

    .line 71
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 158
    iget-object v0, p0, Ltmsdkobf/af;->dE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 159
    iget-object v0, p0, Ltmsdkobf/af;->softName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Ltmsdkobf/af;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 161
    iget v0, p0, Ltmsdkobf/af;->versionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 162
    iget-object v0, p0, Ltmsdkobf/af;->dF:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Ltmsdkobf/af;->dF:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 166
    :cond_0
    iget v0, p0, Ltmsdkobf/af;->r:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 167
    return-void
.end method
