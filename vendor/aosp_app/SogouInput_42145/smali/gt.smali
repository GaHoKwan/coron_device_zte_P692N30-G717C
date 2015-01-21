.class public Lgt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lgt;


# instance fields
.field public a:I

.field public a:J

.field public a:Ljava/lang/String;

.field public b:I

.field public b:J

.field public b:Ljava/lang/String;

.field public c:I

.field public c:J

.field public d:I

.field public d:J

.field public e:I

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v1, p0, Lgt;->a:J

    .line 36
    iput v3, p0, Lgt;->a:I

    .line 38
    iput v3, p0, Lgt;->b:I

    .line 40
    iput v3, p0, Lgt;->c:I

    .line 49
    iput-wide v1, p0, Lgt;->b:J

    .line 54
    const/4 v0, -0x2

    iput v0, p0, Lgt;->d:I

    .line 61
    iput v3, p0, Lgt;->e:I

    .line 63
    iput-wide v1, p0, Lgt;->c:J

    .line 64
    iput-wide v1, p0, Lgt;->d:J

    .line 66
    iput-wide v1, p0, Lgt;->e:J

    .line 67
    iput-wide v1, p0, Lgt;->f:J

    return-void
.end method

.method public static a()Lgt;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lgt;->a:Lgt;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lgt;

    invoke-direct {v0}, Lgt;-><init>()V

    sput-object v0, Lgt;->a:Lgt;

    .line 75
    :cond_0
    sget-object v0, Lgt;->a:Lgt;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 79
    iput-object v0, p0, Lgt;->a:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lgt;->b:Ljava/lang/String;

    .line 81
    iput-wide v1, p0, Lgt;->a:J

    .line 82
    iput v3, p0, Lgt;->a:I

    .line 83
    iput-wide v1, p0, Lgt;->b:J

    .line 84
    const/4 v0, -0x2

    iput v0, p0, Lgt;->d:I

    .line 85
    iput v3, p0, Lgt;->e:I

    .line 87
    iput-wide v1, p0, Lgt;->c:J

    .line 88
    iput-wide v1, p0, Lgt;->d:J

    .line 89
    iput-wide v1, p0, Lgt;->e:J

    .line 90
    iput-wide v1, p0, Lgt;->f:J

    .line 92
    iput v3, p0, Lgt;->b:I

    .line 93
    iput v3, p0, Lgt;->c:I

    .line 94
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 13
    .parameter

    .prologue
    const/16 v0, 0x15

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 97
    if-eqz p1, :cond_0

    iget-object v2, p0, Lgt;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgt;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lgt;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 98
    :cond_0
    invoke-virtual {p0}, Lgt;->a()V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    iget-object v6, p0, Lgt;->a:Ljava/lang/String;

    .line 104
    iget-object v7, p0, Lgt;->b:Ljava/lang/String;

    .line 105
    iget-wide v2, p0, Lgt;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-wide v2, v4

    .line 106
    :goto_1
    iget v8, p0, Lgt;->b:I

    iget v9, p0, Lgt;->c:I

    or-int/2addr v8, v9

    .line 107
    iget v9, p0, Lgt;->d:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_4

    iget-wide v9, p0, Lgt;->f:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_4

    .line 108
    :goto_2
    iget v9, p0, Lgt;->d:I

    .line 109
    iget v10, p0, Lgt;->e:I

    .line 111
    invoke-virtual {p0}, Lgt;->a()V

    .line 126
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    const-string v12, "imei_no="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v12, "&start_time="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "&pre_interval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&click="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&suf_interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&chosen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&net_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v3}, Lafp;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-static {p1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 138
    new-instance v4, Lamn;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p1, v2}, Lamn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 141
    invoke-virtual {v4, v0}, Lamn;->c(Lsg;)V

    .line 142
    invoke-static {p1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(Lsg;)I

    goto/16 :goto_0

    .line 105
    :cond_3
    iget-wide v2, p0, Lgt;->d:J

    iget-wide v8, p0, Lgt;->c:J

    sub-long/2addr v2, v8

    goto/16 :goto_1

    .line 107
    :cond_4
    iget-wide v4, p0, Lgt;->f:J

    iget-wide v9, p0, Lgt;->e:J

    sub-long/2addr v4, v9

    goto/16 :goto_2
.end method
