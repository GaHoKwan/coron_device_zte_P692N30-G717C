.class abstract Lcom/mediatek/ngin3d/Base;
.super Ljava/lang/Object;
.source "Base.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Base$PropertyChain;
    }
.end annotation


# static fields
.field protected static final FLAG_APPLY_LATER_IN_BATCH:I = 0x1

.field private static final PROPERTY_MID_PREFIX:Ljava/lang/String; = "mId"

.field private static final PROPERTY_MTAG_PREFIX:Ljava/lang/String; = "mTag"

.field private static final PROPERTY_NAME_PREFIX:Ljava/lang/String; = "PROP_"


# instance fields
.field protected mApplyFlags:I

.field private mPropertyChain:Lcom/mediatek/ngin3d/Base$PropertyChain;

.field private final mValues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/mediatek/ngin3d/Property;",
            "Lcom/mediatek/ngin3d/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private applyProperty(Lcom/mediatek/ngin3d/Property;)V
    .locals 6
    .parameter "prop"

    .prologue
    .line 310
    iget-object v3, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/Value;

    .line 313
    .local v2, value:Lcom/mediatek/ngin3d/Value;
    if-nez v2, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Property;->defaultValue()Ljava/lang/Object;

    move-result-object v1

    .line 315
    .local v1, defaultValue:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/ngin3d/Base;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v0

    .line 316
    .local v0, applied:Z
    if-nez v0, :cond_2

    .line 318
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to apply "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with default value "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 322
    .end local v0           #applied:Z
    .end local v1           #defaultValue:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Value;->getAndClean()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/mediatek/ngin3d/Base;->applyLocalValueWithDependency(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v0

    .line 323
    .restart local v0       #applied:Z
    if-nez v0, :cond_2

    .line 324
    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Value;->setDirty()V

    .line 327
    :cond_2
    return-void
.end method

