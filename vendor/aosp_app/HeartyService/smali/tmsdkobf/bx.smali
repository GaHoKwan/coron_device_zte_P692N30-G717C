.class public final Ltmsdkobf/bx;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static gW:[B


# instance fields
.field public gG:[B

.field public ia:I

.field public ib:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput v1, p0, Ltmsdkobf/bx;->status:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/bx;->gG:[B

    .line 15
    iput v1, p0, Ltmsdkobf/bx;->ia:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Ltmsdkobf/bx;->ib:I

    .line 21
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    iget v1, p0, Ltmsdkobf/bx;->status:I

    invoke-virtual {p1, v1, v3, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/bx;->status:I

    .line 47
    sget-object v1, Ltmsdkobf/bx;->gW:[B

    if-nez v1, :cond_0

    .line 49
    new-array v1, v2, [B

    check-cast v1, [B

    sput-object v1, Ltmsdkobf/bx;->gW:[B

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, __var_50:B
    sget-object v1, Ltmsdkobf/bx;->gW:[B

    check-cast v1, [B

    aput-byte v0, v1, v3

    .line 53
    .end local v0           #__var_50:B
    :cond_0
    sget-object v1, Ltmsdkobf/bx;->gW:[B

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a([BIZ)[B

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ltmsdkobf/bx;->gG:[B

    .line 54
    iget v1, p0, Ltmsdkobf/bx;->ia:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/bx;->ia:I

    .line 55
    iget v1, p0, Ltmsdkobf/bx;->ib:I

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/bx;->ib:I

    .line 56
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 33
    iget v0, p0, Ltmsdkobf/bx;->status:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 34
    iget-object v0, p0, Ltmsdkobf/bx;->gG:[B

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ltmsdkobf/bx;->gG:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a([BI)V

    .line 38
    :cond_0
    iget v0, p0, Ltmsdkobf/bx;->ia:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 39
    iget v0, p0, Ltmsdkobf/bx;->ib:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 40
    return-void
.end method
