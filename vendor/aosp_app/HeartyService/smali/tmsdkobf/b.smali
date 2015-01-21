.class public final Ltmsdkobf/b;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/b;->v:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    .line 24
    sget-object v1, Ltmsdkobf/b;->w:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/b;->w:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ltmsdkobf/a;

    invoke-direct {v0}, Ltmsdkobf/a;-><init>()V

    .line 27
    .local v0, __var_1:Ltmsdkobf/a;
    sget-object v1, Ltmsdkobf/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .end local v0           #__var_1:Ltmsdkobf/a;
    :cond_0
    sget-object v1, Ltmsdkobf/b;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v2}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Ltmsdkobf/b;->v:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 16
    iget-object v0, p0, Ltmsdkobf/b;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Ltmsdkobf/b;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 19
    :cond_0
    return-void
.end method
