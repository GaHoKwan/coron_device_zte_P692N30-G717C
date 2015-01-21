.class public Lajj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajj;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lajj;->a:I

    return v0
.end method

.method public a(Lajj;)I
    .locals 2
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1}, Lajj;->a()I

    move-result v0

    .line 124
    iget v1, p0, Lajj;->a:I

    if-le v1, v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    iget v1, p0, Lajj;->a:I

    if-ge v1, v0, :cond_1

    .line 127
    const/4 v0, -0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lajj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lajj;->a:I

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lajj;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-boolean p1, p0, Lajj;->a:Z

    .line 114
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lajj;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lajj;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lajj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lajj;->b:I

    .line 76
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lajj;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lajj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lajj;->d:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 3
    check-cast p1, Lajj;

    invoke-virtual {p0, p1}, Lajj;->a(Lajj;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lajj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lajj;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lajj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lajj;->f:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lajj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lajj;->g:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lajj;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lajj;->h:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lajj;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lajj;->i:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lajj;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lajj;->j:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lajj;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lajj;->k:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lajj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lajj;->a:Ljava/lang/String;

    .line 120
    return-void
.end method
