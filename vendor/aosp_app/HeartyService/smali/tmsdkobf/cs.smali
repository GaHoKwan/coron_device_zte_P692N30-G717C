.class public final Ltmsdkobf/cs;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static final synthetic N:Z


# instance fields
.field public ji:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/cs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/cs;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/cs;->ji:I

    .line 30
    iget v0, p0, Ltmsdkobf/cs;->ji:I

    invoke-virtual {p0, v0}, Ltmsdkobf/cs;->ar(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public D()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Ltmsdkobf/cs;->ji:I

    return v0
.end method

.method public ar(I)V
    .locals 0
    .parameter "is_succ"

    .prologue
    .line 25
    iput p1, p0, Ltmsdkobf/cs;->ji:I

    .line 26
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 50
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 52
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 54
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/cs;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Ltmsdkobf/cs;

    .line 41
    .local v0, t:Ltmsdkobf/cs;
    iget v1, p0, Ltmsdkobf/cs;->ji:I

    iget v2, v0, Ltmsdkobf/cs;->ji:I

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(II)Z

    move-result v1

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    .line 67
    iget v0, p0, Ltmsdkobf/cs;->ji:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Ltmsdkobf/cs;->ar(I)V

    .line 69
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 61
    iget v0, p0, Ltmsdkobf/cs;->ji:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 62
    return-void
.end method
