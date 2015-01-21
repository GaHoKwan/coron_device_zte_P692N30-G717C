.class public final Ltmsdkobf/cq;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static jb:Ltmsdkobf/bf;


# instance fields
.field public iY:Ljava/lang/String;

.field public iZ:I

.field public ja:Ltmsdkobf/bf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cq;->iY:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/cq;->iZ:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/cq;->ja:Ltmsdkobf/bf;

    .line 19
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cq;->iY:Ljava/lang/String;

    .line 46
    iget v0, p0, Ltmsdkobf/cq;->iZ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/cq;->iZ:I

    .line 47
    sget-object v0, Ltmsdkobf/cq;->jb:Ltmsdkobf/bf;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ltmsdkobf/bf;

    invoke-direct {v0}, Ltmsdkobf/bf;-><init>()V

    sput-object v0, Ltmsdkobf/cq;->jb:Ltmsdkobf/bf;

    .line 51
    :cond_0
    sget-object v0, Ltmsdkobf/cq;->jb:Ltmsdkobf/bf;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/bf;

    iput-object v0, p0, Ltmsdkobf/cq;->ja:Ltmsdkobf/bf;

    .line 52
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 30
    iget-object v0, p0, Ltmsdkobf/cq;->iY:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Ltmsdkobf/cq;->iY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 34
    :cond_0
    iget v0, p0, Ltmsdkobf/cq;->iZ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 35
    iget-object v0, p0, Ltmsdkobf/cq;->ja:Ltmsdkobf/bf;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Ltmsdkobf/cq;->ja:Ltmsdkobf/bf;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 39
    :cond_1
    return-void
.end method
