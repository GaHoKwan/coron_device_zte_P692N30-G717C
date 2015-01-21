.class public Lcom/mediatek/vcalendar/property/Property;
.super Ljava/lang/Object;
.source "Property.java"


# static fields
.field public static final AALARM:Ljava/lang/String; = "AALARM"

.field public static final ACTION:Ljava/lang/String; = "ACTION"

.field public static final ATTACH:Ljava/lang/String; = "ATTACH"

.field public static final ATTENDEE:Ljava/lang/String; = "ATTENDEE"

.field public static final BUSYTYPE:Ljava/lang/String; = "BUSYTYPE"

.field public static final CALSCALE:Ljava/lang/String; = "CALSCALE"

.field public static final CATEGORIES:Ljava/lang/String; = "CATEGORIES"

.field public static final CLASS:Ljava/lang/String; = "CLASS"

.field public static final COMMENT:Ljava/lang/String; = "COMMENT"

.field public static final COMPLETED:Ljava/lang/String; = "COMPLETED"

.field public static final CONTACT:Ljava/lang/String; = "CONTACT"

.field public static final COUNTRY:Ljava/lang/String; = "COUNTRY"

.field public static final CREATED:Ljava/lang/String; = "CREATED"

.field public static final DALARM:Ljava/lang/String; = "DALARM"

.field public static final DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final DTEND:Ljava/lang/String; = "DTEND"

.field public static final DTSTAMP:Ljava/lang/String; = "DTSTAMP"

.field public static final DTSTART:Ljava/lang/String; = "DTSTART"

.field public static final DUE:Ljava/lang/String; = "DUE"

.field public static final DURATION:Ljava/lang/String; = "DURATION"

.field public static final EXDATE:Ljava/lang/String; = "EXDATE"

.field public static final EXPERIMENTAL_PREFIX:Ljava/lang/String; = "X-"

.field public static final EXRULE:Ljava/lang/String; = "EXRULE"

.field public static final EXTENDED_ADDRESS:Ljava/lang/String; = "EXTENDED-ADDRESS"

.field public static final FREEBUSY:Ljava/lang/String; = "FREEBUSY"

.field public static final GEO:Ljava/lang/String; = "GEO"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "LAST-MODIFIED"

.field public static final LINE_GROUPS:I = 0x49

.field public static final LOCALITY:Ljava/lang/String; = "LOCALITY"

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final LOCATION_TYPE:Ljava/lang/String; = "LOCATION-TYPE"

.field public static final METHOD:Ljava/lang/String; = "METHOD"

.field public static final NAME:Ljava/lang/String; = "NAME"

.field public static final ORGANIZER:Ljava/lang/String; = "ORGANIZER"

.field public static final PERCENT_COMPLETE:Ljava/lang/String; = "PERCENT-COMPLETE"

.field public static final POSTALCODE:Ljava/lang/String; = "POSTAL-CODE"

.field public static final PRIORITY:Ljava/lang/String; = "PRIORITY"

.field public static final PRODID:Ljava/lang/String; = "PRODID"

.field public static final RDATE:Ljava/lang/String; = "RDATE"

.field public static final RECURRENCE_ID:Ljava/lang/String; = "RECURRENCE-ID"

.field public static final REGION:Ljava/lang/String; = "REGION"

.field public static final RELATED_TO:Ljava/lang/String; = "RELATED-TO"

.field public static final REPEAT:Ljava/lang/String; = "REPEAT"

.field public static final REQUEST_STATUS:Ljava/lang/String; = "REQUEST-STATUS"

.field public static final RESOURCES:Ljava/lang/String; = "RESOURCES"

.field public static final RRULE:Ljava/lang/String; = "RRULE"

.field public static final SEQUENCE:Ljava/lang/String; = "SEQUENCE"

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final STREET_ADDRESS:Ljava/lang/String; = "STREET-ADDRESS"

.field public static final STRING_FOLD:Ljava/lang/String; = "=\r\n"

.field public static final STRING_FOLD_LEN:I = 0x3

.field public static final SUMMARY:Ljava/lang/String; = "SUMMARY"

.field private static final TAG:Ljava/lang/String; = "Property"

.field public static final TEL:Ljava/lang/String; = "TEL"

.field public static final TRANSP:Ljava/lang/String; = "TRANSP"

.field public static final TRIGGER:Ljava/lang/String; = "TRIGGER"

.field public static final TZ:Ljava/lang/String; = "TZ"

.field public static final TZID:Ljava/lang/String; = "TZID"

