.class public final Ltmsdkobf/bu;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static hh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bq;",
            ">;"
        }
    .end annotation
.end field

.field static hi:Ltmsdkobf/bv;


# instance fields
.field public hf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bq;",
            ">;"
        }
    .end annotation
.end field

.field public hg:Ltmsdkobf/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bu;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput-object v0, p0, Ltmsdkobf/bu;->hf:Ljava/util/ArrayList;

    .line 23
    iput-object v0, p0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 85
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 87
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 89
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bu;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 124
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 125
    .local v0, _ds:Ltmsdkobf/db;
    iget-object v1, p0, Ltmsdkobf/bu;->hf:Ljava/util/ArrayList;

    const-string v2, "vctSofts"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/util/Collection;Ljava/lang/String;)Ltmsdkobf/db;

    .line 126
    iget-object v1, p0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    const-string v2, "softListInfo"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ltmsdkobf/df;Ljava/lang/String;)Ltmsdkobf/db;

    .line 127
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 62
    check-cast v0, Ltmsdkobf/bu;

    .line 63
    .local v0, t:Ltmsdkobf/bu;
    iget-object v2, p0, Ltmsdkobf/bu;->hf:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/bu;->hf:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    iget-object v3, v0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    sget-object v1, Ltmsdkobf/bu;->hh:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/bu;->hh:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ltmsdkobf/bq;

    invoke-direct {v0}, Ltmsdkobf/bq;-><init>()V

    .line 112
    .local v0, __var_77:Ltmsdkobf/bq;
    sget-object v1, Ltmsdkobf/bu;->hh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v0           #__var_77:Ltmsdkobf/bq;
    :cond_0
    sget-object v1, Ltmsdkobf/bu;->hh:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Ltmsdkobf/bu;->hf:Ljava/util/ArrayList;

    .line 115
    sget-object v1, Ltmsdkobf/bu;->hi:Ltmsdkobf/bv;

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Ltmsdkobf/bv;

    invoke-direct {v1}, Ltmsdkobf/bv;-><init>()V

    sput-object v1, Ltmsdkobf/bu;->hi:Ltmsdkobf/bv;

    .line 119
    :cond_1
    sget-object v1, Ltmsdkobf/bu;->hi:Ltmsdkobf/bv;

    invoke-virtual {p1, v1, v3, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v1

    check-cast v1, Ltmsdkobf/bv;

    iput-object v1, p0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    .line 120
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 96
    iget-object v0, p0, Ltmsdkobf/bu;->hf:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 97
    iget-object v0, p0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ltmsdkobf/bu;->hg:Ltmsdkobf/bv;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 101
    :cond_0
    return-void
.end method
