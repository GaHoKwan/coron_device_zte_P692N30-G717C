.class public Lcom/mediatek/vcalendar/component/Component;
.super Ljava/lang/Object;
.source "Component.java"


# static fields
.field public static final BEGIN:Ljava/lang/String; = "BEGIN"

.field public static final DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field public static final END:Ljava/lang/String; = "END"

.field public static final NEWLINE:Ljava/lang/String; = "\r\n"

.field public static final STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final TAG:Ljava/lang/String; = "Component"

.field public static final VALARM:Ljava/lang/String; = "VALARM"

.field public static final VCALENDAR:Ljava/lang/String; = "VCALENDAR"

.field public static final VEVENT:Ljava/lang/String; = "VEVENT"

.field public static final VFREEBUSY:Ljava/lang/String; = "VFREEBUSY"

.field public static final VJOURNAL:Ljava/lang/String; = "VJOURNAL"

.field public static final VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field public static final VTODO:Ljava/lang/String; = "VTODO"


# instance fields
.field protected mChildrenList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/vcalendar/component/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected final mName:Ljava/lang/String;

.field private final mParent:Lcom/mediatek/vcalendar/component/Component;

.field protected final mPropsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/vcalendar/property/Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mediatek/vcalendar/component/Component;)V
    .locals 1
    .parameter "name"
    .parameter "parent"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/component/Component;->mChildrenList:Ljava/util/LinkedList;

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    .line 86
    iput-object p1, p0, Lcom/mediatek/vcalendar/component/Component;->mName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/mediatek/vcalendar/component/Component;->mParent:Lcom/mediatek/vcalendar/component/Component;

    .line 88
    return-void
.end method


# virtual methods
.method public addChild(Lcom/mediatek/vcalendar/component/Component;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/vcalendar/component/Component;->mChildrenList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public addProperty(Lcom/mediatek/vcalendar/property/Property;)V
    .locals 3
    .parameter "prop"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/mediatek/vcalendar/property/Property;->getName()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 137
    .local v1, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/vcalendar/property/Property;>;"
    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/vcalendar/property/Property;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .restart local v1       #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/vcalendar/property/Property;>;"
    iget-object v2, p0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/vcalendar/component/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/vcalendar/component/Component;->mChildrenList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getFirstProperty(Ljava/lang/String;)Lcom/mediatek/vcalendar/property/Property;
    .locals 2
    .parameter "name"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 179
    .local v0, props:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/vcalendar/property/Property;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/vcalendar/component/Component;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/mediatek/vcalendar/component/Component;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/vcalendar/component/Component;->mParent:Lcom/mediatek/vcalendar/component/Component;

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/vcalendar/property/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    .local v0, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    if-eqz v0, :cond_0

    .line 165
    .end local v0           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    :goto_0
    return-object v0

    .restart local v0       #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/vcalendar/property/Property;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getPropertyNames()Ljava/util/Set;
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
    .line 150
    iget-object v0, p0, Lcom/mediatek/vcalendar/component/Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parseCursorInfo(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
        }
    .end annotation

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "the cursor describling the Expected Component  info cannot be null"

    invoke-direct {v0, v1}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 298
    return-void
.end method

.method public toAlarmsContentValue(Ljava/util/LinkedList;)V
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
    .line 261
    .local p1, cvList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    if-nez p1, :cond_0

    .line 262
    const-string v0, "Component"

    const-string v1, "toAlarmsContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    .line 266
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
    .line 279
    .local p1, cvList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/content/ContentValues;>;"
    if-nez p1, :cond_0

    .line 280
    const-string v0, "Component"

    const-string v1, "toAttendeesContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    .line 284
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
    .line 242
    if-nez p1, :cond_0

    .line 243
    const-string v0, "Component"

    const-string v1, "toEventsContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    .line 247
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/mediatek/vcalendar/component/Component;->toString(Ljava/lang/StringBuilder;)V

    .line 189
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "sb"

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v5, "BEGIN"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v5, p0, Lcom/mediatek/vcalendar/component/Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/vcalendar/component/Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    .local v4, propertyName:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mediatek/vcalendar/component/Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/vcalendar/property/Property;

    .line 209
    .local v3, property:Lcom/mediatek/vcalendar/property/Property;
    invoke-virtual {v3}, Lcom/mediatek/vcalendar/property/Property;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #property:Lcom/mediatek/vcalendar/property/Property;
    .end local v4           #propertyName:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/vcalendar/component/Component;->mChildrenList:Ljava/util/LinkedList;

    if-eqz v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/mediatek/vcalendar/component/Component;->mChildrenList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/vcalendar/component/Component;

    .line 217
    .local v0, component:Lcom/mediatek/vcalendar/component/Component;
    invoke-virtual {v0, p1}, Lcom/mediatek/vcalendar/component/Component;->toString(Ljava/lang/StringBuilder;)V

    .line 218
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 222
    .end local v0           #component:Lcom/mediatek/vcalendar/component/Component;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v5, "END"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v5, p0, Lcom/mediatek/vcalendar/component/Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
