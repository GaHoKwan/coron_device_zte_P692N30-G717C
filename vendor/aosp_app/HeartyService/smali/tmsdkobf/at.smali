.class public final Ltmsdkobf/at;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static final synthetic N:Z

.field static ek:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ej:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/at;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/at;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/at;->ej:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Ltmsdkobf/at;->ej:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltmsdkobf/at;->e(Ljava/util/ArrayList;)V

    .line 31
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 50
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    .end local v1           #o:Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 52
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 54
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Ltmsdkobf/at;->N:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, rspTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ch;>;"
    iput-object p1, p0, Ltmsdkobf/at;->ej:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Ltmsdkobf/at;

    .line 41
    .local v0, t:Ltmsdkobf/at;
    iget-object v1, p0, Ltmsdkobf/at;->ej:Ljava/util/ArrayList;

    iget-object v2, v0, Ltmsdkobf/at;->ej:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public p()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Ltmsdkobf/at;->ej:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    .line 71
    sget-object v1, Ltmsdkobf/at;->ek:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdkobf/at;->ek:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ltmsdkobf/ch;

    invoke-direct {v0}, Ltmsdkobf/ch;-><init>()V

    .line 75
    .local v0, __var_2:Ltmsdkobf/ch;
    sget-object v1, Ltmsdkobf/at;->ek:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v0           #__var_2:Ltmsdkobf/ch;
    :cond_0
    sget-object v1, Ltmsdkobf/at;->ek:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v2}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltmsdkobf/at;->e(Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 61
    iget-object v0, p0, Ltmsdkobf/at;->ej:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ltmsdkobf/at;->ej:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 65
    :cond_0
    return-void
.end method
