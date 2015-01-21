.class public Lcom/mediatek/apst/util/entity/contacts/Contact;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private customRingtone:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private hasPhoneNumber:Z

.field private inVisibleGroup:Z

.field private lastTimeContacted:J

.field private lookup:Ljava/lang/String;

.field private photoId:J

.field private rawContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private sendToVoicemail:Z

.field private starred:Z

.field private threadSafe:Z

.field private timesContacted:I


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/apst/util/entity/contacts/Contact;-><init>(JZ)V

    .line 122
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3
    .parameter "id"
    .parameter "shouldThreadSafe"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 104
    iput-boolean v1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->sendToVoicemail:Z

    .line 105
    iput v1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->timesContacted:I

    .line 106
    iput-boolean v1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->starred:Z

    .line 107
    iput-boolean v2, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->inVisibleGroup:Z

    .line 108
    iput-boolean v1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->hasPhoneNumber:Z

    .line 111
    if-eqz p3, :cond_0

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    .line 113
    iput-boolean v2, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->threadSafe:Z

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    .line 116
    iput-boolean v1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->threadSafe:Z

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/RawContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, rawContacts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/RawContact;>;"
    invoke-interface {p1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addRawContact(Lcom/mediatek/apst/util/entity/contacts/RawContact;)Z
    .locals 1
    .parameter "rawContact"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    return-void
.end method

.method public bridge synthetic clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/Contact;->clone()Lcom/mediatek/apst/util/entity/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/Contact;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Contact;

    .line 279
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Contact;
    iget-boolean v2, v0, Lcom/mediatek/apst/util/entity/contacts/Contact;->threadSafe:Z

    if-eqz v2, :cond_0

    .line 280
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    .line 285
    :goto_0
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    return-object v0

    .line 282
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    goto :goto_0

    .line 285
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 286
    .local v1, rawContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    iget-object v3, v0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->clone()Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->customRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTimeContacted()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->lastTimeContacted:J

    return-wide v0
.end method

.method public getLookup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->lookup:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->photoId:J

    return-wide v0
.end method

.method public getRawContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    return-object v0
.end method

.method public getRawContactsCount()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTimesContacted()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->timesContacted:I

    return v0
.end method

.method public isHasPhoneNumber()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->hasPhoneNumber:Z

    return v0
.end method

.method public isInVisibleGroup()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->inVisibleGroup:Z

    return v0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->sendToVoicemail:Z

    return v0
.end method

.method public isStarred()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->starred:Z

    return v0
.end method

.method public isThreadSafe()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->threadSafe:Z

    return v0
.end method

.method public removeAll(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/RawContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, rawContacts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/RawContact;>;"
    invoke-interface {p1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeRawContact(I)Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 1
    .parameter "location"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    return-object v0
.end method

.method public removeRawContact(Lcom/mediatek/apst/util/entity/contacts/RawContact;)Z
    .locals 1
    .parameter "rawContact"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCustomRingtone(Ljava/lang/String;)V
    .locals 0
    .parameter "customRingtone"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->customRingtone:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->displayName:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0
    .parameter "hasPhoneNumber"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->hasPhoneNumber:Z

    .line 230
    return-void
.end method

.method public setInVisibleGroup(Z)V
    .locals 0
    .parameter "inVisibleGroup"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->inVisibleGroup:Z

    .line 226
    return-void
.end method

.method public setLastTimeContacted(J)V
    .locals 0
    .parameter "lastTimeContacted"

    .prologue
    .line 217
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->lastTimeContacted:J

    .line 218
    return-void
.end method

.method public setLookup(Ljava/lang/String;)V
    .locals 0
    .parameter "lookup"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->lookup:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setPhotoId(J)V
    .locals 0
    .parameter "photoId"

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->photoId:J

    .line 202
    return-void
.end method

.method public setRawContacts(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/RawContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/RawContact;>;"
    const/4 v0, 0x0

    .line 247
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->threadSafe:Z

    if-nez v1, :cond_0

    .line 252
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    .line 253
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRawContacts(Ljava/util/Vector;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/RawContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rawContacts:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/RawContact;>;"
    const/4 v0, 0x0

    .line 260
    if-nez p1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->threadSafe:Z

    if-eqz v1, :cond_0

    .line 265
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    .line 266
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSendToVoicemail(Z)V
    .locals 0
    .parameter "sendToVoicemail"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->sendToVoicemail:Z

    .line 210
    return-void
.end method

.method public setStarred(Z)V
    .locals 0
    .parameter "starred"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->starred:Z

    .line 222
    return-void
.end method

.method public setTimesContacted(I)V
    .locals 0
    .parameter "timesContacted"

    .prologue
    .line 213
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->timesContacted:I

    .line 214
    return-void
.end method

.method public shallowClone()Lcom/mediatek/apst/util/entity/contacts/Contact;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->clone()Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Contact;

    .line 295
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/Contact;
    iget-boolean v2, v0, Lcom/mediatek/apst/util/entity/contacts/Contact;->threadSafe:Z

    if-eqz v2, :cond_0

    .line 296
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    .line 301
    :goto_0
    iget-object v2, p0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    return-object v0

    .line 298
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    goto :goto_0

    .line 301
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 302
    .local v1, rawContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    iget-object v3, v0, Lcom/mediatek/apst/util/entity/contacts/Contact;->rawContacts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
