.class public final Ltmsdkobf/bh;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static fd:Ljava/util/ArrayList;
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
.field public eb:Ljava/lang/String;

.field public fb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public fc:Ljava/lang/String;

.field public id:I

.field public time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/bh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/bh;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput v0, p0, Ltmsdkobf/bh;->id:I

    .line 23
    iput v0, p0, Ltmsdkobf/bh;->time:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bh;->eb:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    .line 83
    iget v0, p0, Ltmsdkobf/bh;->id:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bh;->setId(I)V

    .line 84
    iget v0, p0, Ltmsdkobf/bh;->time:I

    invoke-virtual {p0, v0}, Ltmsdkobf/bh;->B(I)V

    .line 85
    iget-object v0, p0, Ltmsdkobf/bh;->eb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bh;->I(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/bh;->h(Ljava/util/ArrayList;)V

    .line 87
    iget-object v0, p0, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/bh;->P(Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 48
    iput p1, p0, Ltmsdkobf/bh;->time:I

    .line 49
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 58
    iput-object p1, p0, Ltmsdkobf/bh;->eb:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0
    .parameter "paramvalues"

    .prologue
    .line 78
    iput-object p1, p0, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 132
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 134
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 136
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/bh;->N:Z

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

    .line 101
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 106
    check-cast v0, Ltmsdkobf/bh;

    .line 107
    .local v0, t:Ltmsdkobf/bh;
    iget v2, p0, Ltmsdkobf/bh;->id:I

    iget v3, v0, Ltmsdkobf/bh;->id:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/bh;->time:I

    iget v3, v0, Ltmsdkobf/bh;->time:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bh;->eb:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bh;->eb:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public h(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, ivalues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 119
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    iget v1, p0, Ltmsdkobf/bh;->id:I

    invoke-virtual {p1, v1, v3, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/bh;->setId(I)V

    .line 162
    iget v1, p0, Ltmsdkobf/bh;->time:I

    invoke-virtual {p1, v1, v2, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/bh;->B(I)V

    .line 164
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/bh;->I(Ljava/lang/String;)V

    .line 166
    sget-object v1, Ltmsdkobf/bh;->fd:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/bh;->fd:Ljava/util/ArrayList;

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    .local v0, __var_1:Ljava/lang/Integer;
    sget-object v1, Ltmsdkobf/bh;->fd:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v0           #__var_1:Ljava/lang/Integer;
    :cond_0
    sget-object v1, Ltmsdkobf/bh;->fd:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltmsdkobf/bh;->h(Ljava/util/ArrayList;)V

    .line 174
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/bh;->P(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    iput p1, p0, Ltmsdkobf/bh;->id:I

    .line 39
    return-void
.end method

.method public v()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 143
    iget v0, p0, Ltmsdkobf/bh;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 144
    iget v0, p0, Ltmsdkobf/bh;->time:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 145
    iget-object v0, p0, Ltmsdkobf/bh;->eb:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 150
    :cond_0
    iget-object v0, p0, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 154
    :cond_1
    return-void
.end method
