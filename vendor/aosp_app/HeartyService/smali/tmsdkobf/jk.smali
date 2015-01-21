.class public final Ltmsdkobf/jk;
.super Ltmsdkobf/df;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic N:Z

.field static tA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field public ty:Z

.field public tz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltmsdkobf/jk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdkobf/jk;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/jk;->ty:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/jk;->tz:Ljava/util/Map;

    .line 47
    iget-boolean v0, p0, Ltmsdkobf/jk;->ty:Z

    invoke-virtual {p0, v0}, Ltmsdkobf/jk;->u(Z)V

    .line 48
    iget-object v0, p0, Ltmsdkobf/jk;->tz:Ljava/util/Map;

    invoke-virtual {p0, v0}, Ltmsdkobf/jk;->a(Ljava/util/Map;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Ltmsdkobf/jk;->tz:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :cond_0
    return-object v0

    .line 90
    :catch_0
    move-exception v1

    sget-boolean v1, Ltmsdkobf/jk;->N:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 125
    new-instance v0, Ltmsdkobf/db;

    invoke-direct {v0, p1, p2}, Ltmsdkobf/db;-><init>(Ljava/lang/StringBuilder;I)V

    .line 126
    iget-boolean v1, p0, Ltmsdkobf/jk;->ty:Z

    const-string v2, "isMerge"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(ZLjava/lang/String;)Ltmsdkobf/db;

    .line 127
    iget-object v1, p0, Ltmsdkobf/jk;->tz:Ljava/util/Map;

    const-string v2, "valueMap"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/db;->a(Ljava/util/Map;Ljava/lang/String;)Ltmsdkobf/db;

    .line 128
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    check-cast p1, Ltmsdkobf/jk;

    .line 65
    iget-boolean v1, p0, Ltmsdkobf/jk;->ty:Z

    iget-boolean v2, p1, Ltmsdkobf/jk;->ty:Z

    invoke-static {v1, v2}, Ltmsdkobf/dg;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdkobf/jk;->tz:Ljava/util/Map;

    iget-object v2, p1, Ltmsdkobf/jk;->tz:Ljava/util/Map;

    invoke-static {v1, v2}, Ltmsdkobf/dg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Ltmsdkobf/dd;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-boolean v0, p0, Ltmsdkobf/jk;->ty:Z

    invoke-virtual {p1, v0, v3, v4}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Ltmsdkobf/jk;->ty:Z

    .line 110
    sget-object v0, Ltmsdkobf/jk;->tA:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltmsdkobf/jk;->tA:Ljava/util/Map;

    .line 113
    const-string v0, ""

    .line 114
    new-array v1, v4, [B

    .line 115
    aput-byte v3, v1, v3

    .line 117
    sget-object v2, Ltmsdkobf/jk;->tA:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    sget-object v0, Ltmsdkobf/jk;->tA:Ljava/util/Map;

    invoke-virtual {p1, v0, v4, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Ltmsdkobf/jk;->a(Ljava/util/Map;)V

    .line 121
    return-void
.end method

.method public final u(Z)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Ltmsdkobf/jk;->ty:Z

    .line 33
    return-void
.end method

.method public final writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Ltmsdkobf/jk;->ty:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(ZI)V

    .line 98
    iget-object v0, p0, Ltmsdkobf/jk;->tz:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Ltmsdkobf/jk;->tz:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Map;I)V

    .line 102
    :cond_0
    return-void
.end method
