.class public final Ltmsdkobf/ax;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z


# instance fields
.field public postfix:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public type:I

.field public unit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/ax;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/ax;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput v0, p0, Ltmsdkobf/ax;->unit:I

    .line 23
    iput v0, p0, Ltmsdkobf/ax;->type:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ax;->prefix:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    .line 71
    iget v0, p0, Ltmsdkobf/ax;->unit:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ax;->E(I)V

    .line 72
    iget v0, p0, Ltmsdkobf/ax;->type:I

    invoke-virtual {p0, v0}, Ltmsdkobf/ax;->setType(I)V

    .line 73
    iget-object v0, p0, Ltmsdkobf/ax;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ax;->setPrefix(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/ax;->L(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public E(I)V
    .locals 0
    .parameter "unit"

    .prologue
    .line 36
    iput p1, p0, Ltmsdkobf/ax;->unit:I

    .line 37
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0
    .parameter "postfix"

    .prologue
    .line 66
    iput-object p1, p0, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 117
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 119
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/ax;->N:Z

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

    .line 87
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 92
    check-cast v0, Ltmsdkobf/ax;

    .line 93
    .local v0, t:Ltmsdkobf/ax;
    iget v2, p0, Ltmsdkobf/ax;->unit:I

    iget v3, v0, Ltmsdkobf/ax;->unit:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/ax;->type:I

    iget v3, v0, Ltmsdkobf/ax;->type:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/ax;->prefix:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/ax;->prefix:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    iget v0, p0, Ltmsdkobf/ax;->unit:I

    invoke-virtual {p1, v0, v2, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ax;->E(I)V

    .line 142
    iget v0, p0, Ltmsdkobf/ax;->type:I

    invoke-virtual {p1, v0, v1, v1}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ax;->setType(I)V

    .line 144
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ax;->setPrefix(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/ax;->L(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 56
    iput-object p1, p0, Ltmsdkobf/ax;->prefix:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 46
    iput p1, p0, Ltmsdkobf/ax;->type:I

    .line 47
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 128
    iget v0, p0, Ltmsdkobf/ax;->unit:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 129
    iget v0, p0, Ltmsdkobf/ax;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 130
    iget-object v0, p0, Ltmsdkobf/ax;->prefix:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Ltmsdkobf/ax;->postfix:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 135
    :cond_0
    return-void
.end method
