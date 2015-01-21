.class public Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
.super Ljava/lang/Object;
.source "ApplicationAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ApplicationAdInfo"


# instance fields
.field public adList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public isblock:I

.field private nm:Landroid/app/INotificationManager;

.field public packageName:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo$1;

    invoke-direct {v0}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo$1;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->versionCode:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isblock:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 43
    .local v2, n:I
    invoke-static {}, Lcom/zte/heartyservice/interceptad/FeatureParser;->init()V

    .line 44
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 46
    .local v0, _id:I
    iget-object v3, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    sget-object v4, Lcom/zte/heartyservice/interceptad/FeatureParser;->map_ids:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0           #_id:I
    :cond_0
    return-void
.end method

.method private analysis(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 261
    const/4 v3, 0x0

    .line 263
    .local v3, localXmlResourceParser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, serviceflag:Z
    const/4 v4, 0x0

    .line 266
    .local v4, serviceName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 267
    .local v1, activityflag:Z
    const/4 v0, 0x0

    .line 268
    .local v0, activityName:Ljava/lang/String;
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v8, :cond_a

    .line 269
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-ne v6, v9, :cond_3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "service"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 270
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "name"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    :cond_0
    invoke-static {p1, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isComponentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-static {p1, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isComponentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 277
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    .end local v0           #activityName:Ljava/lang/String;
    .end local v1           #activityflag:Z
    .end local v4           #serviceName:Ljava/lang/String;
    .end local v5           #serviceflag:Z
    :catch_0
    move-exception v2

    .line 309
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    if-eqz v3, :cond_1

    .line 312
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 315
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 281
    .restart local v0       #activityName:Ljava/lang/String;
    .restart local v1       #activityflag:Z
    .restart local v4       #serviceName:Ljava/lang/String;
    .restart local v5       #serviceflag:Z
    :cond_2
    const/4 v5, 0x1

    .line 283
    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-ne v6, v10, :cond_4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "service"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v5, v8, :cond_4

    .line 284
    const/4 v5, 0x0

    .line 285
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_4
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-ne v6, v9, :cond_8

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 288
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "name"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_5
    invoke-static {p1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isComponentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {p1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isComponentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 295
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 311
    .end local v0           #activityName:Ljava/lang/String;
    .end local v1           #activityflag:Z
    .end local v4           #serviceName:Ljava/lang/String;
    .end local v5           #serviceflag:Z
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_6

    .line 312
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v6

    .line 299
    .restart local v0       #activityName:Ljava/lang/String;
    .restart local v1       #activityflag:Z
    .restart local v4       #serviceName:Ljava/lang/String;
    .restart local v5       #serviceflag:Z
    :cond_7
    const/4 v1, 0x1

    .line 301
    :cond_8
    :try_start_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-ne v6, v10, :cond_9

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-ne v1, v8, :cond_9

    .line 302
    const/4 v1, 0x0

    .line 303
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_9
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 311
    :cond_a
    if-eqz v3, :cond_1

    .line 312
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1
.end method

.method private doInterceptType_1(Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .parameter "keyword"
    .parameter
    .parameter "setting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v0, cn:Landroid/content/ComponentName;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doInterceptType_2(Ljava/lang/String;Ljava/util/List;I)V
    .locals 5
    .parameter "keyword"
    .parameter
    .parameter "setting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v0, cn:Landroid/content/ComponentName;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, component:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, p1, v1}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isFather(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 201
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .restart local v0       #cn:Landroid/content/ComponentName;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 203
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 208
    .end local v1           #component:Ljava/lang/String;
    :cond_1
    return-void

    .line 195
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private doInterceptType_3(Ljava/lang/String;Ljava/util/List;I)V
    .locals 10
    .parameter "keyword"
    .parameter
    .parameter "setting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, component:Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, keys:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v5, v0, v4

    .line 178
    .local v5, key:Ljava/lang/String;
    if-ne v5, p1, :cond_1

    .line 180
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v8, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v1, cn:Landroid/content/ComponentName;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, p3, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v1           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 177
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 189
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #component:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #keys:[Ljava/lang/String;
    .end local v7           #len$:I
    :cond_2
    return-void
.end method

.method private doInterceptType_4(Ljava/lang/String;Ljava/util/List;I)V
    .locals 5
    .parameter "keyword"
    .parameter
    .parameter "setting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, component:Ljava/lang/String;
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v0, cn:Landroid/content/ComponentName;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 172
    .end local v1           #component:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private isFather(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "superclass"
    .parameter "subclass"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, isFather:Z
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 216
    .local v1, localClassLoader:Ljava/lang/ClassLoader;
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 217
    .local v3, superClass:Ljava/lang/Class;
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 218
    .local v2, subClass:Ljava/lang/Class;
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 221
    .end local v1           #localClassLoader:Ljava/lang/ClassLoader;
    .end local v2           #subClass:Ljava/lang/Class;
    .end local v3           #superClass:Ljava/lang/Class;
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getAdCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isBlocked(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 58
    sget-boolean v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->showNewInterceptAdView:Z

    if-ne v8, v6, :cond_1

    .line 59
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isInterceptadOpen()Z

    move-result v6

    .line 92
    :cond_0
    :goto_0
    return v6

    .line 60
    :cond_1
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 61
    iget-object v8, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->nm:Landroid/app/INotificationManager;

    if-nez v8, :cond_2

    .line 62
    const-string v8, "notification"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->nm:Landroid/app/INotificationManager;

    .line 67
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->nm:Landroid/app/INotificationManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "ZTEAreNotificationsEnabledForPackage"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 69
    .local v3, isEnabled:Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->nm:Landroid/app/INotificationManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 70
    .local v5, ret:Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 71
    .end local v3           #isEnabled:Ljava/lang/reflect/Method;
    .end local v5           #ret:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 75
    :try_start_1
    const-string v8, "privacy"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v4

    .line 77
    .local v4, privacyService:Lcom/zte/privacy/IZTEPrivacyManager;
    iget-object v8, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v8}, Lcom/zte/privacy/IZTEPrivacyManager;->areNotificationEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 78
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    move v6, v7

    goto :goto_0

    .line 79
    .end local v1           #enabled:Z
    .end local v4           #privacyService:Lcom/zte/privacy/IZTEPrivacyManager;
    :catch_1
    move-exception v2

    .line 80
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .end local v2           #ex:Landroid/os/RemoteException;
    :goto_1
    move v6, v7

    .line 90
    goto :goto_0

    .line 83
    :catch_2
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    iget v8, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isblock:I

    if-eq v8, v6, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method public setBlock(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 14
    .parameter "context"
    .parameter "block"

    .prologue
    .line 98
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 99
    iget-object v9, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->nm:Landroid/app/INotificationManager;

    if-nez v9, :cond_0

    .line 100
    const-string v9, "notification"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v9

    iput-object v9, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->nm:Landroid/app/INotificationManager;

    .line 105
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->nm:Landroid/app/INotificationManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "ZTESetNotificationsEnabledForPackage"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 107
    .local v7, setEnabled:Ljava/lang/reflect/Method;
    iget-object v10, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->nm:Landroid/app/INotificationManager;

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v12, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v9

    const/4 v12, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 159
    .end local v7           #setEnabled:Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 107
    .restart local v7       #setEnabled:Ljava/lang/reflect/Method;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 108
    .end local v7           #setEnabled:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 112
    .local v3, e:Ljava/lang/NoSuchMethodException;
    :try_start_1
    const-string v9, "privacy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v6

    .line 114
    .local v6, privacyService:Lcom/zte/privacy/IZTEPrivacyManager;
    iget-object v10, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-interface {v6, v10, v9}, Lcom/zte/privacy/IZTEPrivacyManager;->setNotificationsEnabled(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 116
    .end local v6           #privacyService:Lcom/zte/privacy/IZTEPrivacyManager;
    :catch_1
    move-exception v4

    .line 117
    .local v4, ex:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v4           #ex:Landroid/os/RemoteException;
    .restart local v6       #privacyService:Lcom/zte/privacy/IZTEPrivacyManager;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 121
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    .end local v6           #privacyService:Lcom/zte/privacy/IZTEPrivacyManager;
    :catch_2
    move-exception v3

    .line 123
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 126
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 129
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v3           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9, v1}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->analysis(Ljava/lang/String;Ljava/util/List;)V

    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 135
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v8, 0x2

    .line 136
    .local v8, setting:I
    :goto_3
    iget-object v9, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/interceptad/AdInfo;

    .line 137
    .local v0, ad:Lcom/zte/heartyservice/interceptad/AdInfo;
    iget v9, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->interceptType:I

    packed-switch v9, :pswitch_data_0

    goto :goto_4

    .line 139
    :pswitch_0
    iget-object v9, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->keyword:Ljava/lang/String;

    invoke-direct {p0, v9, v1, v8}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->doInterceptType_1(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_4

    .line 135
    .end local v0           #ad:Lcom/zte/heartyservice/interceptad/AdInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #setting:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 142
    .restart local v0       #ad:Lcom/zte/heartyservice/interceptad/AdInfo;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #setting:I
    :pswitch_1
    iget-object v9, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->keyword:Ljava/lang/String;

    invoke-direct {p0, v9, v1, v8}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->doInterceptType_2(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_4

    .line 145
    :pswitch_2
    iget-object v9, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->keyword:Ljava/lang/String;

    invoke-direct {p0, v9, v1, v8}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->doInterceptType_3(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_4

    .line 148
    :pswitch_3
    iget-object v9, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->keyword:Ljava/lang/String;

    invoke-direct {p0, v9, v1, v8}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->doInterceptType_4(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_4

    .line 153
    .end local v0           #ad:Lcom/zte/heartyservice/interceptad/AdInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #setting:I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    :goto_5
    iput v9, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isblock:I

    .line 154
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v2, cv:Landroid/content/ContentValues;
    const-string v9, "isblock"

    iget v10, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isblock:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    sget-object v9, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    const-string v10, "pkgname = ? AND version = ?"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->versionCode:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 153
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget v2, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->versionCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v2, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isblock:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-virtual {p0}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->getAdCount()I

    move-result v1

    .line 244
    .local v1, n:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 246
    iget-object v2, p0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/interceptad/AdInfo;

    iget v2, v2, Lcom/zte/heartyservice/interceptad/AdInfo;->_id:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method
