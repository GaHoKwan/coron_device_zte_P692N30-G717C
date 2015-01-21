.class public Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;
.super Lcom/mediatek/apst/target/data/proxy/FastCursorParser;
.source "FastSimContactsCursorParser.java"


# instance fields
.field private mSimId:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V
    .locals 1
    .parameter "cursor"
    .parameter "consumer"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;->mSimId:I

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;I)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"
    .parameter "simId"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;)V

    .line 91
    iput p3, p0, Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;->mSimId:I

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "cursor"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;->mSimId:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .parameter "cursor"
    .parameter "consumer"
    .parameter "buffer"
    .parameter "simId"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/FastCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 63
    iput p4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;->mSimId:I

    .line 64
    return-void
.end method


# virtual methods
.method public onParseCursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    .line 107
    iget v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;->mSimId:I

    invoke-static {p1, p2, v0}, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method
