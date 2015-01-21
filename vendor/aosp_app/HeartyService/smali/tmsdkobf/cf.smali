.class public final Ltmsdkobf/cf;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static io:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ce;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:Ljava/lang/String;

.field public in:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/cf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/cf;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/cf;->id:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/cf;->in:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Ltmsdkobf/cf;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/cf;->k(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Ltmsdkobf/cf;->in:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/cf;->l(Ljava/util/ArrayList;)V

    .line 49
    return-void
.end method


# virtual methods
.method public B()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ce;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Ltmsdkobf/cf;->in:Ljava/util/ArrayList;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 87
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 89
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/cf;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 64
    check-cast v0, Ltmsdkobf/cf;

    .line 65
    .local v0, t:Ltmsdkobf/cf;
    iget-object v2, p0, Ltmsdkobf/cf;->id:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/cf;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/cf;->in:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/cf;->in:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Ltmsdkobf/cf;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 v1, 0x0

    return v1
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 32
    iput-object p1, p0, Ltmsdkobf/cf;->id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public l(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ce;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, vecUploadFile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ce;>;"
    iput-object p1, p0, Ltmsdkobf/cf;->in:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/cf;->k(Ljava/lang/String;)V

    .line 108
    sget-object v1, Ltmsdkobf/cf;->io:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/cf;->io:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ltmsdkobf/ce;

    invoke-direct {v0}, Ltmsdkobf/ce;-><init>()V

    .line 112
    .local v0, __var_47:Ltmsdkobf/ce;
    sget-object v1, Ltmsdkobf/cf;->io:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v0           #__var_47:Ltmsdkobf/ce;
    :cond_0
    sget-object v1, Ltmsdkobf/cf;->io:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v2}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltmsdkobf/cf;->l(Ljava/util/ArrayList;)V

    .line 116
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 98
    iget-object v0, p0, Ltmsdkobf/cf;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 99
    iget-object v0, p0, Ltmsdkobf/cf;->in:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 100
    return-void
.end method
