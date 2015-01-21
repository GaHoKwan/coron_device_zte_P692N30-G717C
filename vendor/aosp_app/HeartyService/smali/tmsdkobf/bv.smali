.class public final Ltmsdkobf/bv;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public hj:Ljava/lang/String;

.field public hk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bv;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/bv;->hk:I

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 85
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 87
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 89
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bv;->N:Z

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
    .line 113
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 114
    .local v0, _ds:Ltmsdkobf/db;
    iget-object v1, p0, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    const-string v2, "riskDesc"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/lang/String;Ljava/lang/String;)Ltmsdkobf/db;

    .line 115
    iget v1, p0, Ltmsdkobf/bv;->hk:I

    const-string v2, "riskLevel"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ILjava/lang/String;)Ltmsdkobf/db;

    .line 116
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 62
    check-cast v0, Ltmsdkobf/bv;

    .line 63
    .local v0, t:Ltmsdkobf/bv;
    iget-object v2, p0, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bv;->hk:I

    iget v3, v0, Ltmsdkobf/bv;->hk:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    .line 108
    iget v0, p0, Ltmsdkobf/bv;->hk:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bv;->hk:I

    .line 109
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 96
    iget-object v0, p0, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ltmsdkobf/bv;->hj:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 100
    :cond_0
    iget v0, p0, Ltmsdkobf/bv;->hk:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 101
    return-void
.end method
