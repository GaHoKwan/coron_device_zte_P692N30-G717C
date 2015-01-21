.class public Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastMmsCursorParser.java"


# instance fields
.field private mMapAddressToContact:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/apst/util/entity/message/TargetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

.field private mQueryContact:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;ZLcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V
    .locals 1
    .parameter "c"
    .parameter "consumer"
    .parameter "buffer"
    .parameter "queryContact"
    .parameter "messageProxy"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 86
    iput-boolean p4, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mQueryContact:Z

    .line 87
    iput-object p5, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 88
    iget-boolean v0, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mQueryContact:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    .line 91
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;ZLcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V
    .locals 1
    .parameter "c"
    .parameter "consumer"
    .parameter "queryContact"
    .parameter "messageProxy"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 102
    iput-boolean p3, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mQueryContact:Z

    .line 103
    iput-object p4, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 104
    iget-boolean v0, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mQueryContact:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 11
    .parameter "c"
    .parameter "buffer"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    if-nez p1, :cond_1

    .line 112
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const-string v6, "Cursor is null."

    invoke-static {v7, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return v5

    .line 114
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 115
    :cond_2
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const-string v6, "Cursor has moved to the end."

    invoke-static {v7, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    if-nez p2, :cond_4

    .line 119
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const-string v6, "Buffer is null."

    invoke-static {v7, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    invoke-static {p1}, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->cursorToMms(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/Mms;

    move-result-object v2

    .line 124
    .local v2, mms:Lcom/mediatek/apst/util/entity/message/Mms;
    if-eqz v2, :cond_0

    .line 129
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v8, v2}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMmsAddress(Lcom/mediatek/apst/util/entity/message/Mms;)Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V

    .line 192
    iget-boolean v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mQueryContact:Z

    if-eqz v8, :cond_6

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 195
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_5
    invoke-static {v0}, Lcom/mediatek/apst/target/util/StringUtils;->dropServiceCenter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, number:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 202
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    .line 209
    .local v4, target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    :goto_1
    if-eqz v4, :cond_6

    .line 210
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getContactId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setContactId(J)V

    .line 211
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setName(Ljava/lang/String;)V

    .line 216
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    :cond_6
    invoke-virtual {p2}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 219
    const/16 v8, 0x51a

    :try_start_0
    invoke-virtual {v2, p2, v8}, Lcom/mediatek/apst/util/entity/message/Mms;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v6

    .line 232
    goto/16 :goto_0

    .line 205
    .restart local v0       #address:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v8, v3}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->lookupContact(Ljava/lang/String;)Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v4

    .line 207
    .restart local v4       #target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/lang/NullPointerException;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const/4 v6, 0x0

    invoke-static {v7, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 224
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 229
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v5, v7

    .line 230
    goto/16 :goto_0
.end method
