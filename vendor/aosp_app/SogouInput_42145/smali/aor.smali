.class public Laor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private a:Laos;

.field private a:Laot;

.field public a:Ljava/util/List;

.field public a:Ljava/util/Vector;

.field public a:Z

.field public b:I

.field public b:Ljava/util/Vector;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Laor;-><init>(I)V

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const v0, 0x7fffffff

    iput v0, p0, Laor;->c:I

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Laor;->a:Ljava/util/Vector;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Laor;->b:Ljava/util/Vector;

    .line 84
    iput-boolean v1, p0, Laor;->a:Z

    .line 85
    iput-boolean v1, p0, Laor;->b:Z

    .line 92
    iput p1, p0, Laor;->a:I

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laor;->a:Ljava/util/List;

    .line 94
    invoke-virtual {p0}, Laor;->a()V

    .line 95
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 187
    if-ltz v0, :cond_0

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 188
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Laor;->b:Z

    .line 192
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Laor;->b()I

    move-result v0

    iput v0, p0, Laor;->c:I

    .line 198
    :cond_1
    return-void

    .line 190
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Laor;->b:Z

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Laor;->a:Laot;

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Laor;->b:I

    iget-object v1, p0, Laor;->a:Laot;

    iget-object v2, p0, Laor;->a:Ljava/util/List;

    iget v3, p0, Laor;->a:I

    invoke-interface {v1, v2, v3}, Laot;->a(Ljava/util/List;I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Laor;->b:I

    .line 219
    invoke-direct {p0}, Laor;->e()V

    .line 220
    iget-object v0, p0, Laor;->a:Laos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laor;->a:Laos;

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Laos;->a(Ljava/util/List;)V

    .line 222
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Laor;->a:Laot;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Laor;->a:Laot;

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    iget-object v2, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Laor;->a:I

    invoke-interface {v0, v1, v2, v3}, Laot;->a(Ljava/util/List;II)I

    .line 205
    invoke-direct {p0}, Laor;->e()V

    .line 206
    invoke-virtual {p0}, Laor;->b()I

    move-result v0

    .line 207
    iget v1, p0, Laor;->a:I

    if-ge v0, v1, :cond_0

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Laor;->b:Z

    .line 210
    :cond_0
    iget-object v0, p0, Laor;->a:Laos;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laor;->a:Laos;

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Laos;->a(Ljava/util/List;)V

    .line 212
    :cond_1
    return-void
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 227
    iget-object v0, p0, Laor;->a:Laot;

    if-eqz v0, :cond_0

    .line 228
    iget v0, p0, Laor;->b:I

    iget-object v1, p0, Laor;->a:Laot;

    iget-object v2, p0, Laor;->a:Ljava/util/List;

    iget v3, p0, Laor;->a:I

    invoke-interface {v1, v2, v3}, Laot;->b(Ljava/util/List;I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Laor;->b:I

    .line 229
    iget-object v0, p0, Laor;->a:Laos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laor;->a:Laos;

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Laos;->a(Ljava/util/List;)V

    .line 231
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Laor;->b:I

    return v0
.end method

.method public a(I)I
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public a(Ljava/util/List;)Laor;
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Laor;->b()V

    .line 151
    iget-object v0, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laor;->c:I

    .line 153
    return-object p0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 178
    iget v0, p0, Laor;->b:I

    sub-int v0, p1, v0

    .line 179
    if-ltz v0, :cond_0

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 180
    :cond_1
    iget-object v1, p0, Laor;->a:Laos;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laor;->a:Laos;

    invoke-interface {v1, v0}, Laos;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Laor;->b()V

    .line 108
    return-void
.end method

.method public a(Laos;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Laor;->a:Laos;

    .line 99
    return-void
.end method

.method public a(Laot;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0}, Laor;->a()V

    .line 103
    iput-object p1, p0, Laor;->a:Laot;

    .line 104
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 235
    if-ltz p1, :cond_0

    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, p2, 0x1

    if-gt v0, v2, :cond_0

    .line 240
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(IZ)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    if-ltz p1, :cond_0

    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    move v1, v2

    .line 280
    :cond_1
    :goto_0
    return v1

    .line 260
    :cond_2
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v3, p1, 0x1

    if-le v0, v3, :cond_4

    .line 261
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Laor;->b:I

    if-ge v0, v2, :cond_3

    .line 262
    invoke-direct {p0}, Laor;->f()Z

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Laor;->b()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 264
    invoke-direct {p0}, Laor;->e()Z

    goto :goto_0

    .line 271
    :cond_4
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Laor;->b()I

    move-result v3

    iget v4, p0, Laor;->a:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_1

    .line 275
    iget-boolean v0, p0, Laor;->b:Z

    if-nez v0, :cond_1

    .line 278
    invoke-direct {p0}, Laor;->e()Z

    .line 280
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Laor;->b()I

    move-result v3

    if-ge v0, v3, :cond_5

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public b()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Laor;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(I)I
    .locals 2
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Laor;->a:Laot;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Laor;->a:Laot;

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    iget-object v2, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Laot;->b(Ljava/util/List;II)I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Laor;->a:Laot;

    .line 119
    :cond_0
    iget-object v0, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    const v0, 0x7fffffff

    iput v0, p0, Laor;->c:I

    .line 124
    iput-boolean v3, p0, Laor;->b:Z

    .line 126
    invoke-virtual {p0}, Laor;->c()V

    .line 127
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Laor;->b:Z

    return v0
.end method

.method public b(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 288
    if-gez p1, :cond_0

    move v0, v1

    .line 316
    :goto_0
    return v0

    .line 291
    :cond_0
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    move v0, v1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v3, p1, 0x1

    if-le v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Laor;->b()I

    move-result v3

    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    iget v3, p0, Laor;->a:I

    if-lt v0, v3, :cond_3

    move v0, v2

    .line 300
    goto :goto_0

    .line 304
    :cond_3
    invoke-direct {p0}, Laor;->f()V

    .line 308
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Laor;->b()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v1

    .line 309
    goto :goto_0

    .line 311
    :cond_4
    iget-boolean v0, p0, Laor;->b:Z

    if-eqz v0, :cond_5

    move v0, v2

    .line 312
    goto :goto_0

    :cond_5
    move v0, v2

    .line 316
    goto :goto_0
.end method

.method public c(I)I
    .locals 2
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Laor;->c:I

    .line 326
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iput v1, p0, Laor;->b:I

    .line 132
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 133
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Laor;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 135
    return-void
.end method

.method public c()Z
    .locals 6

    .prologue
    .line 357
    iget v0, p0, Laor;->b:I

    .line 358
    iget-object v1, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 360
    iget-object v2, p0, Laor;->a:Laot;

    if-eqz v2, :cond_0

    .line 361
    iget v2, p0, Laor;->b:I

    iget-object v3, p0, Laor;->a:Laot;

    iget-object v4, p0, Laor;->a:Ljava/util/List;

    iget v5, p0, Laor;->a:I

    invoke-interface {v3, v4, v5}, Laot;->a(Ljava/util/List;I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laor;->b:I

    .line 362
    invoke-direct {p0}, Laor;->e()V

    .line 363
    iget-object v2, p0, Laor;->a:Laos;

    if-eqz v2, :cond_0

    iget-object v2, p0, Laor;->a:Laos;

    iget-object v3, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Laos;->a(Ljava/util/List;)V

    .line 367
    :cond_0
    iget v2, p0, Laor;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Laor;->b:Z

    .line 372
    :cond_1
    iget-boolean v0, p0, Laor;->b:Z

    return v0
.end method

.method public c(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 337
    :goto_0
    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Laor;->a:Ljava/util/Vector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Laor;->c:I

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Laor;->a:Laot;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Laor;->a:Laot;

    iget-object v1, p0, Laor;->a:Ljava/util/List;

    iget v2, p0, Laor;->a:I

    iget v3, p0, Laor;->b:I

    invoke-interface {v0, v1, v2, v3}, Laot;->a(Ljava/util/List;II)V

    .line 395
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 377
    iget v1, p0, Laor;->b:I

    if-gtz v1, :cond_0

    .line 387
    :goto_0
    return v0

    .line 379
    :cond_0
    iget v1, p0, Laor;->b:I

    .line 380
    iget-object v2, p0, Laor;->a:Laot;

    if-eqz v2, :cond_1

    .line 381
    iget v2, p0, Laor;->b:I

    iget-object v3, p0, Laor;->a:Laot;

    iget-object v4, p0, Laor;->a:Ljava/util/List;

    iget v5, p0, Laor;->a:I

    invoke-interface {v3, v4, v5}, Laot;->b(Ljava/util/List;I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Laor;->b:I

    .line 382
    iget-object v2, p0, Laor;->a:Laos;

    if-eqz v2, :cond_1

    iget-object v2, p0, Laor;->a:Laos;

    iget-object v3, p0, Laor;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Laos;->a(Ljava/util/List;)V

    .line 384
    :cond_1
    iget v2, p0, Laor;->b:I

    if-eq v1, v2, :cond_2

    .line 385
    iput-boolean v0, p0, Laor;->b:Z

    .line 387
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 341
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
