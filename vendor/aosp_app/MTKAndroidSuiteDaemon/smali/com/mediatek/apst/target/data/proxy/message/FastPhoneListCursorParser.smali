.class public Lcom/mediatek/apst/target/data/proxy/message/FastPhoneListCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastPhoneListCursorParser.java"


# instance fields
.field private mMapIdToName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/util/HashMap;)V
    .locals 0
    .parameter "c"
    .parameter "consumer"
    .parameter "buffer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, mapIdToName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 65
    iput-object p4, p0, Lcom/mediatek/apst/target/data/proxy/message/FastPhoneListCursorParser;->mMapIdToName:Ljava/util/HashMap;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/util/HashMap;)V
    .locals 0
    .parameter "c"
    .parameter "consumer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, mapIdToName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 76
    iput-object p3, p0, Lcom/mediatek/apst/target/data/proxy/message/FastPhoneListCursorParser;->mMapIdToName:Ljava/util/HashMap;

    .line 77
    return-void
.end method


# virtual methods
.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 12
    .parameter "c"
    .parameter "buffer"

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object p2, v8, v7

    const-string v7, "Cursor is null."

    invoke-static {v8, v7}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :goto_0
    return v6

    .line 84
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    if-eq v9, v11, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 85
    :cond_1
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object p2, v8, v7

    const-string v7, "Cursor has moved to the end."

    invoke-static {v8, v7}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    if-nez p2, :cond_3

    .line 89
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object p2, v8, v7

    const-string v7, "Buffer is null."

    invoke-static {v8, v7}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    const-wide/16 v4, -0x1

    .line 95
    .local v4, rawContactId:J
    const/4 v3, 0x0

    .line 96
    .local v3, number:Ljava/lang/String;
    const/4 v2, 0x0

    .line 97
    .local v2, name:Ljava/lang/String;
    const-string v9, "_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, columnId:I
    if-eq v0, v11, :cond_4

    .line 99
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 100
    iget-object v9, p0, Lcom/mediatek/apst/target/data/proxy/message/FastPhoneListCursorParser;->mMapIdToName:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 102
    .restart local v2       #name:Ljava/lang/String;
    :cond_4
    const-string v9, "data1"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 103
    if-eq v0, v11, :cond_5

    .line 104
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    :cond_5
    invoke-virtual {p2}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 111
    :try_start_0
    invoke-virtual {p2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 112
    invoke-static {p2, v3}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 113
    invoke-static {p2, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v7

    .line 126
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/NullPointerException;
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object p2, v8, v7

    const/4 v7, 0x0

    invoke-static {v8, v7, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    .line 118
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 123
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v6, v8

    .line 124
    goto :goto_0
.end method