.method static asBoolean(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    .line 533
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 534
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 536
    :goto_0
    return v0

    .line 534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 536
    .restart local p0
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method static asByte(Ljava/lang/Object;)B
    .locals 1
    .parameter "obj"

    .prologue
    .line 525
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    return v0
.end method

.method static asChar(Ljava/lang/Object;)C
    .locals 1
    .parameter "obj"

    .prologue
    .line 541
    check-cast p0, Ljava/lang/Character;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method static asDouble(Ljava/lang/Object;)D
    .locals 2
    .parameter "obj"

    .prologue
    .line 516
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static asFloat(Ljava/lang/Object;)F
    .locals 1
    .parameter "obj"

    .prologue
    .line 512
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method static asInt(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 520
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method static asLong(Ljava/lang/Object;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 529
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 502
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text_typeface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected applyAllDirtyValues()V
    .locals 6

    .prologue
    .line 349
    const/4 v5, 0x0

    iput v5, p0, Lcom/mediatek/ngin3d/Base;->mApplyFlags:I

    .line 351
    iget-object v5, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ngin3d/Value;

    .line 353
    .local v4, value:Lcom/mediatek/ngin3d/Value;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/Property;

    .line 354
    .local v2, property:Lcom/mediatek/ngin3d/Property;
    invoke-virtual {v4}, Lcom/mediatek/ngin3d/Value;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    invoke-virtual {v4}, Lcom/mediatek/ngin3d/Value;->getAndClean()Ljava/lang/Object;

    move-result-object v3

    .line 359
    .local v3, val:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ngin3d/Base;->applyLocalValueWithDependency(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #property:Lcom/mediatek/ngin3d/Property;
    .end local v3           #val:Ljava/lang/Object;
    .end local v4           #value:Lcom/mediatek/ngin3d/Value;
    :cond_1
    iget v5, p0, Lcom/mediatek/ngin3d/Base;->mApplyFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->applyBatchValues()V

    .line 365
    :cond_2
    return-void
.end method

.method protected applyAllKeyPathProperties()V
    .locals 6

    .prologue
    .line 333
    iget-object v5, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 334
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/Property;

    .line 335
    .local v2, property:Lcom/mediatek/ngin3d/Property;
    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Property;->isKeyPath()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ngin3d/Value;

    .line 340
    .local v4, value:Lcom/mediatek/ngin3d/Value;
    invoke-virtual {v4}, Lcom/mediatek/ngin3d/Value;->getAndClean()Ljava/lang/Object;

    move-result-object v3

    .line 341
    .local v3, val:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ngin3d/Base;->applyLocalValueWithDependency(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #property:Lcom/mediatek/ngin3d/Property;
    .end local v3           #val:Ljava/lang/Object;
    .end local v4           #value:Lcom/mediatek/ngin3d/Value;
    :cond_1
    return-void
.end method

.method protected applyAllProperties()V
    .locals 11

    .prologue
    .line 266
    const/4 v8, 0x0

    iput v8, p0, Lcom/mediatek/ngin3d/Base;->mApplyFlags:I

    .line 267
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v7, properties:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/ngin3d/Property;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 271
    .local v1, clazz:Ljava/lang/Class;
    :goto_0
    const-class v8, Lcom/mediatek/ngin3d/Base;

    if-eq v1, v8, :cond_2

    .line 272
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 273
    .local v3, field:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PROP_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ngin3d/Property;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-instance v8, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get the field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 281
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 285
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    new-instance v8, Lcom/mediatek/ngin3d/Base$1;

    invoke-direct {v8, p0}, Lcom/mediatek/ngin3d/Base$1;-><init>(Lcom/mediatek/ngin3d/Base;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 300
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ngin3d/Property;

    .line 301
    .local v6, prop:Lcom/mediatek/ngin3d/Property;
    invoke-direct {p0, v6}, Lcom/mediatek/ngin3d/Base;->applyProperty(Lcom/mediatek/ngin3d/Property;)V

    goto :goto_2

    .line 304
    .end local v6           #prop:Lcom/mediatek/ngin3d/Property;
    :cond_3
    iget v8, p0, Lcom/mediatek/ngin3d/Base;->mApplyFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Base;->applyBatchValues()V

    .line 307
    :cond_4
    return-void
.end method

.method protected abstract applyBatchValues()V
.end method

.method protected applyLocalValueWithDependency(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 7
    .parameter "property"
    .parameter "value"

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Property;->getDependsOn()[Lcom/mediatek/ngin3d/Property;

    move-result-object v1

    .local v1, arr$:[Lcom/mediatek/ngin3d/Property;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 233
    .local v2, dep:Lcom/mediatek/ngin3d/Property;
    iget-object v6, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ngin3d/Value;

    .line 234
    .local v5, val:Lcom/mediatek/ngin3d/Value;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/mediatek/ngin3d/Value;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    invoke-virtual {v5}, Lcom/mediatek/ngin3d/Value;->getAndClean()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/ngin3d/Base;->applyLocalValueWithDependency(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v0

    .line 236
    .local v0, applied:Z
    if-nez v0, :cond_0

    .line 237
    invoke-virtual {v5}, Lcom/mediatek/ngin3d/Value;->setDirty()V

    .line 238
    const/4 v6, 0x0

    .line 252
    .end local v2           #dep:Lcom/mediatek/ngin3d/Property;
    .end local v5           #val:Lcom/mediatek/ngin3d/Value;
    :goto_1
    return v6

    .line 232
    .end local v0           #applied:Z
    .restart local v2       #dep:Lcom/mediatek/ngin3d/Property;
    .restart local v5       #val:Lcom/mediatek/ngin3d/Value;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v2           #dep:Lcom/mediatek/ngin3d/Property;
    .end local v5           #val:Lcom/mediatek/ngin3d/Value;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/Base;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v0

    .line 247
    .restart local v0       #applied:Z
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/mediatek/ngin3d/Base;->mPropertyChain:Lcom/mediatek/ngin3d/Base$PropertyChain;

    if-eqz v6, :cond_2

    .line 249
    iget-object v6, p0, Lcom/mediatek/ngin3d/Base;->mPropertyChain:Lcom/mediatek/ngin3d/Base$PropertyChain;

    invoke-interface {v6, p0, p1, p2}, Lcom/mediatek/ngin3d/Base$PropertyChain;->applyAttachedProperty(Lcom/mediatek/ngin3d/Base;Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    move v6, v0

    .line 252
    goto :goto_1
.end method

.method protected abstract applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
.end method

.method protected dirtyValueExists()Z
    .locals 4

    .prologue
    .line 397
    iget-object v3, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/Value;

    .line 399
    .local v2, value:Lcom/mediatek/ngin3d/Value;
    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Value;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    const/4 v3, 0x1

    .line 403
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #value:Lcom/mediatek/ngin3d/Value;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dumpProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Base;->dumpProperties(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpProperties(Z)Ljava/lang/String;
    .locals 14
    .parameter "hasAnimation"

    .prologue
    .line 446
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    .local v1, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 449
    .local v2, clazz:Ljava/lang/Class;
    :goto_0
    const-class v12, Lcom/mediatek/ngin3d/Base;

    if-eq v2, v12, :cond_6

    .line 450
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v4, v0, v5

    .line 451
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PROP_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 453
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ngin3d/Property;

    .line 454
    .local v7, prop:Lcom/mediatek/ngin3d/Property;
    iget-object v12, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 456
    .local v11, value:Ljava/lang/Object;
    if-nez v11, :cond_2

    .line 457
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Property;->defaultValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1

    .line 458
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "null"

    invoke-direct {p0, v12, v13}, Lcom/mediatek/ngin3d/Base;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    .end local v7           #prop:Lcom/mediatek/ngin3d/Property;
    .end local v11           #value:Ljava/lang/Object;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 460
    .restart local v7       #prop:Lcom/mediatek/ngin3d/Property;
    .restart local v11       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Property;->defaultValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/ngin3d/utils/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/mediatek/ngin3d/Base;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 465
    .end local v7           #prop:Lcom/mediatek/ngin3d/Property;
    .end local v11           #value:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 466
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 463
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v7       #prop:Lcom/mediatek/ngin3d/Property;
    .restart local v11       #value:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Lcom/mediatek/ngin3d/utils/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/mediatek/ngin3d/Base;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 468
    .end local v7           #prop:Lcom/mediatek/ngin3d/Property;
    .end local v11           #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mId"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 470
    :try_start_2
    const-string v12, "mId"

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/mediatek/ngin3d/Base;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, s1:Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 472
    .end local v8           #s1:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 473
    .restart local v3       #e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 475
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mTag"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 477
    :try_start_3
    const-string v12, "mTag"

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/mediatek/ngin3d/Base;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 478
    .local v9, s2:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 479
    .end local v9           #s2:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 480
    .restart local v3       #e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 484
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_0

    .line 488
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_6
    if-eqz p1, :cond_7

    .line 489
    const-string v12, "mAnimation"

    const-string v13, "1"

    invoke-direct {p0, v12, v13}, Lcom/mediatek/ngin3d/Base;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, s3:Ljava/lang/String;
    :goto_3
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 491
    .end local v10           #s3:Ljava/lang/String;
    :cond_7
    const-string v12, "mAnimation"

    const-string v13, "0"

    invoke-direct {p0, v12, v13}, Lcom/mediatek/ngin3d/Base;->wrapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #s3:Ljava/lang/String;
    goto :goto_3
.end method

.method protected enableApplyFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 381
    iget v0, p0, Lcom/mediatek/ngin3d/Base;->mApplyFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ngin3d/Base;->mApplyFlags:I

    .line 382
    return-void
.end method

.method public getKeyPathValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "keyPath"

    .prologue
    .line 220
    new-instance v0, Lcom/mediatek/ngin3d/KeyPathProperty;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/KeyPathProperty;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, property:Lcom/mediatek/ngin3d/Property;
    iget-object v2, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Value;

    .line 222
    .local v1, value:Lcom/mediatek/ngin3d/Value;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Value;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;
    .locals 10
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 414
    .local v1, clazz:Ljava/lang/Class;
    :goto_0
    const-class v8, Lcom/mediatek/ngin3d/Base;

    if-eq v1, v8, :cond_2

    .line 415
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 416
    .local v3, field:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PROP_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 418
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ngin3d/Property;

    .line 419
    .local v6, prop:Lcom/mediatek/ngin3d/Property;
    invoke-virtual {v6}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 430
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #prop:Lcom/mediatek/ngin3d/Property;
    :goto_2
    return-object v6

    .line 422
    .restart local v0       #arr$:[Ljava/lang/reflect/Field;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :catch_0
    move-exception v2

    .line 423
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 427
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    move-object v6, v7

    .line 430
    goto :goto_2
.end method

.method public getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    iget-object v1, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Value;

    .line 196
    .local v0, value:Lcom/mediatek/ngin3d/Value;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Property;->defaultValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Value;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public setKeyPathValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "keyPath"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/mediatek/ngin3d/KeyPathProperty;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/KeyPathProperty;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, property:Lcom/mediatek/ngin3d/Property;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/mediatek/ngin3d/Base;->updateValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

    move-result v1

    return v1
.end method

.method protected setPropertyChain(Lcom/mediatek/ngin3d/Base$PropertyChain;)V
    .locals 0
    .parameter "chain"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/ngin3d/Base;->mPropertyChain:Lcom/mediatek/ngin3d/Base$PropertyChain;

    .line 87
    return-void
.end method

.method public setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/Base;->updateValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/Base;->updateValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method protected setValueIfNotDirty(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Value;

    .line 151
    .local v0, value:Lcom/mediatek/ngin3d/Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Value;->isDirty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/Base;->updateValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z

    .line 154
    :cond_0
    return-void
.end method

.method public touchProperty(Lcom/mediatek/ngin3d/Property;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    if-eqz p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Value;

    .line 103
    .local v0, value:Lcom/mediatek/ngin3d/Value;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Value;->setDirty()V

    .line 107
    .end local v0           #value:Lcom/mediatek/ngin3d/Value;
    :cond_0
    return-void
.end method

.method public touchProperty(Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Base;->getProperty(Ljava/lang/String;)Lcom/mediatek/ngin3d/Property;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Base;->touchProperty(Lcom/mediatek/ngin3d/Property;)V

    .line 116
    return-void
.end method

.method public final updateValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;Z)Z
    .locals 4
    .parameter
    .parameter
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/ngin3d/Property",
            "<TT;>;TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, property:Lcom/mediatek/ngin3d/Property;,"Lcom/mediatek/ngin3d/Property<TT;>;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    iget-object v3, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Value;

    .line 166
    .local v0, existing:Lcom/mediatek/ngin3d/Value;
    if-nez v0, :cond_1

    .line 167
    new-instance v2, Lcom/mediatek/ngin3d/FixedValue;

    invoke-direct {v2, p2, p3}, Lcom/mediatek/ngin3d/FixedValue;-><init>(Ljava/lang/Object;Z)V

    .line 168
    .local v2, value:Lcom/mediatek/ngin3d/Value;
    iget-object v3, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v2           #value:Lcom/mediatek/ngin3d/Value;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 172
    :cond_1
    if-eqz p3, :cond_2

    .line 173
    invoke-virtual {v0, p2}, Lcom/mediatek/ngin3d/Value;->setAndDirty(Ljava/lang/Object;)Z

    move-result v1

    .line 177
    .local v1, success:Z
    :goto_1
    if-nez v1, :cond_0

    .line 178
    new-instance v2, Lcom/mediatek/ngin3d/FixedValue;

    invoke-direct {v2, p2, p3}, Lcom/mediatek/ngin3d/FixedValue;-><init>(Ljava/lang/Object;Z)V

    .line 179
    .restart local v2       #value:Lcom/mediatek/ngin3d/Value;
    iget-object v3, p0, Lcom/mediatek/ngin3d/Base;->mValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    .end local v1           #success:Z
    .end local v2           #value:Lcom/mediatek/ngin3d/Value;
    :cond_2
    invoke-virtual {v0, p2}, Lcom/mediatek/ngin3d/Value;->set(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1       #success:Z
    goto :goto_1
.end method
