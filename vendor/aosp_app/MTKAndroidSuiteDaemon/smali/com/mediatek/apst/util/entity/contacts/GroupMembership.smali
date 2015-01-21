.class public Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
.super Lcom/mediatek/apst/util/entity/contacts/ContactData;
.source "GroupMembership.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MIME_TYPE:I = 0xb

.field public static final MIME_TYPE_STRING:Ljava/lang/String; = "vnd.android.cursor.item/group_membership"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private groupId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;-><init>(J)V

    .line 78
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 73
    const/16 v0, 0xb

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;-><init>(JI)V

    .line 74
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
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->clone()Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->clone()Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .line 107
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/GroupMembership;
    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->groupId:J

    return-wide v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "vnd.android.cursor.item/group_membership"

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->groupId:J

    .line 129
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .parameter "groupId"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->groupId:J

    .line 94
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 121
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->groupId:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 122
    return-void
.end method
