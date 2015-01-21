.class public Lapm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Laze;

.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Laze;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    const-string v0, "LatinCapitalizer"

    const-string v1, "Invalid String pool!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iput-object p1, p0, Lapm;->a:Laze;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapm;->b:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapm;->c:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapm;->d:Ljava/util/List;

    .line 38
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lapm;->a:Laze;

    invoke-virtual {v0, p2}, Laze;->a(Ljava/util/List;)I

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 82
    iget-object v2, p0, Lapm;->a:Laze;

    invoke-virtual {v2}, Laze;->a()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lapm;->a:Laze;

    invoke-virtual {v0, p2}, Laze;->a(Ljava/util/List;)I

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 93
    iget-object v2, p0, Lapm;->a:Laze;

    invoke-virtual {v2}, Laze;->a()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lapm;->a:Laze;

    invoke-virtual {v0, p2}, Laze;->a(Ljava/util/List;)I

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 104
    iget-object v2, p0, Lapm;->a:Laze;

    invoke-virtual {v2}, Laze;->a()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 109
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 2
    .parameter

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 76
    iget-object v0, p0, Lapm;->a:Ljava/util/List;

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lapm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lapm;->a:Ljava/util/List;

    iget-object v1, p0, Lapm;->b:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lapm;->a(Ljava/util/List;Ljava/util/List;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lapm;->b:Ljava/util/List;

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lapm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lapm;->a:Ljava/util/List;

    iget-object v1, p0, Lapm;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lapm;->c(Ljava/util/List;Ljava/util/List;)V

    .line 62
    :cond_1
    iget-object v0, p0, Lapm;->c:Ljava/util/List;

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v0, p0, Lapm;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lapm;->a:Ljava/util/List;

    iget-object v1, p0, Lapm;->d:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lapm;->b(Ljava/util/List;Ljava/util/List;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lapm;->d:Ljava/util/List;

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lapm;->a:Laze;

    iget-object v1, p0, Lapm;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Laze;->a(Ljava/util/List;)I

    .line 42
    iget-object v0, p0, Lapm;->a:Laze;

    iget-object v1, p0, Lapm;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Laze;->a(Ljava/util/List;)I

    .line 43
    iget-object v0, p0, Lapm;->a:Laze;

    iget-object v1, p0, Lapm;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Laze;->a(Ljava/util/List;)I

    .line 44
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lapm;->a()V

    .line 48
    iput-object p1, p0, Lapm;->a:Ljava/util/List;

    .line 49
    return-void
.end method
