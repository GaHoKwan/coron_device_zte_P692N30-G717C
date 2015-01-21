.class public Ljr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/sohu/handwriting/engine/HWIMEInterface;

.field private a:Ljava/util/ArrayList;

.field private a:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Ljr;->a:[C

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljr;->a:Ljava/util/ArrayList;

    .line 28
    invoke-static {}, Lcom/sohu/handwriting/engine/HWIMEInterface;->getInterface()Lcom/sohu/handwriting/engine/HWIMEInterface;

    move-result-object v0

    iput-object v0, p0, Ljr;->a:Lcom/sohu/handwriting/engine/HWIMEInterface;

    .line 30
    return-void
.end method

.method private a([CILjava/util/List;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    if-ge v0, p2, :cond_0

    .line 74
    :try_start_0
    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public a([S)Ljava/util/ArrayList;
    .locals 4
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Ljr;->a:Lcom/sohu/handwriting/engine/HWIMEInterface;

    iget-object v1, p0, Ljr;->a:[C

    invoke-virtual {v0, p1, v1}, Lcom/sohu/handwriting/engine/HWIMEInterface;->recognize([S[C)I

    move-result v0

    .line 62
    iget-object v1, p0, Ljr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object v1, p0, Ljr;->a:[C

    iget-object v2, p0, Ljr;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Ljr;->a([CILjava/util/List;I)V

    .line 67
    iget-object v0, p0, Ljr;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ljr;->a:Lcom/sohu/handwriting/engine/HWIMEInterface;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Ljr;->a:Lcom/sohu/handwriting/engine/HWIMEInterface;

    invoke-virtual {v0}, Lcom/sohu/handwriting/engine/HWIMEInterface;->release()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Ljr;->a:Lcom/sohu/handwriting/engine/HWIMEInterface;

    .line 98
    :cond_0
    return-void
.end method
