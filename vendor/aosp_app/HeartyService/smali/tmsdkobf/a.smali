.class public final Ltmsdkobf/a;
.super Ltmsdkobf/df;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public e:B

.field public errorCode:I

.field public f:I

.field public fileName:Ljava/lang/String;

.field public g:I

.field public h:I

.field public j:B

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/a;->fileName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/a;->c:Ljava/lang/String;

    .line 12
    iput v1, p0, Ltmsdkobf/a;->d:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/a;->url:Ljava/lang/String;

    .line 14
    iput-byte v1, p0, Ltmsdkobf/a;->e:B

    .line 15
    iput v1, p0, Ltmsdkobf/a;->f:I

    .line 16
    iput v1, p0, Ltmsdkobf/a;->g:I

    .line 17
    iput v1, p0, Ltmsdkobf/a;->h:I

    .line 18
    iput-byte v1, p0, Ltmsdkobf/a;->j:B

    .line 19
    iput v1, p0, Ltmsdkobf/a;->errorCode:I

    .line 20
    iput v1, p0, Ltmsdkobf/a;->k:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/a;->l:Ljava/lang/String;

    .line 22
    iput v1, p0, Ltmsdkobf/a;->m:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/a;->n:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/a;->o:Ljava/lang/String;

    .line 25
    iput v2, p0, Ltmsdkobf/a;->p:I

    .line 26
    iput v2, p0, Ltmsdkobf/a;->q:I

    .line 27
    iput v1, p0, Ltmsdkobf/a;->r:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/a;->s:Ljava/lang/String;

    .line 29
    iput v2, p0, Ltmsdkobf/a;->t:I

    .line 30
    iput v1, p0, Ltmsdkobf/a;->u:I

    .line 33
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1, v2, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/a;->fileName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v3, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/a;->c:Ljava/lang/String;

    .line 87
    iget v0, p0, Ltmsdkobf/a;->d:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->d:I

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/a;->url:Ljava/lang/String;

    .line 89
    iget-byte v0, p0, Ltmsdkobf/a;->e:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Ltmsdkobf/a;->e:B

    .line 90
    iget v0, p0, Ltmsdkobf/a;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->f:I

    .line 91
    iget v0, p0, Ltmsdkobf/a;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->g:I

    .line 92
    iget v0, p0, Ltmsdkobf/a;->h:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->h:I

    .line 93
    iget-byte v0, p0, Ltmsdkobf/a;->j:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Ltmsdkobf/a;->j:B

    .line 94
    iget v0, p0, Ltmsdkobf/a;->errorCode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->errorCode:I

    .line 95
    iget v0, p0, Ltmsdkobf/a;->k:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->k:I

    .line 96
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/a;->l:Ljava/lang/String;

    .line 97
    iget v0, p0, Ltmsdkobf/a;->m:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->m:I

    .line 98
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/a;->n:Ljava/lang/String;

    .line 99
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/a;->o:Ljava/lang/String;

    .line 100
    iget v0, p0, Ltmsdkobf/a;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->p:I

    .line 101
    iget v0, p0, Ltmsdkobf/a;->q:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->q:I

    .line 102
    iget v0, p0, Ltmsdkobf/a;->r:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->r:I

    .line 103
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/a;->s:Ljava/lang/String;

    .line 104
    iget v0, p0, Ltmsdkobf/a;->t:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->t:I

    .line 105
    iget v0, p0, Ltmsdkobf/a;->u:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/a;->u:I

    .line 106
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    const/4 v2, -0x1

    .line 36
    iget-object v0, p0, Ltmsdkobf/a;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Ltmsdkobf/a;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 38
    iget v0, p0, Ltmsdkobf/a;->d:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 39
    iget-object v0, p0, Ltmsdkobf/a;->url:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 40
    iget-byte v0, p0, Ltmsdkobf/a;->e:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->b(BI)V

    .line 41
    iget v0, p0, Ltmsdkobf/a;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 42
    iget v0, p0, Ltmsdkobf/a;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 43
    iget v0, p0, Ltmsdkobf/a;->h:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 44
    iget-byte v0, p0, Ltmsdkobf/a;->j:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->b(BI)V

    .line 45
    iget v0, p0, Ltmsdkobf/a;->errorCode:I

    if-eqz v0, :cond_0

    .line 46
    iget v0, p0, Ltmsdkobf/a;->errorCode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 48
    :cond_0
    iget v0, p0, Ltmsdkobf/a;->k:I

    if-eqz v0, :cond_1

    .line 49
    iget v0, p0, Ltmsdkobf/a;->k:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 51
    :cond_1
    iget-object v0, p0, Ltmsdkobf/a;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Ltmsdkobf/a;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 54
    :cond_2
    iget v0, p0, Ltmsdkobf/a;->m:I

    if-eqz v0, :cond_3

    .line 55
    iget v0, p0, Ltmsdkobf/a;->m:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 57
    :cond_3
    iget-object v0, p0, Ltmsdkobf/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Ltmsdkobf/a;->n:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 60
    :cond_4
    iget-object v0, p0, Ltmsdkobf/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, Ltmsdkobf/a;->o:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 63
    :cond_5
    iget v0, p0, Ltmsdkobf/a;->p:I

    if-eq v0, v2, :cond_6

    .line 64
    iget v0, p0, Ltmsdkobf/a;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 66
    :cond_6
    iget v0, p0, Ltmsdkobf/a;->q:I

    if-eq v0, v2, :cond_7

    .line 67
    iget v0, p0, Ltmsdkobf/a;->q:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 69
    :cond_7
    iget v0, p0, Ltmsdkobf/a;->r:I

    if-eqz v0, :cond_8

    .line 70
    iget v0, p0, Ltmsdkobf/a;->r:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 72
    :cond_8
    iget-object v0, p0, Ltmsdkobf/a;->s:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Ltmsdkobf/a;->s:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 75
    :cond_9
    iget v0, p0, Ltmsdkobf/a;->t:I

    if-eq v0, v2, :cond_a

    .line 76
    iget v0, p0, Ltmsdkobf/a;->t:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 78
    :cond_a
    iget v0, p0, Ltmsdkobf/a;->u:I

    if-eqz v0, :cond_b

    .line 79
    iget v0, p0, Ltmsdkobf/a;->u:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 81
    :cond_b
    return-void
.end method
