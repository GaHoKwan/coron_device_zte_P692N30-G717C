.class public final Ltmsdkobf/n;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static aA:Ltmsdkobf/cc;

.field static aB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/m;",
            ">;"
        }
    .end annotation
.end field

.field static ay:Ltmsdkobf/f;

.field static az:Ltmsdkobf/ca;


# instance fields
.field public au:Ltmsdkobf/f;

.field public av:Ltmsdkobf/ca;

.field public aw:Ltmsdkobf/cc;

.field public ax:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/n;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    iput-object v0, p0, Ltmsdkobf/n;->au:Ltmsdkobf/f;

    .line 23
    iput-object v0, p0, Ltmsdkobf/n;->av:Ltmsdkobf/ca;

    .line 25
    iput-object v0, p0, Ltmsdkobf/n;->aw:Ltmsdkobf/cc;

    .line 27
    iput-object v0, p0, Ltmsdkobf/n;->ax:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Ltmsdkobf/n;->au:Ltmsdkobf/f;

    invoke-virtual {p0, v0}, Ltmsdkobf/n;->a(Ltmsdkobf/f;)V

    .line 72
    iget-object v0, p0, Ltmsdkobf/n;->av:Ltmsdkobf/ca;

    invoke-virtual {p0, v0}, Ltmsdkobf/n;->a(Ltmsdkobf/ca;)V

    .line 73
    iget-object v0, p0, Ltmsdkobf/n;->aw:Ltmsdkobf/cc;

    invoke-virtual {p0, v0}, Ltmsdkobf/n;->a(Ltmsdkobf/cc;)V

    .line 74
    iget-object v0, p0, Ltmsdkobf/n;->ax:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/n;->c(Ljava/util/ArrayList;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/ca;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 46
    iput-object p1, p0, Ltmsdkobf/n;->av:Ltmsdkobf/ca;

    .line 47
    return-void
.end method

.method public a(Ltmsdkobf/cc;)V
    .locals 0
    .parameter "tips"

    .prologue
    .line 56
    iput-object p1, p0, Ltmsdkobf/n;->aw:Ltmsdkobf/cc;

    .line 57
    return-void
.end method

.method public a(Ltmsdkobf/f;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 36
    iput-object p1, p0, Ltmsdkobf/n;->au:Ltmsdkobf/f;

    .line 37
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, cloudcmds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/m;>;"
    iput-object p1, p0, Ltmsdkobf/n;->ax:Ljava/util/ArrayList;

    .line 67
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
    sget-boolean v2, Ltmsdkobf/n;->N:Z

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

    .line 87
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 92
    check-cast v0, Ltmsdkobf/n;

    .line 93
    .local v0, t:Ltmsdkobf/n;
    iget-object v2, p0, Ltmsdkobf/n;->au:Ltmsdkobf/f;

    iget-object v3, v0, Ltmsdkobf/n;->au:Ltmsdkobf/f;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/n;->av:Ltmsdkobf/ca;

    iget-object v3, v0, Ltmsdkobf/n;->av:Ltmsdkobf/ca;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/n;->aw:Ltmsdkobf/cc;

    iget-object v3, v0, Ltmsdkobf/n;->aw:Ltmsdkobf/cc;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltmsdkobf/n;->ax:Ljava/util/ArrayList;

    iget-object v3, v0, Ltmsdkobf/n;->ax:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public f()Ltmsdkobf/ca;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ltmsdkobf/n;->av:Ltmsdkobf/ca;

    return-object v0
.end method

.method public g()Ltmsdkobf/cc;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltmsdkobf/n;->aw:Ltmsdkobf/cc;

    return-object v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Ltmsdkobf/n;->ax:Ljava/util/ArrayList;

    return-object v0
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 147
    sget-object v1, Ltmsdkobf/n;->ay:Ltmsdkobf/f;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ltmsdkobf/f;

    invoke-direct {v1}, Ltmsdkobf/f;-><init>()V

    sput-object v1, Ltmsdkobf/n;->ay:Ltmsdkobf/f;

    .line 151
    :cond_0
    sget-object v1, Ltmsdkobf/n;->ay:Ltmsdkobf/f;

    invoke-virtual {p1, v1, v3, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v1

    check-cast v1, Ltmsdkobf/f;

    invoke-virtual {p0, v1}, Ltmsdkobf/n;->a(Ltmsdkobf/f;)V

    .line 153
    sget-object v1, Ltmsdkobf/n;->az:Ltmsdkobf/ca;

    if-nez v1, :cond_1

    .line 155
    new-instance v1, Ltmsdkobf/ca;

    invoke-direct {v1}, Ltmsdkobf/ca;-><init>()V

    sput-object v1, Ltmsdkobf/n;->az:Ltmsdkobf/ca;

    .line 157
    :cond_1
    sget-object v1, Ltmsdkobf/n;->az:Ltmsdkobf/ca;

    invoke-virtual {p1, v1, v2, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ca;

    invoke-virtual {p0, v1}, Ltmsdkobf/n;->a(Ltmsdkobf/ca;)V

    .line 159
    sget-object v1, Ltmsdkobf/n;->aA:Ltmsdkobf/cc;

    if-nez v1, :cond_2

    .line 161
    new-instance v1, Ltmsdkobf/cc;

    invoke-direct {v1}, Ltmsdkobf/cc;-><init>()V

    sput-object v1, Ltmsdkobf/n;->aA:Ltmsdkobf/cc;

    .line 163
    :cond_2
    sget-object v1, Ltmsdkobf/n;->aA:Ltmsdkobf/cc;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v1

    check-cast v1, Ltmsdkobf/cc;

    invoke-virtual {p0, v1}, Ltmsdkobf/n;->a(Ltmsdkobf/cc;)V

    .line 165
    sget-object v1, Ltmsdkobf/n;->aB:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/n;->aB:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ltmsdkobf/m;

    invoke-direct {v0}, Ltmsdkobf/m;-><init>()V

    .line 169
    .local v0, __var_2:Ltmsdkobf/m;
    sget-object v1, Ltmsdkobf/n;->aB:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v0           #__var_2:Ltmsdkobf/m;
    :cond_3
    sget-object v1, Ltmsdkobf/n;->aB:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltmsdkobf/n;->c(Ljava/util/ArrayList;)V

    .line 173
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 128
    iget-object v0, p0, Ltmsdkobf/n;->au:Ltmsdkobf/f;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 129
    iget-object v0, p0, Ltmsdkobf/n;->av:Ltmsdkobf/ca;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 130
    iget-object v0, p0, Ltmsdkobf/n;->aw:Ltmsdkobf/cc;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ltmsdkobf/n;->aw:Ltmsdkobf/cc;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 134
    :cond_0
    iget-object v0, p0, Ltmsdkobf/n;->ax:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Ltmsdkobf/n;->ax:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 138
    :cond_1
    return-void
.end method
