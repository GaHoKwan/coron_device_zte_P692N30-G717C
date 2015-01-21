.class public Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastRawContactsCursorParser.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 59
    return-void
.end method


# virtual methods
.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "c"
    .parameter "buffer"

    .prologue
    .line 80
    invoke-static {p1, p2}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsContent;->cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
