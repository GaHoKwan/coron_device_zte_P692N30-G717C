.class public final Ltmsdkobf/o;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public aC:Ljava/lang/String;

.field public aD:Ljava/lang/String;

.field public aE:Ljava/lang/String;

.field public aF:Ljava/lang/String;

.field public aG:Ljava/lang/String;

.field public aH:Ljava/lang/String;

.field public aI:Ljava/lang/String;

.field public aJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/o;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/o;->aC:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/o;->aD:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/o;->aE:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/o;->aF:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/o;->aG:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/o;->aH:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/o;->aI:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/o;->aJ:Ljava/lang/String;

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
    sget-boolean v2, Ltmsdkobf/o;->N:Z

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
    .line 229
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 230
    .local v0, _ds:Ltmsdkobf/db;
    iget-object v1, p0, Ltmsdkobf/o;->aC:Ljava/lang/String;

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 231
    iget-object v1, p0, Ltmsdkobf/o;->aD:Ljava/lang/String;

    const-string v2, "data2"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 232
    iget-object v1, p0, Ltmsdkobf/o;->aE:Ljava/lang/String;

    const-string v2, "data3"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 233
    iget-object v1, p0, Ltmsdkobf/o;->aF:Ljava/lang/String;

    const-string v2, "data4"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 234
    iget-object v1, p0, Ltmsdkobf/o;->aG:Ljava/lang/String;

    const-string v2, "data5"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 235
    iget-object v1, p0, Ltmsdkobf/o;->aH:Ljava/lang/String;

    const-string v2, "data6"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 236
    iget-object v1, p0, Ltmsdkobf/o;->aI:Ljava/lang/String;

    const-string v2, "data7"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 237
    iget-object v1, p0, Ltmsdkobf/o;->aJ:Ljava/lang/String;

    const-string v2, "data8"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 238
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
    check-cast v0, Ltmsdkobf/o;

    .line 141
    .local v0, t:Ltmsdkobf/o;
    iget-object v2, p0, Ltmsdkobf/o;->aC:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/o;->aC:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/o;->aD:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/o;->aD:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/o;->aE:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/o;->aE:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/o;->aF:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/o;->aF:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/o;->aG:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/o;->aG:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/o;->aH:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/o;->aH:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/o;->aI:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/o;->aI:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/o;->aJ:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/o;->aJ:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .locals 2
    .parameter "_is"

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/o;->aC:Ljava/lang/String;

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/o;->aD:Ljava/lang/String;

    .line 219
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/o;->aE:Ljava/lang/String;

    .line 220
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/o;->aF:Ljava/lang/String;

    .line 221
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/o;->aG:Ljava/lang/String;

    .line 222
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/o;->aH:Ljava/lang/String;

    .line 223
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/o;->aI:Ljava/lang/String;

    .line 224
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/o;->aJ:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 180
    iget-object v0, p0, Ltmsdkobf/o;->aC:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Ltmsdkobf/o;->aC:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 184
    :cond_0
    iget-object v0, p0, Ltmsdkobf/o;->aD:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Ltmsdkobf/o;->aD:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 188
    :cond_1
    iget-object v0, p0, Ltmsdkobf/o;->aE:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Ltmsdkobf/o;->aE:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 192
    :cond_2
    iget-object v0, p0, Ltmsdkobf/o;->aF:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Ltmsdkobf/o;->aF:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 196
    :cond_3
    iget-object v0, p0, Ltmsdkobf/o;->aG:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Ltmsdkobf/o;->aG:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 200
    :cond_4
    iget-object v0, p0, Ltmsdkobf/o;->aH:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Ltmsdkobf/o;->aH:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 204
    :cond_5
    iget-object v0, p0, Ltmsdkobf/o;->aI:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Ltmsdkobf/o;->aI:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 208
    :cond_6
    iget-object v0, p0, Ltmsdkobf/o;->aJ:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Ltmsdkobf/o;->aJ:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 212
    :cond_7
    return-void
.end method
