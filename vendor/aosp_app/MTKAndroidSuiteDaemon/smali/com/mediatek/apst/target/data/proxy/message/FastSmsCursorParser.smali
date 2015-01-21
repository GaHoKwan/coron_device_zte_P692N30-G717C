.class public Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastSmsCursorParser.java"


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
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 72
    iput-boolean p4, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mQueryContact:Z

    .line 73
    iput-object p5, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 74
    iget-boolean v0, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mQueryContact:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    .line 77
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
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 88
    iput-boolean p3, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mQueryContact:Z

    .line 89
    iput-object p4, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 90
    iget-boolean v0, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mQueryContact:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 12
    .parameter "c"
    .parameter "buffer"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    if-nez p1, :cond_1

    .line 98
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const-string v6, "Cursor is null."

    invoke-static {v7, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return v5

    .line 100
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

    .line 101
    :cond_2
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const-string v6, "Cursor has moved to the end."

    invoke-static {v7, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    if-nez p2, :cond_4

    .line 105
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const-string v6, "Buffer is null."

    invoke-static {v7, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-static {p1}, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->cursorToSms(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v3

    .line 110
    .local v3, sms:Lcom/mediatek/apst/util/entity/message/Sms;
    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 116
    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getSmsAddress(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setAddress(Ljava/lang/String;)V

    .line 121
    :cond_5
    iget-boolean v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mQueryContact:Z

    if-eqz v8, :cond_7

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 124
    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_6
    invoke-static {v0}, Lcom/mediatek/apst/target/util/StringUtils;->dropServiceCenter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, number:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 131
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    .line 138
    .local v4, target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    :goto_1
    if-eqz v4, :cond_7

    .line 139
    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getContactId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setContactId(J)V

    .line 140
    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v8

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setName(Ljava/lang/String;)V

    .line 145
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    :cond_7
    invoke-virtual {p2}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 148
    const/16 v8, 0x51a

    :try_start_0
    invoke-virtual {v3, p2, v8}, Lcom/mediatek/apst/util/entity/message/Sms;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v6

    .line 161
    goto/16 :goto_0

    .line 134
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMessageProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v8, v2}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->lookupContact(Ljava/lang/String;)Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v4

    .line 136
    .restart local v4       #target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    iget-object v8, p0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;->mMapAddressToContact:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 149
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/NullPointerException;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    const/4 v6, 0x0

    invoke-static {v7, v6, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 153
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p2}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v5, v7

    .line 159
    goto/16 :goto_0
.end method
