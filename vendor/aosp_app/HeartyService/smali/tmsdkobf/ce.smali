.class public final Ltmsdkobf/ce;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public pos:I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/ce;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/ce;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput v0, p0, Ltmsdkobf/ce;->pos:I

    .line 23
    iput v0, p0, Ltmsdkobf/ce;->size:I

    .line 47
    iget v0, p0, Ltmsdkobf/ce;->pos:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ce;->ah(I)V

    .line 48
    iget v0, p0, Ltmsdkobf/ce;->size:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ce;->setSize(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public ah(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 32
    iput p1, p0, Ltmsdkobf/ce;->pos:I

    .line 33
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 87
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 89
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/ce;->N:Z

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

    .line 59
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 64
    check-cast v0, Ltmsdkobf/ce;

    .line 65
    .local v0, t:Ltmsdkobf/ce;
    iget v2, p0, Ltmsdkobf/ce;->pos:I

    iget v3, v0, Ltmsdkobf/ce;->pos:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ce;->size:I

    iget v3, v0, Ltmsdkobf/ce;->size:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Ltmsdkobf/ce;->pos:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Ltmsdkobf/ce;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    .line 105
    iget v0, p0, Ltmsdkobf/ce;->pos:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ce;->ah(I)V

    .line 107
    iget v0, p0, Ltmsdkobf/ce;->size:I

    invoke-virtual {p1, v0, v2, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ce;->setSize(I)V

    .line 109
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 42
    iput p1, p0, Ltmsdkobf/ce;->size:I

    .line 43
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 98
    iget v0, p0, Ltmsdkobf/ce;->pos:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 99
    iget v0, p0, Ltmsdkobf/ce;->size:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 100
    return-void
.end method