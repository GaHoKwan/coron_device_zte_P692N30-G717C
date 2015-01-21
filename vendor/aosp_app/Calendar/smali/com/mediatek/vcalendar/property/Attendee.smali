.class public Lcom/mediatek/vcalendar/property/Attendee;
.super Lcom/mediatek/vcalendar/property/Property;
.source "Attendee.java"


# static fields
.field public static final CHAIR:Ljava/lang/String; = "CHAIR"

.field public static final NON_PARTICIPANT:Ljava/lang/String; = "NON_PARTICIPANT"

.field public static final OPT_PARTICIPANT:Ljava/lang/String; = "OPT_PARTICIPANT"

.field public static final REQ_PARTICIPANT:Ljava/lang/String; = "REQ_PARTICIPANT"

.field private static final TAG:Ljava/lang/String; = "Attendee"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 74
    const-string v0, "ATTENDEE"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/vcalendar/property/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "Attendee"

    const-string v1, "Constructor: ATTENDEE property created."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public parseDbCursorInfo(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v2, "Attendee"

    const-string v3, "parseDbCursorInfo started"

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->parseDbCursorInfo(Landroid/database/Cursor;)V

    .line 84
    const-string v2, "attendeeName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, valueString:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Lcom/mediatek/vcalendar/parameter/Cn;

    invoke-direct {v2, v1}, Lcom/mediatek/vcalendar/parameter/Cn;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 89
    :cond_0
    const-string v2, "attendeeEmail"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    invoke-static {v1}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->getUserCalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iput-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    .line 95
    :cond_1
    const-string v2, "attendeeStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 96
    .local v0, status:I
    invoke-static {v0}, Lcom/mediatek/vcalendar/parameter/PartStat;->getPartstatString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/mediatek/vcalendar/parameter/PartStat;

    invoke-direct {v2, v1}, Lcom/mediatek/vcalendar/parameter/PartStat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 99
    const-string v2, "attendeeRelationship"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 100
    invoke-static {v0}, Lcom/mediatek/vcalendar/parameter/XRelationship;->getXRelationshipString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "ORGANIZER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    new-instance v2, Lcom/mediatek/vcalendar/parameter/Role;

    const-string v3, "CHAIR"

    invoke-direct {v2, v3}, Lcom/mediatek/vcalendar/parameter/Role;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 104
    :cond_2
    new-instance v2, Lcom/mediatek/vcalendar/parameter/XRelationship;

    invoke-direct {v2, v1}, Lcom/mediatek/vcalendar/parameter/XRelationship;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 106
    const-string v2, "attendeeType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 107
    invoke-static {v0}, Lcom/mediatek/vcalendar/parameter/Role;->getRoleString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    const-string v3, "ROLE"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    new-instance v2, Lcom/mediatek/vcalendar/parameter/Role;

    invoke-direct {v2, v1}, Lcom/mediatek/vcalendar/parameter/Role;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/property/Property;->addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V

    .line 114
    :cond_3
    return-void
.end method

.method public toAttendeesContentValue(Ljava/util/LinkedList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .local p1, cvList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    const/4 v7, 0x1

    .line 132
    const-string v5, "Attendee"

    const-string v6, "toAttendeesContentValue: started."

    invoke-static {v5, v6}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    .line 134
    iget-object v5, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, email:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    const-string v6, "X-RELATIONSHIP"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    const-string v5, "X-RELATIONSHIP"

    invoke-virtual {p0, v5}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v4

    .line 143
    .local v4, param:Lcom/mediatek/vcalendar/parameter/Parameter;
    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v4, v0}, Lcom/mediatek/vcalendar/parameter/Parameter;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    .line 147
    .end local v4           #param:Lcom/mediatek/vcalendar/parameter/Parameter;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/vcalendar/property/Property;->getParameterNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, name:Ljava/lang/String;
    const-string v5, "X-RELATIONSHIP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 152
    invoke-virtual {p0, v3}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v4

    .line 153
    .restart local v4       #param:Lcom/mediatek/vcalendar/parameter/Parameter;
    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {v4, v0}, Lcom/mediatek/vcalendar/parameter/Parameter;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 158
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #param:Lcom/mediatek/vcalendar/parameter/Parameter;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    const-string v6, "X-RELATIONSHIP"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    const-string v6, "ROLE"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 159
    const-string v5, "attendeeRelationship"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v5, "attendeeType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    :cond_3
    const-string v5, "attendeeEmail"

    iget-object v6, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/mediatek/vcalendar/property/Property;->toEventsContentValue(Landroid/content/ContentValues;)V

    .line 120
    const-string v2, "ROLE"

    invoke-virtual {p0, v2}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v1

    .line 121
    .local v1, parameter:Lcom/mediatek/vcalendar/parameter/Parameter;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/vcalendar/parameter/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHAIR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 124
    const-string v2, "organizer"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v0           #email:Ljava/lang/String;
    :cond_0
    const-string v2, "hasAttendeeData"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    return-void
.end method
