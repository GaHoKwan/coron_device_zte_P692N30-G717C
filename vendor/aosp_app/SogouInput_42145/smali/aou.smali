.class public Laou;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Laov;

.field public a:Ljava/lang/StringBuilder;

.field private b:I

.field public b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Laou;->a:Ljava/lang/StringBuilder;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Laou;->b:Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Laou;->b:I

    return v0
.end method

.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Laou;->a:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iput v1, p0, Laou;->b:I

    iput v1, p0, Laou;->a:I

    .line 99
    iget-object v0, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 100
    iget-object v0, p0, Laou;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    return-void
.end method

.method public a(Laov;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Laou;->a:Laov;

    .line 86
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Laou;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 90
    iget-object v0, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 91
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Laou;->a:Laov;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laou;->a:Laov;

    invoke-interface {v0}, Laov;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Laou;->a:Laov;

    invoke-interface {v0}, Laov;->c()I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laou;->b:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0}, Laou;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 52
    :goto_1
    iget-object v2, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 53
    iget-object v2, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    :cond_2
    iget-object v2, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public c()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 104
    .line 105
    iget-object v1, p0, Laou;->a:Laov;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Laou;->a:Laov;

    invoke-interface {v1}, Laov;->a()I

    move-result v1

    iput v1, p0, Laou;->b:I

    .line 107
    iget-object v1, p0, Laou;->a:Laov;

    invoke-interface {v1}, Laov;->b()I

    move-result v1

    iput v1, p0, Laou;->a:I

    .line 109
    iget-object v1, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 110
    iget-object v2, p0, Laou;->a:Laov;

    iget-object v3, p0, Laou;->a:Ljava/lang/StringBuilder;

    iget-object v4, p0, Laou;->b:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3, v4}, Laov;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 111
    iget-object v2, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 113
    invoke-virtual {p0}, Laou;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    const/4 v0, 0x4

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    if-lez v2, :cond_3

    .line 119
    if-lez v1, :cond_2

    .line 120
    const/4 v0, 0x3

    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 125
    :cond_3
    if-lez v1, :cond_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Laou;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
