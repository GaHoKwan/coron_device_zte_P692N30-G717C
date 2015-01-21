.class public final Ltmsdkobf/m;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static at:[B


# instance fields
.field public aq:I

.field public ar:[B

.field public as:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/m;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput v1, p0, Ltmsdkobf/m;->aq:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/m;->ar:[B

    .line 25
    iput v1, p0, Ltmsdkobf/m;->as:I

    .line 59
    iget v0, p0, Ltmsdkobf/m;->aq:I

    invoke-virtual {p0, v0}, Ltmsdkobf/m;->j(I)V

    .line 60
    iget-object v0, p0, Ltmsdkobf/m;->ar:[B

    invoke-virtual {p0, v0}, Ltmsdkobf/m;->a([B)V

    .line 61
    iget v0, p0, Ltmsdkobf/m;->as:I

    invoke-virtual {p0, v0}, Ltmsdkobf/m;->k(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0
    .parameter "param"

    .prologue
    .line 44
    iput-object p1, p0, Ltmsdkobf/m;->ar:[B

    .line 45
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
    sget-boolean v2, Ltmsdkobf/m;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public d()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Ltmsdkobf/m;->aq:I

    return v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltmsdkobf/m;->ar:[B

    return-object v0
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
    check-cast v0, Ltmsdkobf/m;

    .line 79
    .local v0, t:Ltmsdkobf/m;
    iget v2, p0, Ltmsdkobf/m;->aq:I

    iget v3, v0, Ltmsdkobf/m;->aq:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/m;->ar:[B

    iget-object v3, v0, Ltmsdkobf/m;->ar:[B

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/m;->as:I

    iget v3, v0, Ltmsdkobf/m;->as:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
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

.method public j(I)V
    .locals 0
    .parameter "cmdid"

    .prologue
    .line 34
    iput p1, p0, Ltmsdkobf/m;->aq:I

    .line 35
    return-void
.end method

.method public k(I)V
    .locals 0
    .parameter "seqid"

    .prologue
    .line 54
    iput p1, p0, Ltmsdkobf/m;->as:I

    .line 55
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 122
    iget v1, p0, Ltmsdkobf/m;->aq:I

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/m;->j(I)V

    .line 124
    sget-object v1, Ltmsdkobf/m;->at:[B

    if-nez v1, :cond_0

    .line 126
    new-array v1, v3, [B

    check-cast v1, [B

    sput-object v1, Ltmsdkobf/m;->at:[B

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, __var_1:B
    sget-object v1, Ltmsdkobf/m;->at:[B

    check-cast v1, [B

    aput-byte v0, v1, v2

    .line 130
    .end local v0           #__var_1:B
    :cond_0
    sget-object v1, Ltmsdkobf/m;->at:[B

    invoke-virtual {p1, v1, v3, v3}, Ltmsdkobf/dd;->a([BIZ)[B

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Ltmsdkobf/m;->a([B)V

    .line 132
    iget v1, p0, Ltmsdkobf/m;->as:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/m;->k(I)V

    .line 134
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 113
    iget v0, p0, Ltmsdkobf/m;->aq:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 114
    iget-object v0, p0, Ltmsdkobf/m;->ar:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a([BI)V

    .line 115
    iget v0, p0, Ltmsdkobf/m;->as:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 116
    return-void
.end method
