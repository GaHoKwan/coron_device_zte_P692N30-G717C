.class public final Ltmsdkobf/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/dd$a;
    }
.end annotation


# instance fields
.field private jJ:Ljava/nio/ByteBuffer;

.field protected jK:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    const-string v0, "GBK"

    iput-object v0, p0, Ltmsdkobf/dd;->jK:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bs"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    const-string v0, "GBK"

    iput-object v0, p0, Ltmsdkobf/dd;->jK:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .parameter "bs"
    .parameter "pos"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    const-string v0, "GBK"

    iput-object v0, p0, Ltmsdkobf/dd;->jK:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    .line 55
    iget-object v0, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method private L()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 131
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 132
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    invoke-direct {p0, v1}, Ltmsdkobf/dd;->a(B)V

    .line 133
    return-void
.end method

.method public static a(Ltmsdkobf/dd$a;Ljava/nio/ByteBuffer;)I
    .locals 3
    .parameter "hd"
    .parameter "bb"

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 79
    .local v0, b:B
    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Ltmsdkobf/dd$a;->jL:B

    .line 80
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    iput v1, p0, Ltmsdkobf/dd$a;->tag:I

    .line 81
    iget v1, p0, Ltmsdkobf/dd$a;->tag:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Ltmsdkobf/dd$a;->tag:I

    .line 83
    const/4 v1, 0x2

    .line 85
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .locals 12
    .parameter
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p2, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 500
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 531
    :cond_1
    return-object p1

    .line 505
    .restart local p1       #mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 506
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 507
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 508
    .local v5, mk:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 510
    .local v6, mv:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p3}, Ltmsdkobf/dd;->at(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 511
    new-instance v1, Ltmsdkobf/dd$a;

    invoke-direct {v1}, Ltmsdkobf/dd$a;-><init>()V

    .line 512
    .local v1, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v1}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 513
    iget-byte v9, v1, Ltmsdkobf/dd$a;->jL:B

    packed-switch v9, :pswitch_data_0

    .line 526
    new-instance v9, Ltmsdkobf/da;

    const-string v10, "type mismatch."

    invoke-direct {v9, v10}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v9

    .line 515
    :pswitch_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v7

    .line 516
    .local v7, size:I
    if-gez v7, :cond_3

    .line 517
    new-instance v9, Ltmsdkobf/da;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size invalid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v9

    .line 518
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 519
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v5, v9, v10}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 520
    .local v4, k:Ljava/lang/Object;,"TK;"
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0, v6, v9, v10}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v8

    .line 521
    .local v8, v:Ljava/lang/Object;,"TV;"
    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v1           #hd:Ltmsdkobf/dd$a;
    .end local v2           #i:I
    .end local v4           #k:Ljava/lang/Object;,"TK;"
    .end local v7           #size:I
    .end local v8           #v:Ljava/lang/Object;,"TV;"
    :cond_4
    if-eqz p4, :cond_1

    .line 529
    new-instance v9, Ltmsdkobf/da;

    const-string v10, "require field not exist."

    invoke-direct {v9, v10}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v9

    .line 513
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private a(B)V
    .locals 8
    .parameter "type"

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 195
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "invalid type."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    :pswitch_0
    invoke-direct {p0, v6}, Ltmsdkobf/dd;->skip(I)V

    .line 197
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 141
    :pswitch_2
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Ltmsdkobf/dd;->skip(I)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-direct {p0, v4}, Ltmsdkobf/dd;->skip(I)V

    goto :goto_0

    .line 147
    :pswitch_4
    invoke-direct {p0, v7}, Ltmsdkobf/dd;->skip(I)V

    goto :goto_0

    .line 150
    :pswitch_5
    invoke-direct {p0, v4}, Ltmsdkobf/dd;->skip(I)V

    goto :goto_0

    .line 153
    :pswitch_6
    invoke-direct {p0, v7}, Ltmsdkobf/dd;->skip(I)V

    goto :goto_0

    .line 156
    :pswitch_7
    iget-object v4, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 157
    .local v2, len:I
    if-gez v2, :cond_1

    .line 158
    add-int/lit16 v2, v2, 0x100

    .line 159
    :cond_1
    invoke-direct {p0, v2}, Ltmsdkobf/dd;->skip(I)V

    goto :goto_0

    .line 163
    .end local v2           #len:I
    :pswitch_8
    iget-object v4, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {p0, v4}, Ltmsdkobf/dd;->skip(I)V

    goto :goto_0

    .line 167
    :pswitch_9
    invoke-virtual {p0, v5, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 168
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    mul-int/lit8 v4, v3, 0x2

    if-ge v1, v4, :cond_0

    .line 169
    invoke-direct {p0}, Ltmsdkobf/dd;->L()V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v1           #i:I
    .end local v3           #size:I
    :pswitch_a
    invoke-virtual {p0, v5, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 174
    .restart local v3       #size:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 175
    invoke-direct {p0}, Ltmsdkobf/dd;->L()V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    .end local v1           #i:I
    .end local v3           #size:I
    :pswitch_b
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 180
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 181
    iget-byte v4, v0, Ltmsdkobf/dd$a;->jL:B

    if-eqz v4, :cond_2

    .line 182
    new-instance v4, Ltmsdkobf/da;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipField with invalid type, type value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v0, Ltmsdkobf/dd$a;->jL:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_2
    invoke-virtual {p0, v5, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 185
    .restart local v3       #size:I
    invoke-direct {p0, v3}, Ltmsdkobf/dd;->skip(I)V

    goto/16 :goto_0

    .line 189
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v3           #size:I
    :pswitch_c
    invoke-virtual {p0}, Ltmsdkobf/dd;->K()V

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .local p1, mt:Ljava/lang/Object;,"TT;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 823
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 824
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 825
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 826
    iget-byte v5, v0, Ltmsdkobf/dd$a;->jL:B

    packed-switch v5, :pswitch_data_0

    .line 839
    new-instance v5, Ltmsdkobf/da;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 828
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 829
    .local v3, size:I
    if-gez v3, :cond_0

    .line 830
    new-instance v5, Ltmsdkobf/da;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 831
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    .line 832
    .local v2, lr:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 833
    invoke-virtual {p0, p1, v6, v7}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 834
    .local v4, t:Ljava/lang/Object;,"TT;"
    aput-object v4, v2, v1

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #i:I
    .end local v2           #lr:[Ljava/lang/Object;,"[TT;"
    .end local v3           #size:I
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :cond_1
    if-eqz p3, :cond_2

    .line 842
    new-instance v5, Ltmsdkobf/da;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 844
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ltmsdkobf/dd$a;)I
    .locals 1
    .parameter "hd"

    .prologue
    .line 94
    iget-object v0, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private skip(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 99
    iget-object v0, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    return-void
.end method


# virtual methods
.method public K()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 123
    .local v0, hd:Ltmsdkobf/dd$a;
    :cond_0
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 124
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    invoke-direct {p0, v1}, Ltmsdkobf/dd;->a(B)V

    .line 125
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 126
    return-void
.end method

.method public a(BIZ)B
    .locals 3
    .parameter "c"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 205
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 207
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 208
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    sparse-switch v1, :sswitch_data_0

    .line 216
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :sswitch_0
    const/4 p1, 0x0

    .line 221
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_0
    :goto_0
    return p1

    .line 213
    .restart local v0       #hd:Ltmsdkobf/dd$a;
    :sswitch_1
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 214
    goto :goto_0

    .line 218
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_1
    if-eqz p3, :cond_0

    .line 219
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(DIZ)D
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 323
    invoke-virtual {p0, p3}, Ltmsdkobf/dd;->at(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 325
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 326
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    sparse-switch v1, :sswitch_data_0

    .line 337
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :sswitch_0
    const-wide/16 p1, 0x0

    .line 342
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_0
    :goto_0
    return-wide p1

    .line 331
    .restart local v0       #hd:Ltmsdkobf/dd$a;
    :sswitch_1
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    float-to-double p1, v1

    .line 332
    goto :goto_0

    .line 334
    :sswitch_2
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    .line 335
    goto :goto_0

    .line 339
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_1
    if-eqz p4, :cond_0

    .line 340
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(FIZ)F
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 303
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 305
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 306
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    sparse-switch v1, :sswitch_data_0

    .line 314
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :sswitch_0
    const/4 p1, 0x0

    .line 319
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_0
    :goto_0
    return p1

    .line 311
    .restart local v0       #hd:Ltmsdkobf/dd$a;
    :sswitch_1
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    .line 312
    goto :goto_0

    .line 316
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_1
    if-eqz p3, :cond_0

    .line 317
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(IIZ)I
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 248
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 250
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 251
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    sparse-switch v1, :sswitch_data_0

    .line 265
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :sswitch_0
    const/4 p1, 0x0

    .line 270
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_0
    :goto_0
    return p1

    .line 256
    .restart local v0       #hd:Ltmsdkobf/dd$a;
    :sswitch_1
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 257
    goto :goto_0

    .line 259
    :sswitch_2
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 260
    goto :goto_0

    .line 262
    :sswitch_3
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 263
    goto :goto_0

    .line 267
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_1
    if-eqz p3, :cond_0

    .line 268
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(JIZ)J
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 274
    invoke-virtual {p0, p3}, Ltmsdkobf/dd;->at(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 276
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 277
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    sparse-switch v1, :sswitch_data_0

    .line 294
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :sswitch_0
    const-wide/16 p1, 0x0

    .line 299
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_0
    :goto_0
    return-wide p1

    .line 282
    .restart local v0       #hd:Ltmsdkobf/dd$a;
    :sswitch_1
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-long p1, v1

    .line 283
    goto :goto_0

    .line 285
    :sswitch_2
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    int-to-long p1, v1

    .line 286
    goto :goto_0

    .line 288
    :sswitch_3
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long p1, v1

    .line 289
    goto :goto_0

    .line 291
    :sswitch_4
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    .line 292
    goto :goto_0

    .line 296
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_1
    if-eqz p4, :cond_0

    .line 297
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(IZ)Ljava/lang/String;
    .locals 8
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 420
    const/4 v3, 0x0

    .line 421
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ltmsdkobf/dd;->at(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 422
    new-instance v1, Ltmsdkobf/dd$a;

    invoke-direct {v1}, Ltmsdkobf/dd$a;-><init>()V

    .line 423
    .local v1, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v1}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 424
    iget-byte v5, v1, Ltmsdkobf/dd$a;->jL:B

    packed-switch v5, :pswitch_data_0

    .line 454
    new-instance v5, Ltmsdkobf/da;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    :pswitch_0
    iget-object v5, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 427
    .local v2, len:I
    if-gez v2, :cond_0

    .line 428
    add-int/lit16 v2, v2, 0x100

    .line 429
    :cond_0
    new-array v4, v2, [B

    .line 430
    .local v4, ss:[B
    iget-object v5, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 432
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3           #s:Ljava/lang/String;
    iget-object v5, p0, Ltmsdkobf/dd;->jK:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1           #hd:Ltmsdkobf/dd$a;
    .end local v2           #len:I
    .end local v4           #ss:[B
    .restart local v3       #s:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 434
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #hd:Ltmsdkobf/dd$a;
    .restart local v2       #len:I
    .restart local v4       #ss:[B
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 440
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v2           #len:I
    .end local v4           #ss:[B
    :pswitch_1
    iget-object v5, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 441
    .restart local v2       #len:I
    const/high16 v5, 0x640

    if-gt v2, v5, :cond_2

    if-gez v2, :cond_3

    .line 442
    :cond_2
    new-instance v5, Ltmsdkobf/da;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 443
    :cond_3
    new-array v4, v2, [B

    .line 444
    .restart local v4       #ss:[B
    iget-object v5, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 446
    :try_start_1
    new-instance v3, Ljava/lang/String;

    .end local v3           #s:Ljava/lang/String;
    iget-object v5, p0, Ltmsdkobf/dd;->jK:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 448
    .end local v3           #s:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 449
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 456
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #hd:Ltmsdkobf/dd$a;
    .end local v2           #len:I
    .end local v4           #ss:[B
    :cond_4
    if-eqz p2, :cond_1

    .line 457
    new-instance v5, Ltmsdkobf/da;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .locals 1
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Ltmsdkobf/dd;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/util/List;IZ)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;IZ)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 809
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 810
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 818
    :cond_1
    :goto_0
    return-object v1

    .line 813
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Ltmsdkobf/dd;->a(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v2

    .line 814
    .local v2, tt:[Ljava/lang/Object;,"[TT;"
    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 815
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v1, ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 817
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;
    .locals 5
    .parameter "o"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 924
    const/4 v2, 0x0

    .line 925
    .local v2, ref:Ltmsdkobf/df;
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 927
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ref:Ltmsdkobf/df;
    check-cast v2, Ltmsdkobf/df;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .restart local v2       #ref:Ltmsdkobf/df;
    new-instance v1, Ltmsdkobf/dd$a;

    invoke-direct {v1}, Ltmsdkobf/dd$a;-><init>()V

    .line 933
    .local v1, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v1}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 934
    iget-byte v3, v1, Ltmsdkobf/dd$a;->jL:B

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 935
    new-instance v3, Ltmsdkobf/da;

    const-string v4, "type mismatch."

    invoke-direct {v3, v4}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v3

    .line 928
    .end local v1           #hd:Ltmsdkobf/dd$a;
    .end local v2           #ref:Ltmsdkobf/df;
    :catch_0
    move-exception v0

    .line 929
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ltmsdkobf/da;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v3

    .line 936
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #hd:Ltmsdkobf/dd$a;
    .restart local v2       #ref:Ltmsdkobf/df;
    :cond_0
    invoke-virtual {v2, p0}, Ltmsdkobf/df;->readFrom(Ltmsdkobf/dd;)V

    .line 937
    invoke-virtual {p0}, Ltmsdkobf/dd;->K()V

    .line 941
    .end local v1           #hd:Ltmsdkobf/dd$a;
    :cond_1
    return-object v2

    .line 938
    :cond_2
    if-eqz p3, :cond_1

    .line 939
    new-instance v3, Ltmsdkobf/da;

    const-string v4, "require field not exist."

    invoke-direct {v3, v4}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public a(SIZ)S
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 225
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 227
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 228
    iget-byte v1, v0, Ltmsdkobf/dd$a;->jL:B

    sparse-switch v1, :sswitch_data_0

    .line 239
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :sswitch_0
    const/4 p1, 0x0

    .line 244
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_0
    :goto_0
    return p1

    .line 233
    .restart local v0       #hd:Ltmsdkobf/dd$a;
    :sswitch_1
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-short p1, v1

    .line 234
    goto :goto_0

    .line 236
    :sswitch_2
    iget-object v1, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 237
    goto :goto_0

    .line 241
    .end local v0           #hd:Ltmsdkobf/dd$a;
    :cond_1
    if-eqz p3, :cond_0

    .line 242
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ltmsdkobf/dd$a;)V
    .locals 1
    .parameter "hd"

    .prologue
    .line 89
    iget-object v0, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;Ljava/nio/ByteBuffer;)I

    .line 90
    return-void
.end method

.method public a(ZIZ)Z
    .locals 2
    .parameter "b"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v0

    .line 201
    .local v0, c:B
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public a([BIZ)[B
    .locals 8
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 644
    const/4 v3, 0x0

    .line 645
    .local v3, lr:[B
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 646
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 647
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 648
    iget-byte v5, v0, Ltmsdkobf/dd$a;->jL:B

    sparse-switch v5, :sswitch_data_0

    .line 672
    new-instance v5, Ltmsdkobf/da;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 650
    :sswitch_0
    new-instance v1, Ltmsdkobf/dd$a;

    invoke-direct {v1}, Ltmsdkobf/dd$a;-><init>()V

    .line 651
    .local v1, hh:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v1}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 652
    iget-byte v5, v1, Ltmsdkobf/dd$a;->jL:B

    if-eqz v5, :cond_0

    .line 653
    new-instance v5, Ltmsdkobf/da;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type mismatch, tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v0, Ltmsdkobf/dd$a;->jL:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v1, Ltmsdkobf/dd$a;->jL:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 655
    :cond_0
    invoke-virtual {p0, v6, v6, v7}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    .line 656
    .local v4, size:I
    if-gez v4, :cond_1

    .line 657
    new-instance v5, Ltmsdkobf/da;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid size, tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v0, Ltmsdkobf/dd$a;->jL:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v1, Ltmsdkobf/dd$a;->jL:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 658
    :cond_1
    new-array v3, v4, [B

    .line 659
    iget-object v5, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 677
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #hh:Ltmsdkobf/dd$a;
    .end local v4           #size:I
    :cond_2
    return-object v3

    .line 663
    .restart local v0       #hd:Ltmsdkobf/dd$a;
    :sswitch_1
    invoke-virtual {p0, v6, v6, v7}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    .line 664
    .restart local v4       #size:I
    if-gez v4, :cond_3

    .line 665
    new-instance v5, Ltmsdkobf/da;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 666
    :cond_3
    new-array v3, v4, [B

    .line 667
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 668
    aget-byte v5, v3, v6

    invoke-virtual {p0, v5, v6, v7}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v5

    aput-byte v5, v3, v2

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_4
    if-eqz p3, :cond_2

    .line 675
    new-instance v5, Ltmsdkobf/da;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v5

    .line 648
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public a([DIZ)[D
    .locals 8
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 777
    const/4 v2, 0x0

    .line 778
    .local v2, lr:[D
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 779
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 780
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 781
    iget-byte v4, v0, Ltmsdkobf/dd$a;->jL:B

    packed-switch v4, :pswitch_data_0

    .line 792
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 783
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 784
    .local v3, size:I
    if-gez v3, :cond_0

    .line 785
    new-instance v4, Ltmsdkobf/da;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 786
    :cond_0
    new-array v2, v3, [D

    .line 787
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 788
    aget-wide v4, v2, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Ltmsdkobf/dd;->a(DIZ)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 795
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 797
    :cond_2
    return-object v2

    .line 781
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([FIZ)[F
    .locals 7
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 753
    const/4 v2, 0x0

    .line 754
    .local v2, lr:[F
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 755
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 756
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 757
    iget-byte v4, v0, Ltmsdkobf/dd$a;->jL:B

    packed-switch v4, :pswitch_data_0

    .line 768
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 759
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 760
    .local v3, size:I
    if-gez v3, :cond_0

    .line 761
    new-instance v4, Ltmsdkobf/da;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 762
    :cond_0
    new-array v2, v3, [F

    .line 763
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 764
    aget v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v4

    aput v4, v2, v1

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 771
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 773
    :cond_2
    return-object v2

    .line 757
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([IIZ)[I
    .locals 7
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 705
    const/4 v2, 0x0

    .line 706
    .local v2, lr:[I
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 707
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 708
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 709
    iget-byte v4, v0, Ltmsdkobf/dd$a;->jL:B

    packed-switch v4, :pswitch_data_0

    .line 720
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 711
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 712
    .local v3, size:I
    if-gez v3, :cond_0

    .line 713
    new-instance v4, Ltmsdkobf/da;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 714
    :cond_0
    new-array v2, v3, [I

    .line 715
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 716
    aget v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v4

    aput v4, v2, v1

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 723
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 725
    :cond_2
    return-object v2

    .line 709
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([JIZ)[J
    .locals 8
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 729
    const/4 v2, 0x0

    .line 730
    .local v2, lr:[J
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 731
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 732
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 733
    iget-byte v4, v0, Ltmsdkobf/dd$a;->jL:B

    packed-switch v4, :pswitch_data_0

    .line 744
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 735
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 736
    .local v3, size:I
    if-gez v3, :cond_0

    .line 737
    new-instance v4, Ltmsdkobf/da;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 738
    :cond_0
    new-array v2, v3, [J

    .line 739
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 740
    aget-wide v4, v2, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 747
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 749
    :cond_2
    return-object v2

    .line 733
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, l:[Ljava/lang/Object;,"[TT;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 803
    :cond_0
    new-instance v0, Ltmsdkobf/da;

    const-string v1, "unable to get type of key and value."

    invoke-direct {v0, v1}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2, p3}, Ltmsdkobf/dd;->a(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a([SIZ)[S
    .locals 7
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 681
    const/4 v2, 0x0

    .line 682
    .local v2, lr:[S
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 683
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 684
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 685
    iget-byte v4, v0, Ltmsdkobf/dd$a;->jL:B

    packed-switch v4, :pswitch_data_0

    .line 696
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 687
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 688
    .local v3, size:I
    if-gez v3, :cond_0

    .line 689
    new-instance v4, Ltmsdkobf/da;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 690
    :cond_0
    new-array v2, v3, [S

    .line 691
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 692
    aget-short v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Ltmsdkobf/dd;->a(SIZ)S

    move-result v4

    aput-short v4, v2, v1

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 699
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 701
    :cond_2
    return-object v2

    .line 685
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([ZIZ)[Z
    .locals 7
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 620
    const/4 v2, 0x0

    .line 621
    .local v2, lr:[Z
    invoke-virtual {p0, p2}, Ltmsdkobf/dd;->at(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 622
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 623
    .local v0, hd:Ltmsdkobf/dd$a;
    invoke-virtual {p0, v0}, Ltmsdkobf/dd;->a(Ltmsdkobf/dd$a;)V

    .line 624
    iget-byte v4, v0, Ltmsdkobf/dd$a;->jL:B

    packed-switch v4, :pswitch_data_0

    .line 635
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 626
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v3

    .line 627
    .local v3, size:I
    if-gez v3, :cond_0

    .line 628
    new-instance v4, Ltmsdkobf/da;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 629
    :cond_0
    new-array v2, v3, [Z

    .line 630
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 631
    aget-boolean v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v4

    aput-boolean v4, v2, v1

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 638
    new-instance v4, Ltmsdkobf/da;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v4

    .line 640
    :cond_2
    return-object v2

    .line 624
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public ar(Ljava/lang/String;)I
    .locals 1
    .parameter "se"

    .prologue
    .line 998
    iput-object p1, p0, Ltmsdkobf/dd;->jK:Ljava/lang/String;

    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method public at(I)Z
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 105
    :try_start_0
    new-instance v0, Ltmsdkobf/dd$a;

    invoke-direct {v0}, Ltmsdkobf/dd$a;-><init>()V

    .line 107
    .local v0, hd:Ltmsdkobf/dd$a;
    :goto_0
    invoke-direct {p0, v0}, Ltmsdkobf/dd;->b(Ltmsdkobf/dd$a;)I

    move-result v1

    .line 108
    .local v1, len:I
    iget v3, v0, Ltmsdkobf/dd$a;->tag:I

    if-le p1, v3, :cond_0

    iget-byte v3, v0, Ltmsdkobf/dd$a;->jL:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 109
    :cond_0
    iget v3, v0, Ltmsdkobf/dd$a;->tag:I

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 116
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #len:I
    :cond_1
    :goto_1
    return v2

    .line 110
    .restart local v0       #hd:Ltmsdkobf/dd$a;
    .restart local v1       #len:I
    :cond_2
    invoke-direct {p0, v1}, Ltmsdkobf/dd;->skip(I)V

    .line 111
    iget-byte v3, v0, Ltmsdkobf/dd$a;->jL:B

    invoke-direct {p0, v3}, Ltmsdkobf/dd;->a(B)V
    :try_end_0
    .catch Ltmsdkobf/da; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 113
    .end local v0           #hd:Ltmsdkobf/dd$a;
    .end local v1           #len:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 114
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public b(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, o:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 950
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    .line 951
    invoke-virtual {p0, v3, p2, p3}, Ltmsdkobf/dd;->a(BIZ)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 989
    .end local p1           #o:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v1

    .line 952
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 953
    invoke-virtual {p0, v3, p2, p3}, Ltmsdkobf/dd;->a(ZIZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 954
    :cond_1
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_2

    .line 955
    invoke-virtual {p0, v3, p2, p3}, Ltmsdkobf/dd;->a(SIZ)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 956
    :cond_2
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 957
    invoke-virtual {p0, v3, p2, p3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    .line 958
    .local v0, i:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 959
    .end local v0           #i:I
    :cond_3
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 960
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, p2, p3}, Ltmsdkobf/dd;->a(JIZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 961
    :cond_4
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 962
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a(FIZ)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 963
    :cond_5
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_6

    .line 964
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, p2, p3}, Ltmsdkobf/dd;->a(DIZ)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 965
    :cond_6
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 966
    invoke-virtual {p0, p2, p3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 967
    :cond_7
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_8

    .line 968
    check-cast p1, Ljava/util/Map;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Ltmsdkobf/dd;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0

    .line 969
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_8
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_9

    .line 970
    check-cast p1, Ljava/util/List;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Ltmsdkobf/dd;->a(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 971
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_9
    instance-of v2, p1, Ltmsdkobf/df;

    if-eqz v2, :cond_a

    .line 972
    check-cast p1, Ltmsdkobf/df;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v1

    goto :goto_0

    .line 973
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 974
    instance-of v2, p1, [B

    if-nez v2, :cond_b

    instance-of v2, p1, [Ljava/lang/Byte;

    if-eqz v2, :cond_c

    .line 975
    :cond_b
    check-cast v1, [B

    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a([BIZ)[B

    move-result-object v1

    goto/16 :goto_0

    .line 976
    :cond_c
    instance-of v2, p1, [Z

    if-eqz v2, :cond_d

    .line 977
    check-cast v1, [Z

    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a([ZIZ)[Z

    move-result-object v1

    goto/16 :goto_0

    .line 978
    :cond_d
    instance-of v2, p1, [S

    if-eqz v2, :cond_e

    .line 979
    check-cast v1, [S

    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a([SIZ)[S

    move-result-object v1

    goto/16 :goto_0

    .line 980
    :cond_e
    instance-of v2, p1, [I

    if-eqz v2, :cond_f

    .line 981
    check-cast v1, [I

    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a([IIZ)[I

    move-result-object v1

    goto/16 :goto_0

    .line 982
    :cond_f
    instance-of v2, p1, [J

    if-eqz v2, :cond_10

    .line 983
    check-cast v1, [J

    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a([JIZ)[J

    move-result-object v1

    goto/16 :goto_0

    .line 984
    :cond_10
    instance-of v2, p1, [F

    if-eqz v2, :cond_11

    .line 985
    check-cast v1, [F

    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a([FIZ)[F

    move-result-object v1

    goto/16 :goto_0

    .line 986
    :cond_11
    instance-of v2, p1, [D

    if-eqz v2, :cond_12

    .line 987
    check-cast v1, [D

    invoke-virtual {p0, v1, p2, p3}, Ltmsdkobf/dd;->a([DIZ)[D

    move-result-object v1

    goto/16 :goto_0

    .line 989
    :cond_12
    check-cast p1, [Ljava/lang/Object;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Ltmsdkobf/dd;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 992
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_13
    new-instance v1, Ltmsdkobf/da;

    const-string v2, "read object error: unsupport type."

    invoke-direct {v1, v2}, Ltmsdkobf/da;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d([B)V
    .locals 1
    .parameter "bs"

    .prologue
    .line 67
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/dd;->jJ:Ljava/nio/ByteBuffer;

    .line 68
    return-void
.end method
