.class public Lcom/mediatek/apst/target/data/proxy/contacts/FastGroupCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastGroupCursorParser.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "c"
    .parameter "buffer"

    .prologue
    .line 72
    invoke-static {p1, p2}, Lcom/mediatek/apst/target/data/provider/contacts/GroupContent;->cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
