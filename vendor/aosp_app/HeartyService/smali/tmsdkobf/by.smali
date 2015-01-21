.class public final Ltmsdkobf/by;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static gR:Ltmsdkobf/bt;

.field static gW:[B


# instance fields
.field public P:I

.field public X:I

.field public aN:I

.field public gA:Ljava/lang/String;

.field public gB:F

.field public gD:F

.field public gE:F

.field public gG:[B

.field public gH:Ljava/lang/String;

.field public gK:Ljava/lang/String;

.field public gM:Ljava/lang/String;

.field public gN:Ljava/lang/String;

.field public gO:J

.field public gP:Ljava/lang/String;

.field public gQ:I

.field public gc:Ltmsdkobf/bt;

.field public gd:Ljava/lang/String;

.field public gk:Ljava/lang/String;

.field public gl:Ljava/lang/String;

.field public gm:I

.field public gn:Ljava/lang/String;

.field public go:I

.field public gp:Ljava/lang/String;

.field public gq:I

.field public gr:I

.field public gs:I

.field public gt:I

.field public gu:I

.field public gv:F

.field public gw:Ljava/lang/String;

.field public ic:I

.field public ie:I

.field public if:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput-object v3, p0, Ltmsdkobf/by;->gc:Ltmsdkobf/bt;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->type:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gd:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gk:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gl:Ljava/lang/String;

    .line 21
    iput v2, p0, Ltmsdkobf/by;->gm:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gn:Ljava/lang/String;

    .line 25
    iput v2, p0, Ltmsdkobf/by;->go:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gp:Ljava/lang/String;

    .line 29
    iput v2, p0, Ltmsdkobf/by;->aN:I

    .line 31
    iput v2, p0, Ltmsdkobf/by;->gq:I

    .line 33
    iput v2, p0, Ltmsdkobf/by;->gr:I

    .line 35
    iput v2, p0, Ltmsdkobf/by;->gs:I

    .line 37
    iput v2, p0, Ltmsdkobf/by;->gt:I

    .line 39
    iput v2, p0, Ltmsdkobf/by;->gu:I

    .line 41
    iput v1, p0, Ltmsdkobf/by;->gv:F

    .line 43
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gw:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gA:Ljava/lang/String;

    .line 47
    iput v1, p0, Ltmsdkobf/by;->gB:F

    .line 49
    iput v1, p0, Ltmsdkobf/by;->gD:F

    .line 51
    iput v1, p0, Ltmsdkobf/by;->gE:F

    .line 53
    iput-object v3, p0, Ltmsdkobf/by;->gG:[B

    .line 55
    iput v2, p0, Ltmsdkobf/by;->X:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gH:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gK:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gM:Ljava/lang/String;

    .line 63
    iput v2, p0, Ltmsdkobf/by;->P:I

    .line 65
    iput v2, p0, Ltmsdkobf/by;->ic:I

    .line 67
    iput v2, p0, Ltmsdkobf/by;->ie:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gN:Ljava/lang/String;

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdkobf/by;->gO:J

    .line 73
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->gP:Ljava/lang/String;

    .line 75
    iput v2, p0, Ltmsdkobf/by;->gQ:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/by;->if:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 5
    .parameter "_is"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 213
    sget-object v1, Ltmsdkobf/by;->gR:Ltmsdkobf/bt;

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Ltmsdkobf/bt;

    invoke-direct {v1}, Ltmsdkobf/bt;-><init>()V

    sput-object v1, Ltmsdkobf/by;->gR:Ltmsdkobf/bt;

    .line 217
    :cond_0
    sget-object v1, Ltmsdkobf/by;->gR:Ltmsdkobf/bt;

    invoke-virtual {p1, v1, v4, v3}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v1

    check-cast v1, Ltmsdkobf/bt;

    iput-object v1, p0, Ltmsdkobf/by;->gc:Ltmsdkobf/bt;

    .line 218
    invoke-virtual {p1, v3, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->type:Ljava/lang/String;

    .line 219
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gd:Ljava/lang/String;

    .line 220
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gk:Ljava/lang/String;

    .line 221
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gl:Ljava/lang/String;

    .line 222
    iget v1, p0, Ltmsdkobf/by;->gm:I

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gm:I

    .line 223
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gn:Ljava/lang/String;

    .line 224
    iget v1, p0, Ltmsdkobf/by;->go:I

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->go:I

    .line 225
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gp:Ljava/lang/String;

    .line 226
    iget v1, p0, Ltmsdkobf/by;->aN:I

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->aN:I

    .line 227
    iget v1, p0, Ltmsdkobf/by;->gq:I

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gq:I

    .line 228
    iget v1, p0, Ltmsdkobf/by;->gr:I

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gr:I

    .line 229
    iget v1, p0, Ltmsdkobf/by;->gs:I

    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gs:I

    .line 230
    iget v1, p0, Ltmsdkobf/by;->gt:I

    const/16 v2, 0xd

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gt:I

    .line 231
    iget v1, p0, Ltmsdkobf/by;->gu:I

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gu:I

    .line 232
    iget v1, p0, Ltmsdkobf/by;->gv:F

    const/16 v2, 0xf

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gv:F

    .line 233
    const/16 v1, 0x10

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gw:Ljava/lang/String;

    .line 234
    const/16 v1, 0x11

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gA:Ljava/lang/String;

    .line 235
    iget v1, p0, Ltmsdkobf/by;->gB:F

    const/16 v2, 0x12

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gB:F

    .line 236
    iget v1, p0, Ltmsdkobf/by;->gD:F

    const/16 v2, 0x13

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gD:F

    .line 237
    iget v1, p0, Ltmsdkobf/by;->gE:F

    const/16 v2, 0x14

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gE:F

    .line 238
    sget-object v1, Ltmsdkobf/by;->gW:[B

    if-nez v1, :cond_1

    .line 240
    new-array v1, v3, [B

    check-cast v1, [B

    sput-object v1, Ltmsdkobf/by;->gW:[B

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, __var_51:B
    sget-object v1, Ltmsdkobf/by;->gW:[B

    check-cast v1, [B

    aput-byte v0, v1, v4

    .line 244
    .end local v0           #__var_51:B
    :cond_1
    sget-object v1, Ltmsdkobf/by;->gW:[B

    const/16 v2, 0x15

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a([BIZ)[B

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ltmsdkobf/by;->gG:[B

    .line 245
    iget v1, p0, Ltmsdkobf/by;->X:I

    const/16 v2, 0x16

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->X:I

    .line 246
    const/16 v1, 0x17

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gH:Ljava/lang/String;

    .line 247
    const/16 v1, 0x18

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gK:Ljava/lang/String;

    .line 248
    const/16 v1, 0x19

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gM:Ljava/lang/String;

    .line 249
    iget v1, p0, Ltmsdkobf/by;->P:I

    const/16 v2, 0x1a

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->P:I

    .line 250
    iget v1, p0, Ltmsdkobf/by;->ic:I

    const/16 v2, 0x1b

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->ic:I

    .line 251
    iget v1, p0, Ltmsdkobf/by;->ie:I

    const/16 v2, 0x1c

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->ie:I

    .line 252
    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gN:Ljava/lang/String;

    .line 253
    iget-wide v1, p0, Ltmsdkobf/by;->gO:J

    const/16 v3, 0x1e

    invoke-virtual {p1, v1, v2, v3, v4}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v1

    iput-wide v1, p0, Ltmsdkobf/by;->gO:J

    .line 254
    const/16 v1, 0x1f

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->gP:Ljava/lang/String;

    .line 255
    iget v1, p0, Ltmsdkobf/by;->gQ:I

    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/by;->gQ:I

    .line 256
    const/16 v1, 0x21

    invoke-virtual {p1, v1, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/by;->if:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 123
    iget-object v0, p0, Ltmsdkobf/by;->gc:Ltmsdkobf/bt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 124
    iget-object v0, p0, Ltmsdkobf/by;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Ltmsdkobf/by;->type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 128
    :cond_0
    iget-object v0, p0, Ltmsdkobf/by;->gd:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Ltmsdkobf/by;->gd:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 132
    :cond_1
    iget-object v0, p0, Ltmsdkobf/by;->gk:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Ltmsdkobf/by;->gk:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 136
    :cond_2
    iget-object v0, p0, Ltmsdkobf/by;->gl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Ltmsdkobf/by;->gl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 140
    :cond_3
    iget v0, p0, Ltmsdkobf/by;->gm:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 141
    iget-object v0, p0, Ltmsdkobf/by;->gn:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Ltmsdkobf/by;->gn:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 145
    :cond_4
    iget v0, p0, Ltmsdkobf/by;->go:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 146
    iget-object v0, p0, Ltmsdkobf/by;->gp:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Ltmsdkobf/by;->gp:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 150
    :cond_5
    iget v0, p0, Ltmsdkobf/by;->aN:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 151
    iget v0, p0, Ltmsdkobf/by;->gq:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 152
    iget v0, p0, Ltmsdkobf/by;->gr:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 153
    iget v0, p0, Ltmsdkobf/by;->gs:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 154
    iget v0, p0, Ltmsdkobf/by;->gt:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 155
    iget v0, p0, Ltmsdkobf/by;->gu:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 156
    iget v0, p0, Ltmsdkobf/by;->gv:F

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 157
    iget-object v0, p0, Ltmsdkobf/by;->gw:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 159
    iget-object v0, p0, Ltmsdkobf/by;->gw:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 161
    :cond_6
    iget-object v0, p0, Ltmsdkobf/by;->gA:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 163
    iget-object v0, p0, Ltmsdkobf/by;->gA:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 165
    :cond_7
    iget v0, p0, Ltmsdkobf/by;->gB:F

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 166
    iget v0, p0, Ltmsdkobf/by;->gD:F

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 167
    iget v0, p0, Ltmsdkobf/by;->gE:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 168
    iget-object v0, p0, Ltmsdkobf/by;->gG:[B

    if-eqz v0, :cond_8

    .line 170
    iget-object v0, p0, Ltmsdkobf/by;->gG:[B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a([BI)V

    .line 172
    :cond_8
    iget v0, p0, Ltmsdkobf/by;->X:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 173
    iget-object v0, p0, Ltmsdkobf/by;->gH:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Ltmsdkobf/by;->gH:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 177
    :cond_9
    iget-object v0, p0, Ltmsdkobf/by;->gK:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 179
    iget-object v0, p0, Ltmsdkobf/by;->gK:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 181
    :cond_a
    iget-object v0, p0, Ltmsdkobf/by;->gM:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 183
    iget-object v0, p0, Ltmsdkobf/by;->gM:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 185
    :cond_b
    iget v0, p0, Ltmsdkobf/by;->P:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 186
    iget v0, p0, Ltmsdkobf/by;->ic:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 187
    iget v0, p0, Ltmsdkobf/by;->ie:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 188
    iget-object v0, p0, Ltmsdkobf/by;->gN:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 190
    iget-object v0, p0, Ltmsdkobf/by;->gN:Ljava/lang/String;

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 192
    :cond_c
    iget-wide v0, p0, Ltmsdkobf/by;->gO:J

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(JI)V

    .line 193
    iget-object v0, p0, Ltmsdkobf/by;->gP:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 195
    iget-object v0, p0, Ltmsdkobf/by;->gP:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 197
    :cond_d
    iget v0, p0, Ltmsdkobf/by;->gQ:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 198
    iget-object v0, p0, Ltmsdkobf/by;->if:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 200
    iget-object v0, p0, Ltmsdkobf/by;->if:Ljava/lang/String;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 202
    :cond_e
    return-void
.end method
