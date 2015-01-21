.class public final Ltmsdkobf/e;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static S:Ljava/util/ArrayList;
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
.field public O:Ljava/lang/String;

.field public P:I

.field public Q:Ljava/lang/String;

.field public R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/e;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/e;->O:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Ltmsdkobf/e;->P:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/e;->Q:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/e;->R:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Ltmsdkobf/e;->O:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/e;->a(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Ltmsdkobf/e;->P:I

    invoke-virtual {p0, v0}, Ltmsdkobf/e;->e(I)V

    .line 73
    iget-object v0, p0, Ltmsdkobf/e;->Q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdkobf/e;->b(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Ltmsdkobf/e;->R:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/e;->a(Ljava/util/ArrayList;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter "recommend"

    .prologue
    .line 36
    iput-object p1, p0, Ltmsdkobf/e;->O:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, picurls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Ltmsdkobf/e;->R:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 56
    iput-object p1, p0, Ltmsdkobf/e;->Q:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 117
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 119
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/e;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public e(I)V
    .locals 0
    .parameter "sign"

    .prologue
    .line 46
    iput p1, p0, Ltmsdkobf/e;->P:I

    .line 47
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 92
    check-cast v0, Ltmsdkobf/e;

    .line 93
    .local v0, t:Ltmsdkobf/e;
    iget-object v2, p0, Ltmsdkobf/e;->O:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/e;->O:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ltmsdkobf/e;->P:I

    iget v3, v0, Ltmsdkobf/e;->P:I

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/e;->Q:Ljava/lang/String;

    iget-object v3, v0, Ltmsdkobf/e;->Q:Ljava/lang/String;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/e;->R:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/e;->R:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p1, v3, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/e;->a(Ljava/lang/String;)V

    .line 150
    iget v1, p0, Ltmsdkobf/e;->P:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    invoke-virtual {p0, v1}, Ltmsdkobf/e;->e(I)V

    .line 152
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltmsdkobf/e;->b(Ljava/lang/String;)V

    .line 154
    sget-object v1, Ltmsdkobf/e;->S:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/e;->S:Ljava/util/ArrayList;

    .line 157
    const-string v0, ""

    .line 158
    .local v0, __var_45:Ljava/lang/String;
    sget-object v1, Ltmsdkobf/e;->S:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v0           #__var_45:Ljava/lang/String;
    :cond_0
    sget-object v1, Ltmsdkobf/e;->S:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltmsdkobf/e;->a(Ljava/util/ArrayList;)V

    .line 162
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 128
    iget-object v0, p0, Ltmsdkobf/e;->O:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Ltmsdkobf/e;->O:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 132
    :cond_0
    iget v0, p0, Ltmsdkobf/e;->P:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 133
    iget-object v0, p0, Ltmsdkobf/e;->Q:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Ltmsdkobf/e;->Q:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 137
    :cond_1
    iget-object v0, p0, Ltmsdkobf/e;->R:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Ltmsdkobf/e;->R:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 141
    :cond_2
    return-void
.end method
