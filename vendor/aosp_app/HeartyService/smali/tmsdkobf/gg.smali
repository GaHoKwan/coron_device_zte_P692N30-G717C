.class public final Ltmsdkobf/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gg$a;,
        Ltmsdkobf/gg$b;
    }
.end annotation


# static fields
.field private static nd:Ltmsdkobf/gg;


# instance fields
.field private jP:Ljava/lang/String;

.field private kn:J

.field private ne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/gg$a;",
            ">;"
        }
    .end annotation
.end field

.field private nf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/gg$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdkobf/gg;->kn:J

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gg;->ne:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    .line 10
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;)Z
    .locals 5
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 224
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    const-string v2, "location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 229
    const-string v2, "accuracy"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 230
    const-wide v3, 0x407f400000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 234
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scanWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v9, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 155
    if-nez p1, :cond_0

    move v5, v6

    .line 184
    :goto_0
    return v5

    .line 158
    :cond_0
    const/4 v3, 0x0

    .line 159
    .local v3, sameCount:I
    iget-object v5, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 171
    .end local v0           #i:I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 172
    .local v2, newSize:I
    if-lt v2, v9, :cond_6

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    if-lt v3, v5, :cond_6

    move v5, v7

    .line 173
    goto :goto_0

    .line 161
    .end local v2           #newSize:I
    .restart local v0       #i:I
    :cond_2
    iget-object v5, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdkobf/gg$b;

    iget-object v4, v5, Ltmsdkobf/gg$b;->jP:Ljava/lang/String;

    .line 162
    .local v4, tmpWifi:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 160
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 164
    add-int/lit8 v3, v3, 0x1

    .line 165
    goto :goto_3

    .line 162
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 174
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v4           #tmpWifi:Ljava/lang/String;
    .restart local v2       #newSize:I
    :cond_6
    if-ge v2, v9, :cond_7

    if-lt v3, v8, :cond_7

    move v5, v7

    .line 175
    goto :goto_0

    .line 178
    :cond_7
    iget-object v5, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v8, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v8, :cond_8

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 180
    iget-wide v10, p0, Ltmsdkobf/gg;->kn:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 181
    const-wide/16 v10, 0x7530

    cmp-long v5, v8, v10

    if-gtz v5, :cond_8

    move v5, v7

    .line 182
    goto :goto_0

    :cond_8
    move v5, v6

    .line 184
    goto :goto_0
.end method

.method public static bH()Ltmsdkobf/gg;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ltmsdkobf/gg;->nd:Ltmsdkobf/gg;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ltmsdkobf/gg;

    invoke-direct {v0}, Ltmsdkobf/gg;-><init>()V

    sput-object v0, Ltmsdkobf/gg;->nd:Ltmsdkobf/gg;

    .line 50
    :cond_0
    sget-object v0, Ltmsdkobf/gg;->nd:Ltmsdkobf/gg;

    return-object v0
.end method


# virtual methods
.method public final Q()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public final a(IIIILjava/util/List;)V
    .locals 6
    .parameter "mcc"
    .parameter "mnc"
    .parameter "lac"
    .parameter "cid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, scanWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v5, 0x0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Ltmsdkobf/gg;->kn:J

    .line 70
    const/4 v3, 0x0

    iput-object v3, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    .line 71
    iget-object v3, p0, Ltmsdkobf/gg;->ne:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 72
    new-instance v1, Ltmsdkobf/gg$a;

    invoke-direct {v1, v5}, Ltmsdkobf/gg$a;-><init>(B)V

    .line 73
    .local v1, newCell:Ltmsdkobf/gg$a;
    iput p1, v1, Ltmsdkobf/gg$a;->jO:I

    .line 74
    iput p2, v1, Ltmsdkobf/gg$a;->kb:I

    .line 75
    iput p3, v1, Ltmsdkobf/gg$a;->kg:I

    .line 76
    iput p4, v1, Ltmsdkobf/gg$a;->kh:I

    .line 77
    iget-object v3, p0, Ltmsdkobf/gg;->ne:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    if-eqz p5, :cond_0

    .line 80
    iget-object v3, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 88
    .end local v0           #i:I
    :cond_0
    return-void

    .line 82
    .restart local v0       #i:I
    :cond_1
    new-instance v2, Ltmsdkobf/gg$b;

    invoke-direct {v2, v5}, Ltmsdkobf/gg$b;-><init>(B)V

    .line 83
    .local v2, newWifi:Ltmsdkobf/gg$b;
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v3, v2, Ltmsdkobf/gg$b;->jP:Ljava/lang/String;

    .line 84
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    .line 85
    iget-object v3, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final aw(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 97
    iput-object p1, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public final b(IIIILjava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "mcc"
    .parameter "mnc"
    .parameter "lac"
    .parameter "cid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p5, scanWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 118
    iget-object v1, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 122
    :cond_1
    iget-object v1, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-nez p5, :cond_6

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_1
    iput-object v1, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Ltmsdkobf/gg;->ne:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, p0, Ltmsdkobf/gg;->ne:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 128
    iget-object v1, p0, Ltmsdkobf/gg;->ne:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/gg$a;

    .line 129
    .local v0, tmp:Ltmsdkobf/gg$a;
    iget v1, v0, Ltmsdkobf/gg$a;->jO:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Ltmsdkobf/gg$a;->kb:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Ltmsdkobf/gg$a;->kg:I

    if-ne v1, p3, :cond_0

    .line 130
    iget v1, v0, Ltmsdkobf/gg$a;->kh:I

    if-ne v1, p4, :cond_0

    .line 133
    iget-object v1, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltmsdkobf/gg;->nf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 134
    :cond_4
    if-eqz p5, :cond_5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 135
    :cond_5
    iget-object v2, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    goto :goto_0

    .line 122
    .end local v0           #tmp:Ltmsdkobf/gg$a;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Ltmsdkobf/gg;->kn:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    cmp-long v5, v3, v5

    if-lez v5, :cond_7

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v7, :cond_9

    :cond_7
    const-wide/32 v5, 0xafc8

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_9

    :cond_8
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ltmsdkobf/gg;->a(Ljava/lang/StringBuffer;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_9
    move-object v1, v2

    goto :goto_1

    .line 137
    .restart local v0       #tmp:Ltmsdkobf/gg$a;
    :cond_a
    invoke-direct {p0, p5}, Ltmsdkobf/gg;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 138
    iget-object v2, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    .end local v0           #tmp:Ltmsdkobf/gg$a;
    :cond_b
    invoke-direct {p0, p5}, Ltmsdkobf/gg;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v2, p0, Ltmsdkobf/gg;->jP:Ljava/lang/String;

    goto/16 :goto_0
.end method
