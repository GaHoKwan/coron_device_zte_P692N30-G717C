.class public Lcom/mediatek/apst/util/entity/contacts/Note;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "Note.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0x6

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/note"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private note:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/Note;-><init>(J)V

    .line 80
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 75
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Note;->clone()Lcom/mediatek/apst/util/entity/contacts/Note;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 109
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Note;
    return-object v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "vnd.android.cursor.item/note"

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Note;->note:Ljava/lang/String;

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 131
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Note;->note:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .parameter "note"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Note;->note:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Note;->note:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 125
    return-void
.end method
