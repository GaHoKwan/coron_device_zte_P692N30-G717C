.class public final Ltmsdkobf/bf;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static eW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public eV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/bf;->eV:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    .line 34
    sget-object v1, Ltmsdkobf/bf;->eW:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/bf;->eW:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ltmsdkobf/ay;

    invoke-direct {v0}, Ltmsdkobf/ay;-><init>()V

    .line 38
    .local v0, __var_2:Ltmsdkobf/ay;
    sget-object v1, Ltmsdkobf/bf;->eW:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .end local v0           #__var_2:Ltmsdkobf/ay;
    :cond_0
    sget-object v1, Ltmsdkobf/bf;->eW:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v2}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Ltmsdkobf/bf;->eV:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 24
    iget-object v0, p0, Ltmsdkobf/bf;->eV:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Ltmsdkobf/bf;->eV:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 28
    :cond_0
    return-void
.end method
