.class public Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastEventCursorParser.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    .line 81
    invoke-static {p1, p2}, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
