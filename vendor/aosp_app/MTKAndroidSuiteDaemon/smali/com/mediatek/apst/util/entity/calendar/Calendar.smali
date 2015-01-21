.class public Lcom/mediatek/apst/util/entity/calendar/Calendar;
.super Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;
.source "Calendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private displayName:Ljava/lang/String;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private ownerAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/calendar/Calendar;-><init>(J)V

    .line 100
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;-><init>(J)V

    .line 92
    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->name:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->displayName:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->ownerAccount:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    .line 96
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 141
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->ownerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 157
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->name:Ljava/lang/String;

    .line 159
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->displayName:Ljava/lang/String;

    .line 161
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->ownerAccount:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 165
    .local v2, size:I
    if-lez v2, :cond_0

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    .line 167
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 173
    .end local v1           #i:I
    :cond_0
    return-void

    .line 168
    .restart local v1       #i:I
    :cond_1
    new-instance v0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;-><init>()V

    .line 169
    .local v0, event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 170
    iget-object v3, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->displayName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, events:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    .line 111
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->name:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setOwnerAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerAccount"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->ownerAccount:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 182
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->name:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->displayName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->ownerAccount:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 193
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/calendar/Calendar;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    :goto_1
    return-void

    .line 193
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    .line 194
    .local v0, event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 197
    .end local v0           #event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method
