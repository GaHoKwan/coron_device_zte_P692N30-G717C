.class public final Li;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll;


# instance fields
.field private a:Ljava/util/Hashtable;

.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lc;)Ln;
    .locals 4
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 154
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 155
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    .line 157
    :try_start_0
    iget-object v3, p0, Li;->a:Ljava/util/Hashtable;

    invoke-interface {v0, p1, v3}, Ll;->a(Lc;Ljava/util/Hashtable;)Ln;
    :try_end_0
    .catch Lm; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(Lc;)Ln;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li;->a(Ljava/util/Hashtable;)V

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Li;->b(Lc;)Ln;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc;Ljava/util/Hashtable;)Ln;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0, p2}, Li;->a(Ljava/util/Hashtable;)V

    .line 64
    invoke-direct {p0, p1}, Li;->b(Lc;)Ln;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 146
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 147
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    .line 148
    invoke-interface {v0}, Ll;->a()V

    .line 146
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Hashtable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    iput-object p1, p0, Li;->a:Ljava/util/Hashtable;

    .line 93
    if-eqz p1, :cond_9

    sget-object v0, Le;->d:Le;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v3, v2

    .line 94
    :goto_0
    if-nez p1, :cond_a

    const/4 v0, 0x0

    .line 95
    :goto_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Li;->a:Ljava/util/Vector;

    .line 96
    if-eqz v0, :cond_6

    .line 97
    sget-object v4, La;->d:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->c:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->f:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->e:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->i:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->j:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->h:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->l:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->m:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, La;->o:La;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    .line 110
    :cond_1
    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 111
    iget-object v2, p0, Li;->a:Ljava/util/Vector;

    new-instance v4, Lcy;

    invoke-direct {v4, p1}, Lcy;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 113
    :cond_2
    sget-object v2, La;->a:La;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Li;->a:Ljava/util/Vector;

    new-instance v4, Len;

    invoke-direct {v4}, Len;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    :cond_3
    sget-object v2, La;->b:La;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    iget-object v2, p0, Li;->a:Ljava/util/Vector;

    new-instance v4, Lby;

    invoke-direct {v4}, Lby;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 119
    :cond_4
    sget-object v2, La;->n:La;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    new-instance v2, Lei;

    invoke-direct {v2}, Lei;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 123
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 124
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    new-instance v1, Lcy;

    invoke-direct {v1, p1}, Lcy;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    :cond_6
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 128
    if-nez v3, :cond_7

    .line 129
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    new-instance v1, Lcy;

    invoke-direct {v1, p1}, Lcy;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    :cond_7
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    new-instance v1, Len;

    invoke-direct {v1}, Len;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    new-instance v1, Lby;

    invoke-direct {v1}, Lby;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    if-eqz v3, :cond_8

    .line 139
    iget-object v0, p0, Li;->a:Ljava/util/Vector;

    new-instance v1, Lcy;

    invoke-direct {v1, p1}, Lcy;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    :cond_8
    return-void

    :cond_9
    move v3, v1

    .line 93
    goto/16 :goto_0

    .line 94
    :cond_a
    sget-object v0, Le;->c:Le;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    goto/16 :goto_1
.end method
