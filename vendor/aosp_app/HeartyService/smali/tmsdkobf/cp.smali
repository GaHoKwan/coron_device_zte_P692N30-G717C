.class public final Ltmsdkobf/cp;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public U:Ljava/lang/String;

.field public accuracy:D

.field public iU:S

.field public iV:S

.field public iW:J

.field public iX:J

.field public ix:D

.field public iy:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/cp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/cp;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 118
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput-short v0, p0, Ltmsdkobf/cp;->iU:S

    .line 23
    iput-short v0, p0, Ltmsdkobf/cp;->iV:S

    .line 25
    iput-wide v3, p0, Ltmsdkobf/cp;->iW:J

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cp;->U:Ljava/lang/String;

    .line 29
    iput-wide v3, p0, Ltmsdkobf/cp;->iX:J

    .line 31
    iput-wide v1, p0, Ltmsdkobf/cp;->ix:D

    .line 33
    iput-wide v1, p0, Ltmsdkobf/cp;->iy:D

    .line 35
    iput-wide v1, p0, Ltmsdkobf/cp;->accuracy:D

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
    sget-boolean v2, Ltmsdkobf/cp;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
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
    check-cast v0, Ltmsdkobf/cp;

    .line 141
    .local v0, t:Ltmsdkobf/cp;
    iget-short v2, p0, Ltmsdkobf/cp;->iU:S

    iget-short v3, v0, Ltmsdkobf/cp;->iU:S

    invoke-static {v2, v3}, Ltmsdkobf/dg;->a(SS)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-short v2, p0, Ltmsdkobf/cp;->iV:S

    iget-short v3, v0, Ltmsdkobf/cp;->iV:S

    invoke-static {v2, v3}, Ltmsdkobf/dg;->a(SS)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ltmsdkobf/cp;->iW:J

    iget-wide v4, v0, Ltmsdkobf/cp;->iW:J

    invoke-static {v2, v3, v4, v5}, Ltmsdkobf/dg;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/cp;->U:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/cp;->U:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ltmsdkobf/cp;->iX:J

    iget-wide v4, v0, Ltmsdkobf/cp;->iX:J

    invoke-static {v2, v3, v4, v5}, Ltmsdkobf/dg;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ltmsdkobf/cp;->ix:D

    iget-wide v4, v0, Ltmsdkobf/cp;->ix:D

    invoke-static {v2, v3, v4, v5}, Ltmsdkobf/dg;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ltmsdkobf/cp;->iy:D

    iget-wide v4, v0, Ltmsdkobf/cp;->iy:D

    invoke-static {v2, v3, v4, v5}, Ltmsdkobf/dg;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ltmsdkobf/cp;->accuracy:D

    iget-wide v4, v0, Ltmsdkobf/cp;->accuracy:D

    invoke-static {v2, v3, v4, v5}, Ltmsdkobf/dg;->a(DD)Z

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
    .locals 5
    .parameter "_is"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 193
    iget-short v0, p0, Ltmsdkobf/cp;->iU:S

    invoke-virtual {p1, v0, v4, v3}, Ltmsdkobf/dd;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Ltmsdkobf/cp;->iU:S

    .line 194
    iget-short v0, p0, Ltmsdkobf/cp;->iV:S

    invoke-virtual {p1, v0, v3, v3}, Ltmsdkobf/dd;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Ltmsdkobf/cp;->iV:S

    .line 195
    iget-wide v0, p0, Ltmsdkobf/cp;->iW:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/cp;->iW:J

    .line 196
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cp;->U:Ljava/lang/String;

    .line 197
    iget-wide v0, p0, Ltmsdkobf/cp;->iX:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/cp;->iX:J

    .line 198
    iget-wide v0, p0, Ltmsdkobf/cp;->ix:D

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v4}, Ltmsdkobf/dd;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/cp;->ix:D

    .line 199
    iget-wide v0, p0, Ltmsdkobf/cp;->iy:D

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v4}, Ltmsdkobf/dd;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/cp;->iy:D

    .line 200
    iget-wide v0, p0, Ltmsdkobf/cp;->accuracy:D

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v4}, Ltmsdkobf/dd;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/cp;->accuracy:D

    .line 201
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 180
    iget-short v0, p0, Ltmsdkobf/cp;->iU:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(SI)V

    .line 181
    iget-short v0, p0, Ltmsdkobf/cp;->iV:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(SI)V

    .line 182
    iget-wide v0, p0, Ltmsdkobf/cp;->iW:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(JI)V

    .line 183
    iget-object v0, p0, Ltmsdkobf/cp;->U:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 184
    iget-wide v0, p0, Ltmsdkobf/cp;->iX:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(JI)V

    .line 185
    iget-wide v0, p0, Ltmsdkobf/cp;->ix:D

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(DI)V

    .line 186
    iget-wide v0, p0, Ltmsdkobf/cp;->iy:D

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(DI)V

    .line 187
    iget-wide v0, p0, Ltmsdkobf/cp;->accuracy:D

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(DI)V

    .line 188
    return-void
.end method