.field public static final TZNAME:Ljava/lang/String; = "TZNAME"

.field public static final TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field public static final TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field public static final TZURL:Ljava/lang/String; = "TZURL"

.field public static final UID:Ljava/lang/String; = "UID"

.field public static final URL:Ljava/lang/String; = "URL"

.field public static final VERSION:Ljava/lang/String; = "VERSION"

.field public static final X_ALLDAY:Ljava/lang/String; = "X-ALLDAY"

.field public static final X_TIMEZONE:Ljava/lang/String; = "X-TIMEZONE"


# instance fields
.field public mIsDoFold:Z

.field protected final mName:Ljava/lang/String;

.field protected mParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/vcalendar/parameter/Parameter;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vcalendar/property/Property;->mIsDoFold:Z

    .line 162
    iput-object p1, p0, Lcom/mediatek/vcalendar/property/Property;->mName:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vcalendar/property/Property;->mIsDoFold:Z

    .line 174
    iput-object p1, p0, Lcom/mediatek/vcalendar/property/Property;->mName:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    .line 176
    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;)V
    .locals 10
    .parameter "sb"

    .prologue
    .line 290
    iget-object v7, p0, Lcom/mediatek/vcalendar/property/Property;->mName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/vcalendar/property/Property;->getParameterNames()Ljava/util/Set;

    move-result-object v5

    .line 292
    .local v5, parameterNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .local v4, parameterName:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mediatek/vcalendar/property/Property;->getParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/vcalendar/parameter/Parameter;

    .line 294
    .local v3, param:Lcom/mediatek/vcalendar/parameter/Parameter;
    const-string v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v3, p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 298
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #param:Lcom/mediatek/vcalendar/parameter/Parameter;
    .end local v4           #parameterName:Ljava/lang/String;
    :cond_1
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v6, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    .line 301
    .local v6, value:Ljava/lang/String;
    const-string v7, "Property"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toString, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/vcalendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v7, "ENCODING"

    invoke-virtual {p0, v7}, Lcom/mediatek/vcalendar/property/Property;->getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;

    move-result-object v0

    .line 303
    .local v0, encodePara:Lcom/mediatek/vcalendar/parameter/Parameter;
    if-eqz v0, :cond_2

    .line 304
    iget-object v7, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/parameter/Parameter;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/vcalendar/valuetype/Text;->encoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 305
    const-string v7, "Property"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toString, after do encoding, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/vcalendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    return-void
.end method


# virtual methods
.method public addParameter(Lcom/mediatek/vcalendar/parameter/Parameter;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    const-string v1, "ENCODING"

    invoke-virtual {p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/vcalendar/property/Property;->mIsDoFold:Z

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 219
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/vcalendar/parameter/Parameter;>;"
    if-nez v0, :cond_1

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/vcalendar/parameter/Parameter;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .restart local v0       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/vcalendar/parameter/Parameter;>;"
    iget-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/mediatek/vcalendar/parameter/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public getFirstParameter(Ljava/lang/String;)Lcom/mediatek/vcalendar/parameter/Parameter;
    .locals 2
    .parameter "name"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 261
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/vcalendar/parameter/Parameter;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    const/4 v1, 0x0

    .line 264
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/vcalendar/parameter/Parameter;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/vcalendar/property/Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/vcalendar/parameter/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v1, p0, Lcom/mediatek/vcalendar/property/Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 245
    .local v0, tempParams:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/parameter/Parameter;>;"
    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #tempParams:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/parameter/Parameter;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .restart local v0       #tempParams:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/parameter/Parameter;>;"
    :cond_0
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public parseDbCursorInfo(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 375
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "Expected Property Cursor queried from DB cannot be null or empty."

    invoke-direct {v0, v1}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/mediatek/vcalendar/property/Property;->mValue:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public toAlarmsContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    const-string v0, "Property"

    const-string v1, "toAlarmsContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    .line 345
    :cond_0
    return-void
.end method

.method public toAttendeesContentValue(Ljava/util/LinkedList;)V
    .locals 2
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
    .line 359
    .local p1, cvList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    if-nez p1, :cond_0

    .line 360
    const-string v0, "Property"

    const-string v1, "toAttendeesContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    .line 363
    :cond_0
    return-void
.end method

.method public toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    const-string v0, "Property"

    const-string v1, "toEventsContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    .line 327
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/mediatek/vcalendar/property/Property;->toString(Ljava/lang/StringBuilder;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
