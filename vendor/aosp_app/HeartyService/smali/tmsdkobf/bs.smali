.class public final Ltmsdkobf/bs;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static gR:Ltmsdkobf/bt;

.field static gS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ap;",
            ">;"
        }
    .end annotation
.end field

.field static gT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/q;",
            ">;"
        }
    .end annotation
.end field

.field static gU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static gV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static gW:[B


# instance fields
.field public R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public aN:I

.field public ak:Ljava/lang/String;

.field public dM:I

.field public dN:I

.field public dO:I

.field public dP:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public fO:I

.field public gA:Ljava/lang/String;

.field public gB:F

.field public gC:I

.field public gD:F

.field public gE:F

.field public gF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gG:[B

.field public gH:Ljava/lang/String;

.field public gI:Ljava/lang/String;

.field public gJ:Ljava/lang/String;

.field public gK:Ljava/lang/String;

.field public gL:Ljava/lang/String;

.field public gM:Ljava/lang/String;

.field public gN:Ljava/lang/String;

.field public gO:J

.field public gP:Ljava/lang/String;

.field public gQ:I

.field public gc:Ltmsdkobf/bt;

.field public gd:Ljava/lang/String;

.field public ge:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ap;",
            ">;"
        }
    .end annotation
.end field

.field public gf:I

.field public gg:I

.field public gh:I

.field public gi:I

.field public gj:I

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

.field public gx:Ljava/lang/String;

.field public gy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/q;",
            ">;"
        }
    .end annotation
.end field

