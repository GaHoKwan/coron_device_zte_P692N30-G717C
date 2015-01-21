.class public final Ltmsdkobf/bt;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdkobf/df;",
        "Ljava/lang/Comparable",
        "<",
        "Ltmsdkobf/bt;",
        ">;"
    }
.end annotation


# instance fields
.field public ab:I

.field public dF:Ljava/lang/String;

.field public ec:Ljava/lang/String;

.field public fS:I

.field public fX:I

.field public gP:Ljava/lang/String;

.field public gX:Ljava/lang/String;

.field public gY:Ljava/lang/String;

.field public gZ:I

.field public gm:I

.field public ha:Ljava/lang/String;

.field public hb:I

.field public hc:I

.field public hd:I

.field public he:I

.field public name:Ljava/lang/String;

.field public source:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bt;->ec:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bt;->gX:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bt;->version:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bt;->gY:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bt;->dF:Ljava/lang/String;

    .line 21
    iput v1, p0, Ltmsdkobf/bt;->gZ:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bt;->name:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdkobf/bt;->ab:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bt;->ha:Ljava/lang/String;

    .line 29
    iput v1, p0, Ltmsdkobf/bt;->hb:I

    .line 31
    iput v1, p0, Ltmsdkobf/bt;->hc:I

    .line 33
    iput v1, p0, Ltmsdkobf/bt;->fS:I

    .line 35
    iput v1, p0, Ltmsdkobf/bt;->hd:I

    .line 37
    iput v1, p0, Ltmsdkobf/bt;->source:I

    .line 39
    iput v1, p0, Ltmsdkobf/bt;->he:I

    .line 41
    iput v1, p0, Ltmsdkobf/bt;->fX:I

    .line 43
    iput v1, p0, Ltmsdkobf/bt;->gm:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bt;->gP:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/bt;)I
    .locals 6
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x4

    new-array v1, v3, [I

    iget-object v3, p0, Ltmsdkobf/bt;->ec:Ljava/lang/String;

    iget-object v4, p1, Ltmsdkobf/bt;->ec:Ljava/lang/String;

    invoke-static {v3, v4}, Ltmsdkobf/dg;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Ltmsdkobf/bt;->gX:Ljava/lang/String;

    iget-object v5, p1, Ltmsdkobf/bt;->gX:Ljava/lang/String;

    invoke-static {v4, v5}, Ltmsdkobf/dg;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltmsdkobf/bt;->version:Ljava/lang/String;

    iget-object v5, p1, Ltmsdkobf/bt;->version:Ljava/lang/String;

    invoke-static {v4, v5}, Ltmsdkobf/dg;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Ltmsdkobf/bt;->gY:Ljava/lang/String;

    iget-object v5, p1, Ltmsdkobf/bt;->gY:Ljava/lang/String;

    invoke-static {v4, v5}, Ltmsdkobf/dg;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v4

    aput v4, v1, v3

    .line 82
    .local v1, r:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 84
    aget v3, v1, v0

    if-eqz v3, :cond_1

    aget v2, v1, v0

    .line 86
    :cond_0
    return v2

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    check-cast p1, Ltmsdkobf/bt;

    .end local p1
    invoke-virtual {p0, p1}, Ltmsdkobf/bt;->a(Ltmsdkobf/bt;)I

    move-result v0

    return v0
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bt;->ec:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v1, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bt;->gX:Ljava/lang/String;

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bt;->version:Ljava/lang/String;

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bt;->gY:Ljava/lang/String;

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bt;->dF:Ljava/lang/String;

    .line 134
    iget v0, p0, Ltmsdkobf/bt;->gZ:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->gZ:I

    .line 135
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bt;->name:Ljava/lang/String;

    .line 136
    iget v0, p0, Ltmsdkobf/bt;->ab:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->ab:I

    .line 137
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bt;->ha:Ljava/lang/String;

    .line 138
    iget v0, p0, Ltmsdkobf/bt;->hb:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->hb:I

    .line 139
    iget v0, p0, Ltmsdkobf/bt;->hc:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->hc:I

    .line 140
    iget v0, p0, Ltmsdkobf/bt;->fS:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->fS:I

    .line 141
    iget v0, p0, Ltmsdkobf/bt;->hd:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->hd:I

    .line 142
    iget v0, p0, Ltmsdkobf/bt;->source:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->source:I

    .line 143
    iget v0, p0, Ltmsdkobf/bt;->he:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->he:I

    .line 144
    iget v0, p0, Ltmsdkobf/bt;->fX:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->fX:I

    .line 145
    iget v0, p0, Ltmsdkobf/bt;->gm:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdkobf/bt;->gm:I

    .line 146
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/bt;->gP:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 91
    iget-object v0, p0, Ltmsdkobf/bt;->ec:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Ltmsdkobf/bt;->gX:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Ltmsdkobf/bt;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Ltmsdkobf/bt;->gY:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ltmsdkobf/bt;->gY:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 98
    :cond_0
    iget-object v0, p0, Ltmsdkobf/bt;->dF:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Ltmsdkobf/bt;->dF:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 102
    :cond_1
    iget v0, p0, Ltmsdkobf/bt;->gZ:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 103
    iget-object v0, p0, Ltmsdkobf/bt;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Ltmsdkobf/bt;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 107
    :cond_2
    iget v0, p0, Ltmsdkobf/bt;->ab:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 108
    iget-object v0, p0, Ltmsdkobf/bt;->ha:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Ltmsdkobf/bt;->ha:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 112
    :cond_3
    iget v0, p0, Ltmsdkobf/bt;->hb:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 113
    iget v0, p0, Ltmsdkobf/bt;->hc:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 114
    iget v0, p0, Ltmsdkobf/bt;->fS:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 115
    iget v0, p0, Ltmsdkobf/bt;->hd:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 116
    iget v0, p0, Ltmsdkobf/bt;->source:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 117
    iget v0, p0, Ltmsdkobf/bt;->he:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 118
    iget v0, p0, Ltmsdkobf/bt;->fX:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 119
    iget v0, p0, Ltmsdkobf/bt;->gm:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 120
    iget-object v0, p0, Ltmsdkobf/bt;->gP:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Ltmsdkobf/bt;->gP:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 124
    :cond_4
    return-void
.end method
