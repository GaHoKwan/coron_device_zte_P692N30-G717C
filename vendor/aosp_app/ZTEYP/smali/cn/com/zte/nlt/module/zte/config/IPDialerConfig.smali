.class public Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;
.super Ljava/lang/Object;
.source "IPDialerConfig.java"


# static fields
.field private static final IP_DIAL_SAVE:Ljava/lang/String; = "IP_DIAL_SAVE"

.field private static mSettingsKeyArray:[Ljava/lang/String;

.field static shardPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private context:Landroid/content/Context;

.field private ipDialEnabled:Z

.field private ipDialNumber:Ljava/lang/String;

.field private localNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->shardPreferences:Landroid/content/SharedPreferences;

    .line 36
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ip_dial_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ip_dial_second_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ip_dial_localnum"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ip_dial_second_localnum"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Cardone_select"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Cardtwo_select"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ip_dial_number1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ip_dial_second_number1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ip_dial_number2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ip_dial_second_number2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ip_dial_number3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ip_dial_second_number3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ip_dial_number4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ip_dial_second_number4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ip_dial_number5"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ip_dial_second_number5"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ip_dial_number"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ip_dial_second_number"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "location_number1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "location_number2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "LOCATION_DISPLAY_ENABLED"

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->context:Landroid/content/Context;

    .line 31
    const-string v0, "IP_DIAL_SAVE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->shardPreferences:Landroid/content/SharedPreferences;

    .line 32
    invoke-direct {p0}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->initIpSettings()V

    .line 33
    return-void
.end method

.method private getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 59
    sget-object v1, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->shardPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    sget-object v1, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    :cond_0
    const-string v0, "0"

    .line 74
    :cond_1
    :goto_0
    return-object v0

    .line 63
    :cond_2
    sget-object v1, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    const-string v0, "ip_dial_number1"

    goto :goto_0

    .line 65
    :cond_3
    sget-object v1, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    const-string v0, "ip_dial_second_number1"

    goto :goto_0

    .line 67
    :cond_4
    sget-object v1, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    sget-object v1, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v0, "1"

    goto :goto_0
.end method

.method private initIpSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v2, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->context:Landroid/content/Context;

    sget-object v3, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->ipDialEnabled:Z

    .line 45
    iget-object v1, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->context:Landroid/content/Context;

    sget-object v2, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->ipDialNumber:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->context:Landroid/content/Context;

    sget-object v2, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->localNumber:Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpSettings ipDialEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->ipDialEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ipDialNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->ipDialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",localNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->localNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 78
    sget-object v0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->shardPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public queryValue([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "projection"

    .prologue
    .line 88
    sget-object v5, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->mSettingsKeyArray:[Ljava/lang/String;

    .line 89
    .local v5, needGetKey:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 90
    move-object v5, p1

    .line 92
    :cond_0
    array-length v4, v5

    .line 94
    .local v4, len:I
    const/4 v3, 0x0

    .line 95
    .local v3, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 96
    .local v6, value:Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 97
    .local v1, cursor:Landroid/database/MatrixCursor;
    new-array v0, v4, [Ljava/lang/String;

    .line 99
    .local v0, columnValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 100
    aget-object v3, v5, v2

    .line 101
    iget-object v7, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v7, v3}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    aput-object v6, v0, v2

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 107
    return-object v1
.end method

.method public updateValues(Landroid/content/ContentValues;)I
    .locals 7
    .parameter "values"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    .line 119
    .local v2, size:I
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    .line 120
    .local v3, valueSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    .local v1, it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->context:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v6, v4, v5}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v1           #it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 125
    invoke-direct {p0}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->initIpSettings()V

    .line 126
    return v2
.end method
