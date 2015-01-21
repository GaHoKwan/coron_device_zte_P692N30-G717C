.class public final Ltmsdkobf/j;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static ae:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ab:I

.field public ac:Ljava/lang/String;

.field public ad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bt;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public product:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/j;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/j;->id:Ljava/lang/String;

    .line 23
    sget-object v0, Ltmsdkobf/x;->bD:Ltmsdkobf/x;

    invoke-virtual {v0}, Ltmsdkobf/x;->value()I

    move-result v0

    iput v0, p0, Ltmsdkobf/j;->product:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/j;->ab:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/j;->ac:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/j;->ad:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p0, Ltmsdkobf/j;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/j;->k(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Ltmsdkobf/j;->product:I

    invoke-virtual {p0, v0}, Ltmsdkobf/j;->f(I)V

    .line 85
    iget v0, p0, Ltmsdkobf/j;->ab:I

    invoke-virtual {p0, v0}, Ltmsdkobf/j;->i(I)V

    .line 86
    iget-object v0, p0, Ltmsdkobf/j;->ac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/j;->l(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Ltmsdkobf/j;->ad:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/j;->b(Ljava/util/ArrayList;)V

    .line 88
    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, checksoft:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bt;>;"
    iput-object p1, p0, Ltmsdkobf/j;->ad:Ljava/util/ArrayList;

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
    sget-boolean v2, Ltmsdkobf/j;->N:Z

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
    check-cast v0, Ltmsdkobf/j;

    .line 107
    .local v0, t:Ltmsdkobf/j;
    iget-object v2, p0, Ltmsdkobf/j;->id:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/j;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/j;->product:I

    iget v3, v0, Ltmsdkobf/j;->product:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/j;->ab:I

    iget v3, v0, Ltmsdkobf/j;->ab:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/j;->ac:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/j;->ac:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/j;->ad:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/j;->ad:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public f(I)V
    .locals 0
    .parameter "product"

    .prologue
    .line 48
    iput p1, p0, Ltmsdkobf/j;->product:I

    .line 49
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

.method public i(I)V
    .locals 0
    .parameter "isbuildin"

    .prologue
    .line 58
    iput p1, p0, Ltmsdkobf/j;->ab:I

    .line 59
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    iput-object p1, p0, Ltmsdkobf/j;->id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 68
    iput-object p1, p0, Ltmsdkobf/j;->ac:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-virtual {p1, v3, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/j;->k(Ljava/lang/String;)V

    .line 163
    iget v1, p0, Ltmsdkobf/j;->product:I

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/j;->f(I)V

    .line 165
    iget v1, p0, Ltmsdkobf/j;->ab:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/j;->i(I)V

    .line 167
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/j;->l(Ljava/lang/String;)V

    .line 169
    sget-object v1, Ltmsdkobf/j;->ae:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/j;->ae:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ltmsdkobf/bt;

    invoke-direct {v0}, Ltmsdkobf/bt;-><init>()V

    .line 173
    .local v0, __var_39:Ltmsdkobf/bt;
    sget-object v1, Ltmsdkobf/j;->ae:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v0           #__var_39:Ltmsdkobf/bt;
    :cond_0
    sget-object v1, Ltmsdkobf/j;->ae:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltmsdkobf/j;->b(Ljava/util/ArrayList;)V

    .line 177
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 143
    iget-object v0, p0, Ltmsdkobf/j;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 144
    iget v0, p0, Ltmsdkobf/j;->product:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 145
    iget v0, p0, Ltmsdkobf/j;->ab:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 146
    iget-object v0, p0, Ltmsdkobf/j;->ac:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ltmsdkobf/j;->ac:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 150
    :cond_0
    iget-object v0, p0, Ltmsdkobf/j;->ad:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Ltmsdkobf/j;->ad:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 154
    :cond_1
    return-void
.end method
