.class public abstract Lcom/mediatek/apst/util/entity/contacts/ContactDataAdapter;
.super Ljava/lang/Object;
.source "ContactDataAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readRaw(Ljava/nio/ByteBuffer;I)Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .locals 3
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 91
    .local v0, generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 92
    add-int/lit8 v2, v2, 0x10

    .line 91
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 94
    .local v1, mimeType:I
    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 97
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 101
    :pswitch_1
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 102
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 106
    :pswitch_2
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Phone;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 109
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v2, p0, p1}, Lcom/mediatek/apst/util/entity/contacts/Phone;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 113
    :pswitch_3
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Photo;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 114
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Photo;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/Photo;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 118
    :pswitch_4
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Email;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 119
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/Email;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 123
    :pswitch_5
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Im;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Im;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 124
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Im;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/Im;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 128
    :pswitch_6
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 129
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 133
    :pswitch_7
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Organization;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 134
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Organization;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/Organization;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 138
    :pswitch_8
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Note;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Note;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 139
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Note;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/Note;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 143
    :pswitch_9
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Nickname;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 144
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->readRaw(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 148
    :pswitch_a
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Website;

    .end local v0           #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Website;-><init>()V

    .restart local v0       #generic:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move-object v2, v0

    .line 149
    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Website;

    invoke-virtual {v2, p0}, Lcom/mediatek/apst/util/entity/contacts/Website;->readRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
