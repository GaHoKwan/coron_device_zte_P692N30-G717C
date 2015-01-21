.class public final Ltmsdkobf/bl;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public advice:I

.field public eb:Ljava/lang/String;

.field public ft:Ljava/lang/String;

.field public fu:I

.field public id:I

.field public level:I

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bl;->N:Z

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
    iput v1, p0, Ltmsdkobf/bl;->id:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bl;->name:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    .line 27
    iput v1, p0, Ltmsdkobf/bl;->level:I

    .line 29
    iput v1, p0, Ltmsdkobf/bl;->advice:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    .line 33
    iput v1, p0, Ltmsdkobf/bl;->fu:I

    .line 35
    iput v1, p0, Ltmsdkobf/bl;->type:I

    .line 119
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 169
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 171
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 173
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bl;->N:Z

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
    .line 209
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 210
    .local v0, _ds:Ltmsdkobf/db;
    iget v1, p0, Ltmsdkobf/bl;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 211
    iget-object v1, p0, Ltmsdkobf/bl;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 212
    iget-object v1, p0, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    const-string v2, "shortdesc"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 213
    iget v1, p0, Ltmsdkobf/bl;->level:I

    const-string v2, "level"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 214
    iget v1, p0, Ltmsdkobf/bl;->advice:I

    const-string v2, "advice"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 215
    iget-object v1, p0, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    const-string v2, "desc"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 216
    iget v1, p0, Ltmsdkobf/bl;->fu:I

    const-string v2, "scan"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 217
    iget v1, p0, Ltmsdkobf/bl;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 218
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 140
    check-cast v0, Ltmsdkobf/bl;

    .line 141
    .local v0, t:Ltmsdkobf/bl;
    iget v2, p0, Ltmsdkobf/bl;->id:I

    iget v3, v0, Ltmsdkobf/bl;->id:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bl;->name:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bl;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bl;->level:I

    iget v3, v0, Ltmsdkobf/bl;->level:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bl;->advice:I

    iget v3, v0, Ltmsdkobf/bl;->advice:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bl;->fu:I

    iget v3, v0, Ltmsdkobf/bl;->fu:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bl;->type:I

    iget v3, v0, Ltmsdkobf/bl;->type:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 156
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    .line 197
    iget v0, p0, Ltmsdkobf/bl;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bl;->id:I

    .line 198
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bl;->name:Ljava/lang/String;

    .line 199
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    .line 200
    iget v0, p0, Ltmsdkobf/bl;->level:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bl;->level:I

    .line 201
    iget v0, p0, Ltmsdkobf/bl;->advice:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bl;->advice:I

    .line 202
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    .line 203
    iget v0, p0, Ltmsdkobf/bl;->fu:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bl;->fu:I

    .line 204
    iget v0, p0, Ltmsdkobf/bl;->type:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bl;->type:I

    .line 205
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 180
    iget v0, p0, Ltmsdkobf/bl;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 181
    iget-object v0, p0, Ltmsdkobf/bl;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 182
    iget-object v0, p0, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 183
    iget v0, p0, Ltmsdkobf/bl;->level:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 184
    iget v0, p0, Ltmsdkobf/bl;->advice:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 185
    iget-object v0, p0, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 186
    iget v0, p0, Ltmsdkobf/bl;->fu:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 187
    iget v0, p0, Ltmsdkobf/bl;->type:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 188
    return-void
.end method
