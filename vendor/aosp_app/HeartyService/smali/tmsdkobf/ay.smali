.class public final Ltmsdkobf/ay;
.super Ltmsdkobf/df;
.source "SourceFile"


# instance fields
.field public postfix:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public type:I

.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput v0, p0, Ltmsdkobf/ay;->unit:I

    .line 13
    iput v0, p0, Ltmsdkobf/ay;->type:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ay;->prefix:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/ay;->postfix:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    .line 48
    iget v0, p0, Ltmsdkobf/ay;->unit:I

    invoke-virtual {p1, v0, v2, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/ay;->unit:I

    .line 49
    iget v0, p0, Ltmsdkobf/ay;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/ay;->type:I

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ay;->prefix:Ljava/lang/String;

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ay;->postfix:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 33
    iget v0, p0, Ltmsdkobf/ay;->unit:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 34
    iget v0, p0, Ltmsdkobf/ay;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 35
    iget-object v0, p0, Ltmsdkobf/ay;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Ltmsdkobf/ay;->prefix:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 39
    :cond_0
    iget-object v0, p0, Ltmsdkobf/ay;->postfix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Ltmsdkobf/ay;->postfix:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 43
    :cond_1
    return-void
.end method
