.class public final Ltmsdkobf/bq;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public dF:Ljava/lang/String;

.field public fK:Ljava/lang/String;

.field public fL:I

.field public fM:I

.field public fN:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bq;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bq;->fK:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdkobf/bq;->fL:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bq;->path:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bq;->name:Ljava/lang/String;

    .line 31
    iput v1, p0, Ltmsdkobf/bq;->fM:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bq;->fN:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 155
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 157
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 159
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bq;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 198
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 199
    .local v0, _ds:Ltmsdkobf/db;
    iget-object v1, p0, Ltmsdkobf/bq;->fK:Ljava/lang/String;

    const-string v2, "pkgname"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 200
    iget-object v1, p0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    const-string v2, "cert"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 201
    iget v1, p0, Ltmsdkobf/bq;->fL:I

    const-string v2, "softsize"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 202
    iget-object v1, p0, Ltmsdkobf/bq;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 203
    iget-object v1, p0, Ltmsdkobf/bq;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 204
    iget v1, p0, Ltmsdkobf/bq;->fM:I

    const-string v2, "isOfficial"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 205
    iget-object v1, p0, Ltmsdkobf/bq;->fN:Ljava/lang/String;

    const-string v2, "expanda"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 206
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 127
    check-cast v0, Ltmsdkobf/bq;

    .line 128
    .local v0, t:Ltmsdkobf/bq;
    iget-object v2, p0, Ltmsdkobf/bq;->fK:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bq;->fK:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bq;->fL:I

    iget v3, v0, Ltmsdkobf/bq;->fL:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bq;->path:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bq;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bq;->name:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bq;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bq;->fM:I

    iget v3, v0, Ltmsdkobf/bq;->fM:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bq;->fN:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bq;->fN:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bq;->fK:Ljava/lang/String;

    .line 188
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    .line 189
    iget v0, p0, Ltmsdkobf/bq;->fL:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bq;->fL:I

    .line 190
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bq;->path:Ljava/lang/String;

    .line 191
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bq;->name:Ljava/lang/String;

    .line 192
    iget v0, p0, Ltmsdkobf/bq;->fM:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bq;->fM:I

    .line 193
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bq;->fN:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 166
    iget-object v0, p0, Ltmsdkobf/bq;->fK:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 167
    iget-object v0, p0, Ltmsdkobf/bq;->dF:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 168
    iget v0, p0, Ltmsdkobf/bq;->fL:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 169
    iget-object v0, p0, Ltmsdkobf/bq;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Ltmsdkobf/bq;->path:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 173
    :cond_0
    iget-object v0, p0, Ltmsdkobf/bq;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Ltmsdkobf/bq;->name:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 177
    :cond_1
    iget v0, p0, Ltmsdkobf/bq;->fM:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 178
    iget-object v0, p0, Ltmsdkobf/bq;->fN:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Ltmsdkobf/bq;->fN:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 182
    :cond_2
    return-void
.end method
