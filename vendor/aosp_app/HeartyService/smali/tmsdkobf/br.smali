.class public final Ltmsdkobf/br;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static J:Ltmsdkobf/af;

.field static ga:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ae;",
            ">;"
        }
    .end annotation
.end field

.field static gb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public B:Ltmsdkobf/af;

.field public aj:I

.field public dexSha1:Ljava/lang/String;

.field public fO:I

.field public fP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ae;",
            ">;"
        }
    .end annotation
.end field

.field public fQ:I

.field public fR:Z

.field public fS:I

.field public fT:I

.field public fU:I

.field public fV:Ljava/lang/String;

.field public fW:I

.field public fX:I

.field public fY:I

.field public fZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput-object v2, p0, Ltmsdkobf/br;->B:Ltmsdkobf/af;

    .line 13
    iput v1, p0, Ltmsdkobf/br;->fO:I

    .line 15
    iput v1, p0, Ltmsdkobf/br;->aj:I

    .line 17
    iput-object v2, p0, Ltmsdkobf/br;->fP:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Ltmsdkobf/br;->fQ:I

    .line 21
    iput-boolean v1, p0, Ltmsdkobf/br;->fR:Z

    .line 23
    iput v1, p0, Ltmsdkobf/br;->fS:I

    .line 25
    iput v1, p0, Ltmsdkobf/br;->position:I

    .line 27
    iput v1, p0, Ltmsdkobf/br;->fT:I

    .line 29
    iput v1, p0, Ltmsdkobf/br;->fU:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/br;->fV:Ljava/lang/String;

    .line 33
    iput v1, p0, Ltmsdkobf/br;->fW:I

    .line 35
    iput v1, p0, Ltmsdkobf/br;->fX:I

    .line 37
    iput v1, p0, Ltmsdkobf/br;->fY:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/br;->dexSha1:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Ltmsdkobf/br;->fZ:Ljava/util/ArrayList;

    .line 45
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 6
    .parameter "_is"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    sget-object v2, Ltmsdkobf/br;->J:Ltmsdkobf/af;

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Ltmsdkobf/af;

    invoke-direct {v2}, Ltmsdkobf/af;-><init>()V

    sput-object v2, Ltmsdkobf/br;->J:Ltmsdkobf/af;

    .line 110
    :cond_0
    sget-object v2, Ltmsdkobf/br;->J:Ltmsdkobf/af;

    invoke-virtual {p1, v2, v4, v5}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v2

    check-cast v2, Ltmsdkobf/af;

    iput-object v2, p0, Ltmsdkobf/br;->B:Ltmsdkobf/af;

    .line 111
    iget v2, p0, Ltmsdkobf/br;->fO:I

    invoke-virtual {p1, v2, v5, v5}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->fO:I

    .line 112
    iget v2, p0, Ltmsdkobf/br;->aj:I

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3, v5}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->aj:I

    .line 113
    sget-object v2, Ltmsdkobf/br;->ga:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ltmsdkobf/br;->ga:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ltmsdkobf/ae;

    invoke-direct {v0}, Ltmsdkobf/ae;-><init>()V

    .line 117
    .local v0, __var_48:Ltmsdkobf/ae;
    sget-object v2, Ltmsdkobf/br;->ga:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v0           #__var_48:Ltmsdkobf/ae;
    :cond_1
    sget-object v2, Ltmsdkobf/br;->ga:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Ltmsdkobf/br;->fP:Ljava/util/ArrayList;

    .line 120
    iget v2, p0, Ltmsdkobf/br;->fQ:I

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->fQ:I

    .line 121
    iget-boolean v2, p0, Ltmsdkobf/br;->fR:Z

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v2

    iput-boolean v2, p0, Ltmsdkobf/br;->fR:Z

    .line 122
    iget v2, p0, Ltmsdkobf/br;->fS:I

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->fS:I

    .line 123
    iget v2, p0, Ltmsdkobf/br;->position:I

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->position:I

    .line 124
    iget v2, p0, Ltmsdkobf/br;->fT:I

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->fT:I

    .line 125
    iget v2, p0, Ltmsdkobf/br;->fU:I

    const/16 v3, 0x9

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->fU:I

    .line 126
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltmsdkobf/br;->fV:Ljava/lang/String;

    .line 127
    iget v2, p0, Ltmsdkobf/br;->fW:I

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->fW:I

    .line 128
    iget v2, p0, Ltmsdkobf/br;->fX:I

    const/16 v3, 0xc

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->fX:I

    .line 129
    iget v2, p0, Ltmsdkobf/br;->fY:I

    const/16 v3, 0xd

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/br;->fY:I

    .line 130
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltmsdkobf/br;->dexSha1:Ljava/lang/String;

    .line 131
    sget-object v2, Ltmsdkobf/br;->gb:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ltmsdkobf/br;->gb:Ljava/util/ArrayList;

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    .local v1, __var_49:Ljava/lang/Integer;
    sget-object v2, Ltmsdkobf/br;->gb:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v1           #__var_49:Ljava/lang/Integer;
    :cond_2
    sget-object v2, Ltmsdkobf/br;->gb:Ljava/util/ArrayList;

    const/16 v3, 0xf

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Ltmsdkobf/br;->fZ:Ljava/util/ArrayList;

    .line 138
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 69
    iget-object v0, p0, Ltmsdkobf/br;->B:Ltmsdkobf/af;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 70
    iget v0, p0, Ltmsdkobf/br;->fO:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 71
    iget v0, p0, Ltmsdkobf/br;->aj:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 72
    iget-object v0, p0, Ltmsdkobf/br;->fP:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Ltmsdkobf/br;->fP:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 76
    :cond_0
    iget v0, p0, Ltmsdkobf/br;->fQ:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 77
    iget-boolean v0, p0, Ltmsdkobf/br;->fR:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(ZI)V

    .line 78
    iget v0, p0, Ltmsdkobf/br;->fS:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 79
    iget v0, p0, Ltmsdkobf/br;->position:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 80
    iget v0, p0, Ltmsdkobf/br;->fT:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 81
    iget v0, p0, Ltmsdkobf/br;->fU:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 82
    iget-object v0, p0, Ltmsdkobf/br;->fV:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Ltmsdkobf/br;->fV:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 86
    :cond_1
    iget v0, p0, Ltmsdkobf/br;->fW:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 87
    iget v0, p0, Ltmsdkobf/br;->fX:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 88
    iget v0, p0, Ltmsdkobf/br;->fY:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 89
    iget-object v0, p0, Ltmsdkobf/br;->dexSha1:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Ltmsdkobf/br;->dexSha1:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 93
    :cond_2
    iget-object v0, p0, Ltmsdkobf/br;->fZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Ltmsdkobf/br;->fZ:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 97
    :cond_3
    return-void
.end method
