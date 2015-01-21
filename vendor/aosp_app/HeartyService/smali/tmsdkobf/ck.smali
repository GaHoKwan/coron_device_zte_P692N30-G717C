.class public final Ltmsdkobf/ck;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public d:I

.field public iA:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/ck;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/ck;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput v0, p0, Ltmsdkobf/ck;->d:I

    .line 23
    iput v0, p0, Ltmsdkobf/ck;->version:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Ltmsdkobf/ck;->iA:I

    .line 59
    iget v0, p0, Ltmsdkobf/ck;->d:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ck;->m(I)V

    .line 60
    iget v0, p0, Ltmsdkobf/ck;->version:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ck;->setVersion(I)V

    .line 61
    iget v0, p0, Ltmsdkobf/ck;->iA:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ck;->an(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public an(I)V
    .locals 0
    .parameter "engine_version"

    .prologue
    .line 54
    iput p1, p0, Ltmsdkobf/ck;->iA:I

    .line 55
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 102
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 104
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 106
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/ck;->N:Z

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

    .line 73
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Ltmsdkobf/ck;

    .line 79
    .local v0, t:Ltmsdkobf/ck;
    iget v2, p0, Ltmsdkobf/ck;->d:I

    iget v3, v0, Ltmsdkobf/ck;->d:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ck;->version:I

    iget v3, v0, Ltmsdkobf/ck;->version:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ck;->iA:I

    iget v3, v0, Ltmsdkobf/ck;->iA:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ltmsdkobf/ck;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v1, 0x0

    return v1
.end method

.method public j()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Ltmsdkobf/ck;->d:I

    return v0
.end method

.method public m(I)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 34
    iput p1, p0, Ltmsdkobf/ck;->d:I

    .line 35
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    iget v0, p0, Ltmsdkobf/ck;->d:I

    invoke-virtual {p1, v0, v2, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ck;->m(I)V

    .line 123
    iget v0, p0, Ltmsdkobf/ck;->version:I

    invoke-virtual {p1, v0, v1, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ck;->setVersion(I)V

    .line 125
    iget v0, p0, Ltmsdkobf/ck;->iA:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ck;->an(I)V

    .line 127
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 44
    iput p1, p0, Ltmsdkobf/ck;->version:I

    .line 45
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 113
    iget v0, p0, Ltmsdkobf/ck;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 114
    iget v0, p0, Ltmsdkobf/ck;->version:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 115
    iget v0, p0, Ltmsdkobf/ck;->iA:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 116
    return-void
.end method
