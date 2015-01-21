.class public final Ltmsdkobf/bb;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static ey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ba;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bb;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/bb;->ex:Ljava/util/ArrayList;

    .line 35
    iget-object v0, p0, Ltmsdkobf/bb;->ex:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/bb;->f(Ljava/util/ArrayList;)V

    .line 36
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 72
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 74
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bb;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 50
    check-cast v0, Ltmsdkobf/bb;

    .line 51
    .local v0, t:Ltmsdkobf/bb;
    iget-object v1, p0, Ltmsdkobf/bb;->ex:Ljava/util/ArrayList;

    iget-object v2, v0, Ltmsdkobf/bb;->ex:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ba;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, queryinfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ba;>;"
    iput-object p1, p0, Ltmsdkobf/bb;->ex:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    .line 93
    sget-object v1, Ltmsdkobf/bb;->ey:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/bb;->ey:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ltmsdkobf/ba;

    invoke-direct {v0}, Ltmsdkobf/ba;-><init>()V

    .line 97
    .local v0, __var_2:Ltmsdkobf/ba;
    sget-object v1, Ltmsdkobf/bb;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v0           #__var_2:Ltmsdkobf/ba;
    :cond_0
    sget-object v1, Ltmsdkobf/bb;->ey:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v2}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltmsdkobf/bb;->f(Ljava/util/ArrayList;)V

    .line 101
    return-void
.end method

.method public t()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Ltmsdkobf/bb;->ex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 83
    iget-object v0, p0, Ltmsdkobf/bb;->ex:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Ltmsdkobf/bb;->ex:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 87
    :cond_0
    return-void
.end method
