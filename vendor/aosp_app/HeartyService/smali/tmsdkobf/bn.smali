.class public final Ltmsdkobf/bn;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static fA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/n;",
            ">;"
        }
    .end annotation
.end field

.field public fy:I

.field public fz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bn;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/bn;->fy:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bn;->fz:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/bn;->i(Ljava/util/ArrayList;)V

    .line 60
    iget v0, p0, Ltmsdkobf/bn;->fy:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bn;->R(I)V

    .line 61
    iget-object v0, p0, Ltmsdkobf/bn;->fz:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bn;->Z(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public R(I)V
    .locals 0
    .parameter "nextcheckinterval"

    .prologue
    .line 44
    iput p1, p0, Ltmsdkobf/bn;->fy:I

    .line 45
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0
    .parameter "newtipsid"

    .prologue
    .line 54
    iput-object p1, p0, Ltmsdkobf/bn;->fz:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 102
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 104
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 106
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bn;->N:Z

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

    .line 73
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Ltmsdkobf/bn;

    .line 79
    .local v0, t:Ltmsdkobf/bn;
    iget-object v2, p0, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bn;->fy:I

    iget v3, v0, Ltmsdkobf/bn;->fy:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bn;->fz:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bn;->fz:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v1, 0x0

    return v1
.end method

.method public i(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, cloudinfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/n;>;"
    iput-object p1, p0, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x1

    .line 125
    sget-object v1, Ltmsdkobf/bn;->fA:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/bn;->fA:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ltmsdkobf/n;

    invoke-direct {v0}, Ltmsdkobf/n;-><init>()V

    .line 129
    .local v0, __var_3:Ltmsdkobf/n;
    sget-object v1, Ltmsdkobf/bn;->fA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v0           #__var_3:Ltmsdkobf/n;
    :cond_0
    sget-object v1, Ltmsdkobf/bn;->fA:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v3, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltmsdkobf/bn;->i(Ljava/util/ArrayList;)V

    .line 133
    iget v1, p0, Ltmsdkobf/bn;->fy:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/bn;->R(I)V

    .line 135
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/bn;->Z(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public w()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 113
    iget-object v0, p0, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 114
    iget v0, p0, Ltmsdkobf/bn;->fy:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 115
    iget-object v0, p0, Ltmsdkobf/bn;->fz:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Ltmsdkobf/bn;->fz:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 119
    :cond_0
    return-void
.end method

.method public x()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ltmsdkobf/bn;->fy:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ltmsdkobf/bn;->fz:Ljava/lang/String;

    return-object v0
.end method
