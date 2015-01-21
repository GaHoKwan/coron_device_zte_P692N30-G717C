.class public final Ltmsdkobf/jj;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static tw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/jl;",
            ">;"
        }
    .end annotation
.end field

.field static tx:Ltmsdkobf/jm;


# instance fields
.field public tq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/jl;",
            ">;"
        }
    .end annotation
.end field

.field public tr:Ltmsdkobf/jm;

.field public ts:I

.field public tt:I

.field public tu:Z

.field public tv:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/jj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/jj;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput-object v2, p0, Ltmsdkobf/jj;->tq:Ljava/util/ArrayList;

    .line 23
    iput-object v2, p0, Ltmsdkobf/jj;->tr:Ltmsdkobf/jm;

    .line 25
    iput v0, p0, Ltmsdkobf/jj;->ts:I

    .line 27
    iput v0, p0, Ltmsdkobf/jj;->tt:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/jj;->url:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Ltmsdkobf/jj;->tu:Z

    .line 33
    iput-boolean v1, p0, Ltmsdkobf/jj;->tv:Z

    .line 107
    iget-object v0, p0, Ltmsdkobf/jj;->tq:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->q(Ljava/util/ArrayList;)V

    .line 108
    iget-object v0, p0, Ltmsdkobf/jj;->tr:Ltmsdkobf/jm;

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->a(Ltmsdkobf/jm;)V

    .line 109
    iget v0, p0, Ltmsdkobf/jj;->ts:I

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->bb(I)V

    .line 110
    iget v0, p0, Ltmsdkobf/jj;->tt:I

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->bc(I)V

    .line 111
    iget-object v0, p0, Ltmsdkobf/jj;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->setUrl(Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Ltmsdkobf/jj;->tu:Z

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->s(Z)V

    .line 113
    iget-boolean v0, p0, Ltmsdkobf/jj;->tv:Z

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->t(Z)V

    .line 114
    return-void
.end method


# virtual methods
.method public final a(Ltmsdkobf/jm;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Ltmsdkobf/jj;->tr:Ltmsdkobf/jm;

    .line 53
    return-void
.end method

.method public final bb(I)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput p1, p0, Ltmsdkobf/jj;->ts:I

    .line 63
    return-void
.end method

.method public final bc(I)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput p1, p0, Ltmsdkobf/jj;->tt:I

    .line 73
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 162
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :cond_0
    return-object v0

    .line 166
    :catch_0
    move-exception v1

    sget-boolean v1, Ltmsdkobf/jj;->N:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final dZ()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/jl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Ltmsdkobf/jj;->tq:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 215
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 216
    iget-object v1, p0, Ltmsdkobf/jj;->tq:Ljava/util/ArrayList;

    const-string v2, "moduleList"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/util/Collection;Ljava/lang/String;)Ltmsdkobf/db;

    .line 217
    iget-object v1, p0, Ltmsdkobf/jj;->tr:Ltmsdkobf/jm;

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ltmsdkobf/df;Ljava/lang/String;)Ltmsdkobf/db;

    .line 218
    iget v1, p0, Ltmsdkobf/jj;->ts:I

    const-string v2, "uploadStrategy"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 219
    iget v1, p0, Ltmsdkobf/jj;->tt:I

    const-string v2, "queryInterval"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 220
    iget-object v1, p0, Ltmsdkobf/jj;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 221
    iget-boolean v1, p0, Ltmsdkobf/jj;->tu:Z

    const-string v2, "enforceQuery"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ZLjava/lang/String;)Ltmsdkobf/db;

    .line 222
    iget-boolean v1, p0, Ltmsdkobf/jj;->tv:Z

    const-string v2, "useServer"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ZLjava/lang/String;)Ltmsdkobf/db;

    .line 223
    return-void
.end method

.method public final ea()Ltmsdkobf/jm;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltmsdkobf/jj;->tr:Ltmsdkobf/jm;

    return-object v0
.end method

.method public final eb()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Ltmsdkobf/jj;->ts:I

    return v0
