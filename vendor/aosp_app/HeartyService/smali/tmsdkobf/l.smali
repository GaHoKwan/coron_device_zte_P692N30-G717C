.class public final Ltmsdkobf/l;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static ap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public X:I

.field public ah:Ljava/lang/String;

.field public ai:Ljava/lang/String;

.field public aj:I

.field public ak:Ljava/lang/String;

.field public al:Ljava/lang/String;

.field public am:I

.field public an:I

.field public ao:Ljava/lang/String;

.field public plugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/c;",
            ">;"
        }
    .end annotation
.end field

.field public product:I

.field public safeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput v1, p0, Ltmsdkobf/l;->X:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/l;->ah:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/l;->ai:Ljava/lang/String;

    .line 17
    iput v1, p0, Ltmsdkobf/l;->aj:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/l;->ak:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/l;->al:Ljava/lang/String;

    .line 23
    iput v1, p0, Ltmsdkobf/l;->am:I

    .line 25
    iput v1, p0, Ltmsdkobf/l;->an:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/l;->ao:Ljava/lang/String;

    .line 29
    iput v1, p0, Ltmsdkobf/l;->safeLevel:I

    .line 31
    iput v1, p0, Ltmsdkobf/l;->product:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/l;->plugins:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    iget v1, p0, Ltmsdkobf/l;->X:I

    invoke-virtual {p1, v1, v3, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/l;->X:I

    .line 97
    invoke-virtual {p1, v2, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/l;->ah:Ljava/lang/String;

    .line 98
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/l;->ai:Ljava/lang/String;

    .line 99
    iget v1, p0, Ltmsdkobf/l;->aj:I

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/l;->aj:I

    .line 100
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/l;->ak:Ljava/lang/String;

    .line 101
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/l;->al:Ljava/lang/String;

    .line 102
    iget v1, p0, Ltmsdkobf/l;->am:I

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/l;->am:I

    .line 103
    iget v1, p0, Ltmsdkobf/l;->an:I

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/l;->an:I

    .line 104
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/l;->ao:Ljava/lang/String;

    .line 105
    iget v1, p0, Ltmsdkobf/l;->safeLevel:I

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/l;->safeLevel:I

    .line 106
    iget v1, p0, Ltmsdkobf/l;->product:I

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdkobf/l;->product:I

    .line 107
    sget-object v1, Ltmsdkobf/l;->ap:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/l;->ap:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ltmsdkobf/c;

    invoke-direct {v0}, Ltmsdkobf/c;-><init>()V

    .line 111
    .local v0, __var_52:Ltmsdkobf/c;
    sget-object v1, Ltmsdkobf/l;->ap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0           #__var_52:Ltmsdkobf/c;
    :cond_0
    sget-object v1, Ltmsdkobf/l;->ap:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Ltmsdkobf/l;->plugins:Ljava/util/ArrayList;

    .line 114
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 57
    iget v0, p0, Ltmsdkobf/l;->X:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 58
    iget-object v0, p0, Ltmsdkobf/l;->ah:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Ltmsdkobf/l;->ah:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 62
    :cond_0
    iget-object v0, p0, Ltmsdkobf/l;->ai:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Ltmsdkobf/l;->ai:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 66
    :cond_1
    iget v0, p0, Ltmsdkobf/l;->aj:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 67
    iget-object v0, p0, Ltmsdkobf/l;->ak:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Ltmsdkobf/l;->ak:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 71
    :cond_2
    iget-object v0, p0, Ltmsdkobf/l;->al:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Ltmsdkobf/l;->al:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 75
    :cond_3
    iget v0, p0, Ltmsdkobf/l;->am:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 76
    iget v0, p0, Ltmsdkobf/l;->an:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 77
    iget-object v0, p0, Ltmsdkobf/l;->ao:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Ltmsdkobf/l;->ao:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 81
    :cond_4
    iget v0, p0, Ltmsdkobf/l;->safeLevel:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 82
    iget v0, p0, Ltmsdkobf/l;->product:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 83
    iget-object v0, p0, Ltmsdkobf/l;->plugins:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Ltmsdkobf/l;->plugins:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 87
    :cond_5
    return-void
.end method