.field public gz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput-object v1, p0, Ltmsdkobf/bs;->gc:Ltmsdkobf/bt;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->ak:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->description:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->type:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gd:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Ltmsdkobf/bs;->ge:Ljava/util/ArrayList;

    .line 23
    iput v2, p0, Ltmsdkobf/bs;->gf:I

    .line 25
    iput v2, p0, Ltmsdkobf/bs;->gg:I

    .line 27
    iput v2, p0, Ltmsdkobf/bs;->gh:I

    .line 29
    iput v2, p0, Ltmsdkobf/bs;->gi:I

    .line 31
    sget-object v0, Ltmsdkobf/v;->bm:Ltmsdkobf/v;

    invoke-virtual {v0}, Ltmsdkobf/v;->value()I

    move-result v0

    iput v0, p0, Ltmsdkobf/bs;->gj:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gk:Ljava/lang/String;

    .line 35
    iput v2, p0, Ltmsdkobf/bs;->dM:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gl:Ljava/lang/String;

    .line 39
    iput v2, p0, Ltmsdkobf/bs;->gm:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gn:Ljava/lang/String;

    .line 43
    iput v2, p0, Ltmsdkobf/bs;->go:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->dP:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gp:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Ltmsdkobf/bs;->R:Ljava/util/ArrayList;

    .line 51
    iput v2, p0, Ltmsdkobf/bs;->dN:I

    .line 53
    iput v2, p0, Ltmsdkobf/bs;->dO:I

    .line 55
    iput v2, p0, Ltmsdkobf/bs;->aN:I

    .line 57
    iput v2, p0, Ltmsdkobf/bs;->gq:I

    .line 59
    iput v2, p0, Ltmsdkobf/bs;->fO:I

    .line 61
    iput v2, p0, Ltmsdkobf/bs;->gr:I

    .line 63
    iput v2, p0, Ltmsdkobf/bs;->gs:I

    .line 65
    iput v2, p0, Ltmsdkobf/bs;->gt:I

    .line 67
    iput v2, p0, Ltmsdkobf/bs;->gu:I

    .line 69
    iput v3, p0, Ltmsdkobf/bs;->gv:F

    .line 71
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gw:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gx:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Ltmsdkobf/bs;->gy:Ljava/util/ArrayList;

    .line 77
    iput-object v1, p0, Ltmsdkobf/bs;->gz:Ljava/util/ArrayList;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gA:Ljava/lang/String;

    .line 81
    iput v3, p0, Ltmsdkobf/bs;->gB:F

    .line 83
    iput v2, p0, Ltmsdkobf/bs;->gC:I

    .line 85
    iput v3, p0, Ltmsdkobf/bs;->gD:F

    .line 87
    iput v3, p0, Ltmsdkobf/bs;->gE:F

    .line 89
    iput-object v1, p0, Ltmsdkobf/bs;->gF:Ljava/util/ArrayList;

    .line 91
    iput-object v1, p0, Ltmsdkobf/bs;->gG:[B

    .line 93
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gH:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gI:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gJ:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gK:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gL:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gM:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gN:Ljava/lang/String;

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdkobf/bs;->gO:J

    .line 109
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bs;->gP:Ljava/lang/String;

    .line 111
    iput v2, p0, Ltmsdkobf/bs;->gQ:I

    .line 115
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 10
    .parameter "_is"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 317
    sget-object v6, Ltmsdkobf/bs;->gR:Ltmsdkobf/bt;

    if-nez v6, :cond_0

    .line 319
    new-instance v6, Ltmsdkobf/bt;

    invoke-direct {v6}, Ltmsdkobf/bt;-><init>()V

    sput-object v6, Ltmsdkobf/bs;->gR:Ltmsdkobf/bt;

    .line 321
    :cond_0
    sget-object v6, Ltmsdkobf/bs;->gR:Ltmsdkobf/bt;

    invoke-virtual {p1, v6, v9, v8}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v6

    check-cast v6, Ltmsdkobf/bt;

    iput-object v6, p0, Ltmsdkobf/bs;->gc:Ltmsdkobf/bt;

    .line 322
    invoke-virtual {p1, v8, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->ak:Ljava/lang/String;

    .line 323
    const/4 v6, 0x2

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->description:Ljava/lang/String;

    .line 324
    const/4 v6, 0x3

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->type:Ljava/lang/String;

    .line 325
    const/4 v6, 0x4

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gd:Ljava/lang/String;

    .line 326
    sget-object v6, Ltmsdkobf/bs;->gS:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 328
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Ltmsdkobf/bs;->gS:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ltmsdkobf/ap;

    invoke-direct {v0}, Ltmsdkobf/ap;-><init>()V

    .line 330
    .local v0, __var_36:Ltmsdkobf/ap;
    sget-object v6, Ltmsdkobf/bs;->gS:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v0           #__var_36:Ltmsdkobf/ap;
    :cond_1
    sget-object v6, Ltmsdkobf/bs;->gS:Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Ltmsdkobf/bs;->ge:Ljava/util/ArrayList;

    .line 333
    iget v6, p0, Ltmsdkobf/bs;->gf:I

    const/4 v7, 0x6

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gf:I

    .line 334
    iget v6, p0, Ltmsdkobf/bs;->gg:I

    const/4 v7, 0x7

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gg:I

    .line 335
    iget v6, p0, Ltmsdkobf/bs;->gh:I

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gh:I

    .line 336
    iget v6, p0, Ltmsdkobf/bs;->gi:I

    const/16 v7, 0x9

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gi:I

    .line 337
    iget v6, p0, Ltmsdkobf/bs;->gj:I

    const/16 v7, 0xa

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gj:I

    .line 338
    const/16 v6, 0xb

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gk:Ljava/lang/String;

    .line 339
    iget v6, p0, Ltmsdkobf/bs;->dM:I

    const/16 v7, 0xc

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->dM:I

    .line 340
    const/16 v6, 0xd

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gl:Ljava/lang/String;

    .line 341
    iget v6, p0, Ltmsdkobf/bs;->gm:I

    const/16 v7, 0xe

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gm:I

    .line 342
    const/16 v6, 0xf

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gn:Ljava/lang/String;

    .line 343
    iget v6, p0, Ltmsdkobf/bs;->go:I

    const/16 v7, 0x10

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->go:I

    .line 344
    const/16 v6, 0x11

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->dP:Ljava/lang/String;

    .line 345
    const/16 v6, 0x12

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gp:Ljava/lang/String;

    .line 346
    sget-object v6, Ltmsdkobf/bs;->S:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 348
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Ltmsdkobf/bs;->S:Ljava/util/ArrayList;

    .line 349
    const-string v1, ""

    .line 350
    .local v1, __var_37:Ljava/lang/String;
    sget-object v6, Ltmsdkobf/bs;->S:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v1           #__var_37:Ljava/lang/String;
    :cond_2
    sget-object v6, Ltmsdkobf/bs;->S:Ljava/util/ArrayList;

    const/16 v7, 0x13

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Ltmsdkobf/bs;->R:Ljava/util/ArrayList;

    .line 353
    iget v6, p0, Ltmsdkobf/bs;->dN:I

    const/16 v7, 0x14

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->dN:I

    .line 354
    iget v6, p0, Ltmsdkobf/bs;->dO:I

    const/16 v7, 0x15

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->dO:I

    .line 355
    iget v6, p0, Ltmsdkobf/bs;->aN:I

    const/16 v7, 0x16

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->aN:I

    .line 356
    iget v6, p0, Ltmsdkobf/bs;->gq:I

    const/16 v7, 0x17

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gq:I

    .line 357
    iget v6, p0, Ltmsdkobf/bs;->fO:I

    const/16 v7, 0x18

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->fO:I

    .line 358
    iget v6, p0, Ltmsdkobf/bs;->gr:I

    const/16 v7, 0x19

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gr:I

    .line 359
    iget v6, p0, Ltmsdkobf/bs;->gs:I

    const/16 v7, 0x1a

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gs:I

    .line 360
    iget v6, p0, Ltmsdkobf/bs;->gt:I

    const/16 v7, 0x1b

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gt:I

    .line 361
    iget v6, p0, Ltmsdkobf/bs;->gu:I

    const/16 v7, 0x1c

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gu:I

    .line 362
    iget v6, p0, Ltmsdkobf/bs;->gv:F

    const/16 v7, 0x1d

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gv:F

    .line 363
    const/16 v6, 0x1e

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gw:Ljava/lang/String;

    .line 364
    const/16 v6, 0x1f

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gx:Ljava/lang/String;

    .line 365
    sget-object v6, Ltmsdkobf/bs;->gT:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 367
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Ltmsdkobf/bs;->gT:Ljava/util/ArrayList;

    .line 368
    new-instance v2, Ltmsdkobf/q;

    invoke-direct {v2}, Ltmsdkobf/q;-><init>()V

    .line 369
    .local v2, __var_38:Ltmsdkobf/q;
    sget-object v6, Ltmsdkobf/bs;->gT:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v2           #__var_38:Ltmsdkobf/q;
    :cond_3
    sget-object v6, Ltmsdkobf/bs;->gT:Ljava/util/ArrayList;

    const/16 v7, 0x20

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Ltmsdkobf/bs;->gy:Ljava/util/ArrayList;

    .line 372
    sget-object v6, Ltmsdkobf/bs;->gU:Ljava/util/ArrayList;

    if-nez v6, :cond_4

    .line 374
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Ltmsdkobf/bs;->gU:Ljava/util/ArrayList;

    .line 375
    const-string v3, ""

    .line 376
    .local v3, __var_39:Ljava/lang/String;
    sget-object v6, Ltmsdkobf/bs;->gU:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v3           #__var_39:Ljava/lang/String;
    :cond_4
    sget-object v6, Ltmsdkobf/bs;->gU:Ljava/util/ArrayList;

    const/16 v7, 0x21

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Ltmsdkobf/bs;->gz:Ljava/util/ArrayList;

    .line 379
    const/16 v6, 0x22

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gA:Ljava/lang/String;

    .line 380
    iget v6, p0, Ltmsdkobf/bs;->gB:F

    const/16 v7, 0x23

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gB:F

    .line 381
    iget v6, p0, Ltmsdkobf/bs;->gC:I

    const/16 v7, 0x24

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gC:I

    .line 382
    iget v6, p0, Ltmsdkobf/bs;->gD:F

    const/16 v7, 0x25

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gD:F

    .line 383
    iget v6, p0, Ltmsdkobf/bs;->gE:F

    const/16 v7, 0x26

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gE:F

    .line 384
    sget-object v6, Ltmsdkobf/bs;->gV:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 386
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Ltmsdkobf/bs;->gV:Ljava/util/ArrayList;

    .line 387
    const-string v4, ""

    .line 388
    .local v4, __var_40:Ljava/lang/String;
    sget-object v6, Ltmsdkobf/bs;->gV:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v4           #__var_40:Ljava/lang/String;
    :cond_5
    sget-object v6, Ltmsdkobf/bs;->gV:Ljava/util/ArrayList;

    const/16 v7, 0x27

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Ltmsdkobf/bs;->gF:Ljava/util/ArrayList;

    .line 391
    sget-object v6, Ltmsdkobf/bs;->gW:[B

    if-nez v6, :cond_6

    .line 393
    new-array v6, v8, [B

    check-cast v6, [B

    sput-object v6, Ltmsdkobf/bs;->gW:[B

    .line 394
    const/4 v5, 0x0

    .line 395
    .local v5, __var_41:B
    sget-object v6, Ltmsdkobf/bs;->gW:[B

    check-cast v6, [B

    aput-byte v5, v6, v9

    .line 397
    .end local v5           #__var_41:B
    :cond_6
    sget-object v6, Ltmsdkobf/bs;->gW:[B

    const/16 v7, 0x28

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a([BIZ)[B

    move-result-object v6

    check-cast v6, [B

    iput-object v6, p0, Ltmsdkobf/bs;->gG:[B

    .line 398
    const/16 v6, 0x29

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gH:Ljava/lang/String;

    .line 399
    const/16 v6, 0x2a

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gI:Ljava/lang/String;

    .line 400
    const/16 v6, 0x2b

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gJ:Ljava/lang/String;

    .line 401
    const/16 v6, 0x2c

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gK:Ljava/lang/String;

    .line 402
    const/16 v6, 0x2d

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gL:Ljava/lang/String;

    .line 403
    const/16 v6, 0x2e

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gM:Ljava/lang/String;

    .line 404
    const/16 v6, 0x2f

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gN:Ljava/lang/String;

    .line 405
    iget-wide v6, p0, Ltmsdkobf/bs;->gO:J

    const/16 v8, 0x30

    invoke-virtual {p1, v6, v7, v8, v9}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v6

    iput-wide v6, p0, Ltmsdkobf/bs;->gO:J

    .line 406
    const/16 v6, 0x31

    invoke-virtual {p1, v6, v9}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltmsdkobf/bs;->gP:Ljava/lang/String;

    .line 407
    iget v6, p0, Ltmsdkobf/bs;->gQ:I

    const/16 v7, 0x32

    invoke-virtual {p1, v6, v7, v9}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v6

    iput v6, p0, Ltmsdkobf/bs;->gQ:I

    .line 408
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 3
    .parameter "_os"

    .prologue
    .line 174
    iget-object v0, p0, Ltmsdkobf/bs;->gc:Ltmsdkobf/bt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 175
    iget-object v0, p0, Ltmsdkobf/bs;->ak:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Ltmsdkobf/bs;->ak:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 179
    :cond_0
    iget-object v0, p0, Ltmsdkobf/bs;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Ltmsdkobf/bs;->description:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 183
    :cond_1
    iget-object v0, p0, Ltmsdkobf/bs;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Ltmsdkobf/bs;->type:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 187
    :cond_2
    iget-object v0, p0, Ltmsdkobf/bs;->gd:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Ltmsdkobf/bs;->gd:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 191
    :cond_3
    iget-object v0, p0, Ltmsdkobf/bs;->ge:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Ltmsdkobf/bs;->ge:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 195
    :cond_4
    iget v0, p0, Ltmsdkobf/bs;->gf:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 196
    iget v0, p0, Ltmsdkobf/bs;->gg:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 197
    iget v0, p0, Ltmsdkobf/bs;->gh:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 198
    iget v0, p0, Ltmsdkobf/bs;->gi:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 199
    iget v0, p0, Ltmsdkobf/bs;->gj:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 200
    iget-object v0, p0, Ltmsdkobf/bs;->gk:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Ltmsdkobf/bs;->gk:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 204
    :cond_5
    iget v0, p0, Ltmsdkobf/bs;->dM:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 205
    iget-object v0, p0, Ltmsdkobf/bs;->gl:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Ltmsdkobf/bs;->gl:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 209
    :cond_6
    iget v0, p0, Ltmsdkobf/bs;->gm:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 210
    iget-object v0, p0, Ltmsdkobf/bs;->gn:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 212
    iget-object v0, p0, Ltmsdkobf/bs;->gn:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 214
    :cond_7
    iget v0, p0, Ltmsdkobf/bs;->go:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 215
    iget-object v0, p0, Ltmsdkobf/bs;->dP:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 217
    iget-object v0, p0, Ltmsdkobf/bs;->dP:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 219
    :cond_8
    iget-object v0, p0, Ltmsdkobf/bs;->gp:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Ltmsdkobf/bs;->gp:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 223
    :cond_9
    iget-object v0, p0, Ltmsdkobf/bs;->R:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p0, Ltmsdkobf/bs;->R:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 227
    :cond_a
    iget v0, p0, Ltmsdkobf/bs;->dN:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 228
    iget v0, p0, Ltmsdkobf/bs;->dO:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 229
    iget v0, p0, Ltmsdkobf/bs;->aN:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 230
    iget v0, p0, Ltmsdkobf/bs;->gq:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 231
    iget v0, p0, Ltmsdkobf/bs;->fO:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 232
    iget v0, p0, Ltmsdkobf/bs;->gr:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 233
    iget v0, p0, Ltmsdkobf/bs;->gs:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 234
    iget v0, p0, Ltmsdkobf/bs;->gt:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 235
    iget v0, p0, Ltmsdkobf/bs;->gu:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 236
    iget v0, p0, Ltmsdkobf/bs;->gv:F

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 237
    iget-object v0, p0, Ltmsdkobf/bs;->gw:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 239
    iget-object v0, p0, Ltmsdkobf/bs;->gw:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 241
    :cond_b
    iget-object v0, p0, Ltmsdkobf/bs;->gx:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 243
    iget-object v0, p0, Ltmsdkobf/bs;->gx:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 245
    :cond_c
    iget-object v0, p0, Ltmsdkobf/bs;->gy:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 247
    iget-object v0, p0, Ltmsdkobf/bs;->gy:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 249
    :cond_d
    iget-object v0, p0, Ltmsdkobf/bs;->gz:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 251
    iget-object v0, p0, Ltmsdkobf/bs;->gz:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 253
    :cond_e
    iget-object v0, p0, Ltmsdkobf/bs;->gA:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 255
    iget-object v0, p0, Ltmsdkobf/bs;->gA:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 257
    :cond_f
    iget v0, p0, Ltmsdkobf/bs;->gB:F

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 258
    iget v0, p0, Ltmsdkobf/bs;->gC:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 259
    iget v0, p0, Ltmsdkobf/bs;->gD:F

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 260
    iget v0, p0, Ltmsdkobf/bs;->gE:F

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(FI)V

    .line 261
    iget-object v0, p0, Ltmsdkobf/bs;->gF:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 263
    iget-object v0, p0, Ltmsdkobf/bs;->gF:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 265
    :cond_10
    iget-object v0, p0, Ltmsdkobf/bs;->gG:[B

    if-eqz v0, :cond_11

    .line 267
    iget-object v0, p0, Ltmsdkobf/bs;->gG:[B

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a([BI)V

    .line 269
    :cond_11
    iget-object v0, p0, Ltmsdkobf/bs;->gH:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 271
    iget-object v0, p0, Ltmsdkobf/bs;->gH:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 273
    :cond_12
    iget-object v0, p0, Ltmsdkobf/bs;->gI:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 275
    iget-object v0, p0, Ltmsdkobf/bs;->gI:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 277
    :cond_13
    iget-object v0, p0, Ltmsdkobf/bs;->gJ:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 279
    iget-object v0, p0, Ltmsdkobf/bs;->gJ:Ljava/lang/String;

    const/16 v1, 0x2b

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 281
    :cond_14
    iget-object v0, p0, Ltmsdkobf/bs;->gK:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 283
    iget-object v0, p0, Ltmsdkobf/bs;->gK:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 285
    :cond_15
    iget-object v0, p0, Ltmsdkobf/bs;->gL:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 287
    iget-object v0, p0, Ltmsdkobf/bs;->gL:Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 289
    :cond_16
    iget-object v0, p0, Ltmsdkobf/bs;->gM:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 291
    iget-object v0, p0, Ltmsdkobf/bs;->gM:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 293
    :cond_17
    iget-object v0, p0, Ltmsdkobf/bs;->gN:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 295
    iget-object v0, p0, Ltmsdkobf/bs;->gN:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 297
    :cond_18
    iget-wide v0, p0, Ltmsdkobf/bs;->gO:J

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/de;->a(JI)V

    .line 298
    iget-object v0, p0, Ltmsdkobf/bs;->gP:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 300
    iget-object v0, p0, Ltmsdkobf/bs;->gP:Ljava/lang/String;

    const/16 v1, 0x31

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 302
    :cond_19
    iget v0, p0, Ltmsdkobf/bs;->gQ:I

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 303
    return-void
.end method
