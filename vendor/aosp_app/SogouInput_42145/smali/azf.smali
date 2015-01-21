.class public final Lazf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1, p2}, Lazf;->a(Ljava/lang/String;I)Lazf;

    .line 19
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 29
    move v1, v0

    .line 30
    :goto_0
    iget-object v2, p0, Lazf;->a:Ljava/lang/String;

    iget v3, p0, Lazf;->a:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 35
    return v0
.end method

.method public a(Ljava/lang/String;I)Lazf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lazf;->a:Ljava/lang/String;

    .line 23
    iput p2, p0, Lazf;->a:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lazf;->b:I

    .line 25
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lazf;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 44
    iget v2, p0, Lazf;->b:I

    .line 45
    if-ne v2, v1, :cond_0

    .line 50
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-object v3, p0, Lazf;->a:Ljava/lang/String;

    iget v4, p0, Lazf;->a:I

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    iput v3, p0, Lazf;->b:I

    .line 47
    iget v3, p0, Lazf;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iput v1, p0, Lazf;->b:I

    .line 48
    :cond_1
    iget v1, p0, Lazf;->b:I

    if-ne v2, v1, :cond_2

    .line 49
    :goto_1
    iget v1, p0, Lazf;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lazf;->b:I

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lazf;->a:Ljava/lang/String;

    iget v1, p0, Lazf;->b:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lazf;->b:I

    iget-object v1, p0, Lazf;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