.end method

.method public final ec()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Ltmsdkobf/jj;->tt:I

    return v0
.end method

.method public final ed()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Ltmsdkobf/jj;->tv:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 129
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    check-cast p1, Ltmsdkobf/jj;

    .line 136
    iget-object v1, p0, Ltmsdkobf/jj;->tq:Ljava/util/ArrayList;

    iget-object v2, p1, Ltmsdkobf/jj;->tq:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Ltmsdkobf/jj;->tr:Ltmsdkobf/jm;

    iget-object v2, p1, Ltmsdkobf/jj;->tr:Ltmsdkobf/jm;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget v1, p0, Ltmsdkobf/jj;->ts:I

    iget v2, p1, Ltmsdkobf/jj;->ts:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget v1, p0, Ltmsdkobf/jj;->tt:I

    iget v2, p1, Ltmsdkobf/jj;->tt:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Ltmsdkobf/jj;->url:Ljava/lang/String;

    iget-object v2, p1, Ltmsdkobf/jj;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-boolean v1, p0, Ltmsdkobf/jj;->tu:Z

    iget-boolean v2, p1, Ltmsdkobf/jj;->tu:Z

    invoke-static {v1, v2}, Ltmsdkobf/dg;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-boolean v1, p0, Ltmsdkobf/jj;->tv:Z

    iget-boolean v2, p1, Ltmsdkobf/jj;->tv:Z

    invoke-static {v1, v2}, Ltmsdkobf/dg;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltmsdkobf/jj;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 149
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public final q(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/jl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Ltmsdkobf/jj;->tq:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public final readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    sget-object v0, Ltmsdkobf/jj;->tw:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltmsdkobf/jj;->tw:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ltmsdkobf/jl;

    invoke-direct {v0}, Ltmsdkobf/jl;-><init>()V

    .line 191
    sget-object v1, Ltmsdkobf/jj;->tw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    sget-object v0, Ltmsdkobf/jj;->tw:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v2}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->q(Ljava/util/ArrayList;)V

    .line 195
    sget-object v0, Ltmsdkobf/jj;->tx:Ltmsdkobf/jm;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Ltmsdkobf/jm;

    invoke-direct {v0}, Ltmsdkobf/jm;-><init>()V

    sput-object v0, Ltmsdkobf/jj;->tx:Ltmsdkobf/jm;

    .line 199
    :cond_1
    sget-object v0, Ltmsdkobf/jj;->tx:Ltmsdkobf/jm;

    invoke-virtual {p1, v0, v2, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/jm;

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->a(Ltmsdkobf/jm;)V

    .line 201
    iget v0, p0, Ltmsdkobf/jj;->ts:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->bb(I)V

    .line 203
    iget v0, p0, Ltmsdkobf/jj;->tt:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->bc(I)V

    .line 205
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->setUrl(Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Ltmsdkobf/jj;->tu:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->s(Z)V

    .line 209
    iget-boolean v0, p0, Ltmsdkobf/jj;->tv:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/jj;->t(Z)V

    .line 211
    return-void
.end method

.method public final s(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Ltmsdkobf/jj;->tu:Z

    .line 93
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Ltmsdkobf/jj;->url:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public final t(Z)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Ltmsdkobf/jj;->tv:Z

    .line 103
    return-void
.end method

.method public final writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Ltmsdkobf/jj;->tq:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 174
    iget-object v0, p0, Ltmsdkobf/jj;->tr:Ltmsdkobf/jm;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 175
    iget v0, p0, Ltmsdkobf/jj;->ts:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 176
    iget v0, p0, Ltmsdkobf/jj;->tt:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 177
    iget-object v0, p0, Ltmsdkobf/jj;->url:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 178
    iget-boolean v0, p0, Ltmsdkobf/jj;->tu:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(ZI)V

    .line 179
    iget-boolean v0, p0, Ltmsdkobf/jj;->tv:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(ZI)V

    .line 180
    return-void
.end method
