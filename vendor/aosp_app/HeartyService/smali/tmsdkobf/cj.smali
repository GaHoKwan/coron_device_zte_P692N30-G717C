.class public final Ltmsdkobf/cj;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static iz:Ltmsdkobf/aq;


# instance fields
.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public ab:I

.field public bg:I

.field public fe:Ljava/lang/String;

.field public ff:Ljava/lang/String;

.field public fj:Ljava/lang/String;

.field public fk:Ljava/lang/String;

.field public fl:Ljava/lang/String;

.field public fm:S

.field public fo:I

.field public imsi:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public iu:I

.field public iv:Ltmsdkobf/aq;

.field public iw:I

.field public ix:D

.field public iy:D

.field public product:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->U:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->ff:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->fj:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->ip:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->fe:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->fk:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->W:Ljava/lang/String;

    .line 25
    sget-object v0, Ltmsdkobf/t;->aY:Ltmsdkobf/t;

    invoke-virtual {v0}, Ltmsdkobf/t;->value()I

    move-result v0

    iput v0, p0, Ltmsdkobf/cj;->iu:I

    .line 27
    sget-object v0, Ltmsdkobf/x;->bD:Ltmsdkobf/x;

    invoke-virtual {v0}, Ltmsdkobf/x;->value()I

    move-result v0

    iput v0, p0, Ltmsdkobf/cj;->product:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/cj;->iv:Ltmsdkobf/aq;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->V:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->imsi:Ljava/lang/String;

    .line 35
    iput v1, p0, Ltmsdkobf/cj;->ab:I

    .line 37
    iput v1, p0, Ltmsdkobf/cj;->iw:I

    .line 39
    iput v1, p0, Ltmsdkobf/cj;->bg:I

    .line 41
    iput v1, p0, Ltmsdkobf/cj;->fo:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cj;->fl:Ljava/lang/String;

    .line 45
    iput-short v1, p0, Ltmsdkobf/cj;->fm:S

    .line 47
    iput-wide v2, p0, Ltmsdkobf/cj;->ix:D

    .line 49
    iput-wide v2, p0, Ltmsdkobf/cj;->iy:D

    .line 53
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1, v3, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->U:Ljava/lang/String;

    .line 140
    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->ff:Ljava/lang/String;

    .line 141
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->fj:Ljava/lang/String;

    .line 142
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->ip:Ljava/lang/String;

    .line 143
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->fe:Ljava/lang/String;

    .line 144
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->fk:Ljava/lang/String;

    .line 145
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->W:Ljava/lang/String;

    .line 146
    iget v0, p0, Ltmsdkobf/cj;->iu:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/cj;->iu:I

    .line 147
    iget v0, p0, Ltmsdkobf/cj;->product:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/cj;->product:I

    .line 148
    sget-object v0, Ltmsdkobf/cj;->iz:Ltmsdkobf/aq;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ltmsdkobf/aq;

    invoke-direct {v0}, Ltmsdkobf/aq;-><init>()V

    sput-object v0, Ltmsdkobf/cj;->iz:Ltmsdkobf/aq;

    .line 152
    :cond_0
    sget-object v0, Ltmsdkobf/cj;->iz:Ltmsdkobf/aq;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v0

    check-cast v0, Ltmsdkobf/aq;

    iput-object v0, p0, Ltmsdkobf/cj;->iv:Ltmsdkobf/aq;

    .line 153
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->V:Ljava/lang/String;

    .line 154
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->imsi:Ljava/lang/String;

    .line 155
    iget v0, p0, Ltmsdkobf/cj;->ab:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/cj;->ab:I

    .line 156
    iget v0, p0, Ltmsdkobf/cj;->iw:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/cj;->iw:I

    .line 157
    iget v0, p0, Ltmsdkobf/cj;->bg:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/cj;->bg:I

    .line 158
    iget v0, p0, Ltmsdkobf/cj;->fo:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/cj;->fo:I

    .line 159
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/cj;->fl:Ljava/lang/String;

    .line 160
    iget-short v0, p0, Ltmsdkobf/cj;->fm:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Ltmsdkobf/cj;->fm:S

    .line 161
    iget-wide v0, p0, Ltmsdkobf/cj;->ix:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2, v3}, Ltmsdkobf/dd;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/cj;->ix:D

    .line 162
    iget-wide v0, p0, Ltmsdkobf/cj;->iy:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2, v3}, Ltmsdkobf/dd;->a(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/cj;->iy:D

    .line 163
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 81
    iget-object v0, p0, Ltmsdkobf/cj;->U:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Ltmsdkobf/cj;->ff:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Ltmsdkobf/cj;->ff:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 86
    :cond_0
    iget-object v0, p0, Ltmsdkobf/cj;->fj:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Ltmsdkobf/cj;->fj:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 90
    :cond_1
    iget-object v0, p0, Ltmsdkobf/cj;->ip:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Ltmsdkobf/cj;->ip:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 94
    :cond_2
    iget-object v0, p0, Ltmsdkobf/cj;->fe:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Ltmsdkobf/cj;->fe:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 98
    :cond_3
    iget-object v0, p0, Ltmsdkobf/cj;->fk:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Ltmsdkobf/cj;->fk:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 102
    :cond_4
    iget-object v0, p0, Ltmsdkobf/cj;->W:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Ltmsdkobf/cj;->W:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 106
    :cond_5
    iget v0, p0, Ltmsdkobf/cj;->iu:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 107
    iget v0, p0, Ltmsdkobf/cj;->product:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 108
    iget-object v0, p0, Ltmsdkobf/cj;->iv:Ltmsdkobf/aq;

    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Ltmsdkobf/cj;->iv:Ltmsdkobf/aq;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 112
    :cond_6
    iget-object v0, p0, Ltmsdkobf/cj;->V:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Ltmsdkobf/cj;->V:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 116
    :cond_7
    iget-object v0, p0, Ltmsdkobf/cj;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 118
    iget-object v0, p0, Ltmsdkobf/cj;->imsi:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 120
    :cond_8
    iget v0, p0, Ltmsdkobf/cj;->ab:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 121
    iget v0, p0, Ltmsdkobf/cj;->iw:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 122
    iget v0, p0, Ltmsdkobf/cj;->bg:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 123
    iget v0, p0, Ltmsdkobf/cj;->fo:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 124
    iget-object v0, p0, Ltmsdkobf/cj;->fl:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Ltmsdkobf/cj;->fl:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 128
    :cond_9
    iget-short v0, p0, Ltmsdkobf/cj;->fm:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(SI)V

    .line 129
    iget-wide v0, p0, Ltmsdkobf/cj;->ix:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(DI)V

    .line 130
    iget-wide v0, p0, Ltmsdkobf/cj;->iy:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(DI)V

    .line 131
    return-void
.end method
