.class public final Ltmsdkobf/cm;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static iN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/cl;",
            ">;"
        }
    .end annotation
.end field

.field static iO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/k;",
            ">;"
        }
    .end annotation
.end field

.field static iP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static iQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public advice:I

.field public d:I

.field public description:Ljava/lang/String;

.field public iB:B

.field public iC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/cl;",
            ">;"
        }
    .end annotation
.end field

.field public iD:I

.field public iE:I

.field public iF:I

.field public iG:I

.field public iH:I

.field public iI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/k;",
            ">;"
        }
    .end annotation
.end field

.field public iJ:I

.field public iK:I

.field public iL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public iM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public label:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public product:I

.field public safelevel:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput v1, p0, Ltmsdkobf/cm;->id:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cm;->name:Ljava/lang/String;

    .line 15
    iput v1, p0, Ltmsdkobf/cm;->d:I

    .line 17
    iput-byte v1, p0, Ltmsdkobf/cm;->iB:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cm;->description:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Ltmsdkobf/cm;->iC:Ljava/util/ArrayList;

    .line 23
    iput v1, p0, Ltmsdkobf/cm;->iD:I

    .line 25
    iput v1, p0, Ltmsdkobf/cm;->advice:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cm;->label:Ljava/lang/String;

    .line 29
    iput v1, p0, Ltmsdkobf/cm;->iE:I

    .line 31
    iput v1, p0, Ltmsdkobf/cm;->iF:I

    .line 33
    iput v1, p0, Ltmsdkobf/cm;->level:I

    .line 35
    iput v1, p0, Ltmsdkobf/cm;->iG:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cm;->url:Ljava/lang/String;

    .line 39
    iput v1, p0, Ltmsdkobf/cm;->iH:I

    .line 41
    iput v1, p0, Ltmsdkobf/cm;->safelevel:I

    .line 43
    iput-object v2, p0, Ltmsdkobf/cm;->iI:Ljava/util/ArrayList;

    .line 45
    iput v1, p0, Ltmsdkobf/cm;->product:I

    .line 47
    iput v1, p0, Ltmsdkobf/cm;->iJ:I

    .line 49
    iput v1, p0, Ltmsdkobf/cm;->iK:I

    .line 51
    iput-object v2, p0, Ltmsdkobf/cm;->iL:Ljava/util/ArrayList;

    .line 53
    iput-object v2, p0, Ltmsdkobf/cm;->iM:Ljava/util/ArrayList;

    .line 57
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 8
    .parameter "_is"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    iget v4, p0, Ltmsdkobf/cm;->id:I

    invoke-virtual {p1, v4, v6, v7}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->id:I

    .line 134
    invoke-virtual {p1, v7, v7}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltmsdkobf/cm;->name:Ljava/lang/String;

    .line 135
    iget v4, p0, Ltmsdkobf/cm;->d:I

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5, v7}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->d:I

    .line 136
    iget-byte v4, p0, Ltmsdkobf/cm;->iB:B

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5, v7}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v4

    iput-byte v4, p0, Ltmsdkobf/cm;->iB:B

    .line 137
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v7}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltmsdkobf/cm;->description:Ljava/lang/String;

    .line 138
    sget-object v4, Ltmsdkobf/cm;->iN:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Ltmsdkobf/cm;->iN:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ltmsdkobf/cl;

    invoke-direct {v0}, Ltmsdkobf/cl;-><init>()V

    .line 142
    .local v0, __var_39:Ltmsdkobf/cl;
    sget-object v4, Ltmsdkobf/cm;->iN:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v0           #__var_39:Ltmsdkobf/cl;
    :cond_0
    sget-object v4, Ltmsdkobf/cm;->iN:Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5, v7}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Ltmsdkobf/cm;->iC:Ljava/util/ArrayList;

    .line 145
    iget v4, p0, Ltmsdkobf/cm;->iD:I

    const/4 v5, 0x6

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->iD:I

    .line 146
    iget v4, p0, Ltmsdkobf/cm;->advice:I

    const/4 v5, 0x7

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->advice:I

    .line 147
    const/16 v4, 0x8

    invoke-virtual {p1, v4, v6}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltmsdkobf/cm;->label:Ljava/lang/String;

    .line 148
    iget v4, p0, Ltmsdkobf/cm;->iE:I

    const/16 v5, 0x9

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->iE:I

    .line 149
    iget v4, p0, Ltmsdkobf/cm;->iF:I

    const/16 v5, 0xa

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->iF:I

    .line 150
    iget v4, p0, Ltmsdkobf/cm;->level:I

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->level:I

    .line 151
    iget v4, p0, Ltmsdkobf/cm;->iG:I

    const/16 v5, 0xc

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->iG:I

    .line 152
    const/16 v4, 0xd

    invoke-virtual {p1, v4, v6}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltmsdkobf/cm;->url:Ljava/lang/String;

    .line 153
    iget v4, p0, Ltmsdkobf/cm;->iH:I

    const/16 v5, 0xe

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->iH:I

    .line 154
    iget v4, p0, Ltmsdkobf/cm;->safelevel:I

    const/16 v5, 0xf

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->safelevel:I

    .line 155
    sget-object v4, Ltmsdkobf/cm;->iO:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Ltmsdkobf/cm;->iO:Ljava/util/ArrayList;

    .line 158
    new-instance v1, Ltmsdkobf/k;

    invoke-direct {v1}, Ltmsdkobf/k;-><init>()V

    .line 159
    .local v1, __var_40:Ltmsdkobf/k;
    sget-object v4, Ltmsdkobf/cm;->iO:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v1           #__var_40:Ltmsdkobf/k;
    :cond_1
    sget-object v4, Ltmsdkobf/cm;->iO:Ljava/util/ArrayList;

    const/16 v5, 0x10

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Ltmsdkobf/cm;->iI:Ljava/util/ArrayList;

    .line 162
    iget v4, p0, Ltmsdkobf/cm;->product:I

    const/16 v5, 0x11

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->product:I

    .line 163
    iget v4, p0, Ltmsdkobf/cm;->iJ:I

    const/16 v5, 0x12

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->iJ:I

    .line 164
    iget v4, p0, Ltmsdkobf/cm;->iK:I

    const/16 v5, 0x13

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    iput v4, p0, Ltmsdkobf/cm;->iK:I

    .line 165
    sget-object v4, Ltmsdkobf/cm;->iP:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 167
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Ltmsdkobf/cm;->iP:Ljava/util/ArrayList;

    .line 168
    const-string v2, ""

    .line 169
    .local v2, __var_41:Ljava/lang/String;
    sget-object v4, Ltmsdkobf/cm;->iP:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v2           #__var_41:Ljava/lang/String;
    :cond_2
    sget-object v4, Ltmsdkobf/cm;->iP:Ljava/util/ArrayList;

    const/16 v5, 0x14

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Ltmsdkobf/cm;->iL:Ljava/util/ArrayList;

    .line 172
    sget-object v4, Ltmsdkobf/cm;->iQ:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Ltmsdkobf/cm;->iQ:Ljava/util/ArrayList;

    .line 175
    const-string v3, ""

    .line 176
    .local v3, __var_42:Ljava/lang/String;
    sget-object v4, Ltmsdkobf/cm;->iQ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v3           #__var_42:Ljava/lang/String;
    :cond_3
    sget-object v4, Ltmsdkobf/cm;->iQ:Ljava/util/ArrayList;

    const/16 v5, 0x15

    invoke-virtual {p1, v4, v5, v6}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Ltmsdkobf/cm;->iM:Ljava/util/ArrayList;

    .line 179
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 87
    iget v0, p0, Ltmsdkobf/cm;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 88
    iget-object v0, p0, Ltmsdkobf/cm;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 89
    iget v0, p0, Ltmsdkobf/cm;->d:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 90
    iget-byte v0, p0, Ltmsdkobf/cm;->iB:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->b(BI)V

    .line 91
    iget-object v0, p0, Ltmsdkobf/cm;->description:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Ltmsdkobf/cm;->iC:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 93
    iget v0, p0, Ltmsdkobf/cm;->iD:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 94
    iget v0, p0, Ltmsdkobf/cm;->advice:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 95
    iget-object v0, p0, Ltmsdkobf/cm;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Ltmsdkobf/cm;->label:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 99
    :cond_0
    iget v0, p0, Ltmsdkobf/cm;->iE:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 100
    iget v0, p0, Ltmsdkobf/cm;->iF:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 101
    iget v0, p0, Ltmsdkobf/cm;->level:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 102
    iget v0, p0, Ltmsdkobf/cm;->iG:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 103
    iget-object v0, p0, Ltmsdkobf/cm;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Ltmsdkobf/cm;->url:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 107
    :cond_1
    iget v0, p0, Ltmsdkobf/cm;->iH:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 108
    iget v0, p0, Ltmsdkobf/cm;->safelevel:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 109
    iget-object v0, p0, Ltmsdkobf/cm;->iI:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Ltmsdkobf/cm;->iI:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 113
    :cond_2
    iget v0, p0, Ltmsdkobf/cm;->product:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 114
    iget v0, p0, Ltmsdkobf/cm;->iJ:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 115
    iget v0, p0, Ltmsdkobf/cm;->iK:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 116
    iget-object v0, p0, Ltmsdkobf/cm;->iL:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Ltmsdkobf/cm;->iL:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 120
    :cond_3
    iget-object v0, p0, Ltmsdkobf/cm;->iM:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Ltmsdkobf/cm;->iM:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 124
    :cond_4
    return-void
.end method
