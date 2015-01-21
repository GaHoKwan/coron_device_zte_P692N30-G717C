.class public final Ltmsdkobf/c;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static z:Ljava/util/ArrayList;
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
.field public banIps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public banUrls:Ljava/util/ArrayList;
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

.field public name:Ljava/lang/String;

.field public type:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput v0, p0, Ltmsdkobf/c;->id:I

    .line 13
    iput v0, p0, Ltmsdkobf/c;->type:I

    .line 15
    iput v0, p0, Ltmsdkobf/c;->x:I

    .line 17
    iput v0, p0, Ltmsdkobf/c;->y:I

    .line 19
    iput-object v1, p0, Ltmsdkobf/c;->banUrls:Ljava/util/ArrayList;

    .line 21
    iput-object v1, p0, Ltmsdkobf/c;->banIps:Ljava/util/ArrayList;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/c;->name:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 5
    .parameter "_is"

    .prologue
    const/4 v4, 0x1

    .line 56
    iget v2, p0, Ltmsdkobf/c;->id:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/c;->id:I

    .line 57
    iget v2, p0, Ltmsdkobf/c;->type:I

    invoke-virtual {p1, v2, v4, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/c;->type:I

    .line 58
    iget v2, p0, Ltmsdkobf/c;->x:I

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/c;->x:I

    .line 59
    iget v2, p0, Ltmsdkobf/c;->y:I

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v2

    iput v2, p0, Ltmsdkobf/c;->y:I

    .line 60
    sget-object v2, Ltmsdkobf/c;->z:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ltmsdkobf/c;->z:Ljava/util/ArrayList;

    .line 63
    const-string v0, ""

    .line 64
    .local v0, __var_50:Ljava/lang/String;
    sget-object v2, Ltmsdkobf/c;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v0           #__var_50:Ljava/lang/String;
    :cond_0
    sget-object v2, Ltmsdkobf/c;->z:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Ltmsdkobf/c;->banUrls:Ljava/util/ArrayList;

    .line 67
    sget-object v2, Ltmsdkobf/c;->A:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ltmsdkobf/c;->A:Ljava/util/ArrayList;

    .line 70
    const-string v1, ""

    .line 71
    .local v1, __var_51:Ljava/lang/String;
    sget-object v2, Ltmsdkobf/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v1           #__var_51:Ljava/lang/String;
    :cond_1
    sget-object v2, Ltmsdkobf/c;->A:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3, v4}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Ltmsdkobf/c;->banIps:Ljava/util/ArrayList;

    .line 74
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v4}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltmsdkobf/c;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 42
    iget v0, p0, Ltmsdkobf/c;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 43
    iget v0, p0, Ltmsdkobf/c;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 44
    iget v0, p0, Ltmsdkobf/c;->x:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 45
    iget v0, p0, Ltmsdkobf/c;->y:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 46
    iget-object v0, p0, Ltmsdkobf/c;->banUrls:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 47
    iget-object v0, p0, Ltmsdkobf/c;->banIps:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 48
    iget-object v0, p0, Ltmsdkobf/c;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 49
    return-void
.end method
