.class public final Ltmsdkobf/bg;
.super Ltmsdkobf/df;
.source "SourceFile"


# instance fields
.field public aM:Ljava/lang/String;

.field public eX:Ljava/lang/String;

.field public eY:I

.field public eZ:I

.field public fa:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bg;->eX:Ljava/lang/String;

    .line 13
    iput v1, p0, Ltmsdkobf/bg;->eY:I

    .line 15
    iput v1, p0, Ltmsdkobf/bg;->eZ:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bg;->fa:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bg;->aM:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 52
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bg;->eX:Ljava/lang/String;

    .line 53
    iget v0, p0, Ltmsdkobf/bg;->eY:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bg;->eY:I

    .line 54
    iget v0, p0, Ltmsdkobf/bg;->eZ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bg;->eZ:I

    .line 55
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bg;->fa:Ljava/lang/String;

    .line 56
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bg;->aM:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 36
    iget-object v0, p0, Ltmsdkobf/bg;->eX:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 37
    iget v0, p0, Ltmsdkobf/bg;->eY:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 38
    iget v0, p0, Ltmsdkobf/bg;->eZ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 39
    iget-object v0, p0, Ltmsdkobf/bg;->fa:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Ltmsdkobf/bg;->fa:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 43
    :cond_0
    iget-object v0, p0, Ltmsdkobf/bg;->aM:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Ltmsdkobf/bg;->aM:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 47
    :cond_1
    return-void
.end method
