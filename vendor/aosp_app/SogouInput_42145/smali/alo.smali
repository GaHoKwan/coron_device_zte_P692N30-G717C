.class public Lalo;
.super Lalg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lalo;->b:I

    .line 21
    iput-object v2, p0, Lalo;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Lrr;

    iget-object v1, p0, Lalo;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lalo;->a:Lrr;

    .line 27
    iget-object v0, p0, Lalo;->a:Landroid/content/Context;

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalo;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lalo;->a:Ljava/lang/String;

    invoke-static {v0}, Laox;->a(Ljava/lang/String;)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->h:Z

    .line 79
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->M()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->h:Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalo;->b:Z

    .line 99
    iget-object v0, p0, Lalo;->a:Lsg;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lalo;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 102
    :cond_0
    iget-object v0, p0, Lalo;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 103
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->Q()V

    .line 105
    :cond_1
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 31
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p2}, Lsg;->a()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_5

    .line 35
    iput-boolean v3, p0, Lalo;->b:Z

    .line 37
    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    if-lez v0, :cond_4

    .line 38
    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    iput v0, p0, Lalo;->b:I

    .line 39
    iget-object v0, p0, Lalo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getmCloudInputBytes()[B

    move-result-object v0

    .line 40
    sget v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    new-array v1, v1, [B

    .line 41
    sget v2, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v0, p0, Lalo;->a:Lrr;

    iget-object v2, p0, Lalo;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCloudOutputBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrr;->a([B[B)I

    move-result v0

    iput v0, p0, Lalo;->a:I

    .line 49
    iget v0, p0, Lalo;->a:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    sget v0, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudDownLen:I

    if-lez v0, :cond_3

    .line 52
    iget v0, p0, Lalo;->b:I

    sget v1, Lcom/sohu/inputmethod/engine/IMEInterface;->mCloudUploadLen:I

    if-ne v0, v1, :cond_2

    .line 53
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->O()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lalo;->b:I

    .line 56
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lalo;->b:Z

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lalo;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aD:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aD:I

    .line 60
    invoke-virtual {p0}, Lalo;->a()V

    .line 61
    sput-boolean v3, Lcom/sohu/inputmethod/sogou/SogouIME;->h:Z

    .line 62
    sput v3, Lcom/sohu/inputmethod/sogou/SogouIME;->k:I

    .line 63
    invoke-direct {p0}, Lalo;->b()V

    goto :goto_0

    .line 67
    :cond_4
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->P()V

    goto :goto_0

    .line 69
    :cond_5
    invoke-virtual {p2}, Lsg;->a()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    .line 70
    invoke-direct {p0}, Lalo;->b()V

    goto :goto_0
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lalo;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalo;->b:Z

    .line 89
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->P()V

    .line 90
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lalo;->a()V

    .line 94
    return-void
.end method
