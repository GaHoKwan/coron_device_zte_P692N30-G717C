.class public Lcom/android/providers/applications/ApplicationsProvider;
.super Landroid/content/ContentProvider;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;,
        Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final APPLICATIONS_LOOKUP_JOIN:Ljava/lang/String; = "applicationsLookup JOIN applications ON applicationsLookup.source = applications._id"

.field private static final APPLICATIONS_TABLE:Ljava/lang/String; = "applications"

.field public static final CLASS:Ljava/lang/String; = "class"

.field private static final DBG:Z = false

.field private static final DEFAULT_APP_ICON:Ljava/lang/String; = "android.resource://com.android.providers.applications/drawable/default_app_icon"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final LAST_RESUME_TIME:Ljava/lang/String; = "last_resume_time"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field private static final MSG_UPDATE_ALL:I = 0x0

.field private static final MSG_UPDATE_PACKAGE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final REFRESH_STATS:Ljava/lang/String; = "refresh"

.field private static final SEARCH:I = 0x2

.field private static final SEARCH_SUGGEST:I = 0x0

.field private static final SHORTCUT_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApplicationsProvider"

.field private static final THREAD_PRIORITY:I = 0xa

.field private static final UPDATE_DELAY_MILLIS:J = 0x3e8L

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final sGlobalSearchSuggestionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSearchSuggestionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mHandler:Landroid/os/Handler;

.field private mLocale:Ljava/util/Locale;

.field private mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/applications/ApplicationsProvider;->buildSuggestionsProjectionMap(Z)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 113
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/providers/applications/ApplicationsProvider;->buildSuggestionsProjectionMap(Z)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sGlobalSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 115
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildSearchProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchProjectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 171
    new-instance v0, Lcom/android/providers/applications/ApplicationsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/applications/ApplicationsProvider$1;-><init>(Lcom/android/providers/applications/ApplicationsProvider;)V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/applications/ApplicationsProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->postUpdateAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/applications/ApplicationsProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider;->postUpdatePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/applications/ApplicationsProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->updateLocaleIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/applications/ApplicationsProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider;->updateApplicationsList(Ljava/lang/String;)V

    return-void
.end method

.method private static addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 511
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-void
.end method

.method private static buildSearchProjectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 498
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v1, "name"

    const-string v2, "name"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v1, "icon"

    const-string v2, "icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v1, "uri"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-object v0
.end method

.method private static buildSuggestionsProjectionMap(Z)Ljava/util/HashMap;
    .locals 3
    .parameter "forGlobalSearch"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v1, "suggest_text_1"

    const-string v2, "name"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "suggest_text_2"

    const-string v2, "description"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "suggest_intent_data"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "suggest_icon_1"

    const-string v2, "icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "suggest_icon_2"

    const-string v2, "NULL"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v1, "suggest_shortcut_id"

    const-string v2, "package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    if-eqz p0, :cond_0

    .line 490
    const-string v1, "suggest_last_access_hint"

    const-string v2, "last_resume_time"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    return-object v0
.end method

.method private buildTokenFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filterParam"

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token GLOB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, filter:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/database/DatabaseUtils;->getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 138
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "applications"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    const-string v1, "applications"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    const-string v1, "applications"

    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    const-string v1, "applications"

    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    const-string v1, "applications"

    const-string v2, "search"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    const-string v1, "applications"

    const-string v2, "search/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    return-object v0
.end method

.method private createDatabase()V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 264
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS applications (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED,description description TEXT,package TEXT,class TEXT,icon TEXT,launch_count INTEGER DEFAULT 0,last_resume_time INTEGER DEFAULT 0);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsComponentIndex ON applications (package,class);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE applicationsLookup (token TEXT,source INTEGER REFERENCES applications(_id),token_index INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsLookupIndex ON applicationsLookup (token,source);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_update UPDATE OF name ON applications BEGIN DELETE FROM applicationsLookup WHERE source = new._id;SELECT _TOKENIZE(\'applicationsLookup\', new._id, new.name, \' \', 1);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_insert AFTER INSERT ON applications BEGIN SELECT _TOKENIZE(\'applicationsLookup\', new._id, new.name, \' \', 1);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_delete DELETE ON applications BEGIN DELETE FROM applicationsLookup WHERE source = old._id;END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private getActivityIconUri(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3
    .parameter "activityInfo"

    .prologue
    .line 623
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v0

    .line 625
    .local v0, icon:I
    if-nez v0, :cond_0

    const-string v2, "android.resource://com.android.providers.applications/drawable/default_app_icon"

    .line 629
    :goto_0
    return-object v2

    .line 627
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->getResourceUri(Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object v1

    .line 629
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    const-string v2, "android.resource://com.android.providers.applications/drawable/default_app_icon"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getOrderBy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v0, orderBy:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->hasGlobalSearchPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "last_resume_time DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_0
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourceUri(Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;
    .locals 4
    .parameter "appInfo"
    .parameter "res"

    .prologue
    const/4 v2, 0x0

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 661
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getResourceUri(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 665
    .end local v1           #resources:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 664
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 665
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private static getResourceUri(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "resources"
    .parameter "appPkg"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, resPkg:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, type:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, name:Ljava/lang/String;
    invoke-static {p1, v1, v2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->makeResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private getSearchResults(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "query"
    .parameter "projectionIn"

    .prologue
    .line 407
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchProjectionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "query"
    .parameter "projectionIn"

    .prologue
    .line 374
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 377
    .local v0, projectionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->hasGlobalSearchPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sGlobalSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 382
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    return-object v1

    .line 379
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static makeResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "appPkg"
    .parameter "resPkg"
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 679
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 680
    .local v0, uriBuilder:Landroid/net/Uri$Builder;
    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 681
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 682
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 683
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 688
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 686
    :cond_0
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private postUpdateAll()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 244
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    return-void
.end method

.method private postUpdatePackage(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    return-void
.end method

.method private refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "shortcutId"
    .parameter "projectionIn"

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 392
    .local v8, component:Landroid/content/ComponentName;
    if-nez v8, :cond_0

    .line 393
    const-string v1, "ApplicationsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad shortcut id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-object v3

    .line 396
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 397
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "applications"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 398
    sget-object v1, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 399
    const-string v1, "package = ? AND class = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 400
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 401
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, cursor:Landroid/database/Cursor;
    move-object v3, v9

    .line 403
    goto :goto_0
.end method

.method private removeApplications(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 634
    if-nez p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "applications"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "applications"

    const-string v2, "package = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;
    .locals 11
    .parameter "query"
    .parameter "projectionIn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p3, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 414
    .local v10, zeroQuery:Z
    if-eqz v10, :cond_0

    .line 443
    :goto_0
    return-object v3

    .line 418
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 421
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "applications"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 425
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "name like "

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .local v9, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 430
    const/4 v7, 0x0

    .line 431
    .local v7, orderBy:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->hasGlobalSearchPermission()Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    .line 436
    :cond_1
    const-string v5, "applications._id"

    .line 438
    .local v5, groupBy:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    move-object v3, v8

    .line 443
    goto :goto_0
.end method

.method private declared-synchronized updateApplicationsList(Ljava/lang/String;)V
    .locals 29
    .parameter "packageName"

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    new-instance v14, Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v27, v0

    const-string v28, "applications"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v14, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 524
    .local v14, inserter:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v27, "name"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 525
    .local v22, nameCol:I
    const-string v27, "description"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 526
    .local v9, descriptionCol:I
    const-string v27, "package"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 527
    .local v23, packageCol:I
    const-string v27, "class"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 528
    .local v7, classCol:I
    const-string v27, "icon"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 529
    .local v12, iconCol:I
    const-string v27, "launch_count"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 530
    .local v19, launchCountCol:I
    const-string v27, "last_resume_time"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 532
    .local v17, lastResumeTimeCol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/applications/ApplicationsProvider;->fetchUsageStats()Ljava/util/Map;

    move-result-object v26

    .line 534
    .local v26, usageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 536
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/applications/ApplicationsProvider;->removeApplications(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f050002

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 539
    .local v8, description:Ljava/lang/String;
    new-instance v20, Landroid/content/Intent;

    const-string v27, "android.intent.action.MAIN"

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 540
    .local v20, mainIntent:Landroid/content/Intent;
    const-string v27, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    if-eqz p1, :cond_0

    .line 543
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/applications/ApplicationsProvider;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 546
    .local v21, manager:Landroid/content/pm/PackageManager;
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 547
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_3

    const/4 v5, 0x0

    .line 548
    .local v5, activityCount:I
    :goto_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v5, :cond_4

    .line 549
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 550
    .local v13, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 551
    .local v25, title:Ljava/lang/String;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 552
    .local v4, activityClassName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 553
    move-object/from16 v25, v4

    .line 556
    :cond_1
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 558
    .local v6, activityPackageName:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/PkgUsageStats;

    .line 559
    .local v24, stats:Lcom/android/internal/os/PkgUsageStats;
    const/16 v18, 0x0

    .line 560
    .local v18, launchCount:I
    const-wide/16 v15, 0x0

    .line 561
    .local v15, lastResumeTime:J
    if-eqz v24, :cond_2

    .line 562
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    move/from16 v18, v0

    .line 563
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->componentResumeTimes:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 564
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->componentResumeTimes:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 568
    :cond_2
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/providers/applications/ApplicationsProvider;->getActivityIconUri(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v11

    .line 569
    .local v11, icon:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 570
    move/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 571
    invoke-virtual {v14, v9, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 572
    move/from16 v0, v23

    invoke-virtual {v14, v0, v6}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 573
    invoke-virtual {v14, v7, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 574
    invoke-virtual {v14, v12, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 575
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 576
    move/from16 v0, v17

    move-wide v1, v15

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 577
    invoke-virtual {v14}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 548
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 547
    .end local v4           #activityClassName:Ljava/lang/String;
    .end local v5           #activityCount:I
    .end local v6           #activityPackageName:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #icon:Ljava/lang/String;
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    .end local v15           #lastResumeTime:J
    .end local v18           #launchCount:I
    .end local v24           #stats:Lcom/android/internal/os/PkgUsageStats;
    .end local v25           #title:Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto/16 :goto_0

    .line 579
    .restart local v5       #activityCount:I
    .restart local v10       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 582
    invoke-virtual {v14}, Landroid/database/DatabaseUtils$InsertHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 586
    monitor-exit p0

    return-void

    .line 581
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #activityCount:I
    .end local v8           #description:Ljava/lang/String;
    .end local v10           #i:I
    .end local v20           #mainIntent:Landroid/content/Intent;
    .end local v21           #manager:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v27

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 582
    invoke-virtual {v14}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 522
    .end local v7           #classCol:I
    .end local v9           #descriptionCol:I
    .end local v12           #iconCol:I
    .end local v14           #inserter:Landroid/database/DatabaseUtils$InsertHelper;
    .end local v17           #lastResumeTimeCol:I
    .end local v19           #launchCountCol:I
    .end local v22           #nameCol:I
    .end local v23           #packageCol:I
    .end local v26           #usageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    :catchall_1
    move-exception v27

    monitor-exit p0

    throw v27
.end method

.method private updateLocaleIfNeeded()V
    .locals 3

    .prologue
    .line 731
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 732
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocale:Ljava/util/Locale;

    .line 741
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 742
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/database/DatabaseUtils;->setCollatorLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method


# virtual methods
.method createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;-><init>(Lcom/android/providers/applications/ApplicationsProvider;Landroid/os/Looper;)V

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 655
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected fetchUsageStats()Ljava/util/Map;
    .locals 10
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 697
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 698
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 699
    .local v7, stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAllPackageUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v5

    .line 700
    .local v5, pkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    if-eqz v5, :cond_1

    .line 701
    move-object v1, v5

    .local v1, arr$:[Lcom/android/internal/os/PkgUsageStats;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 702
    .local v6, pus:Lcom/android/internal/os/PkgUsageStats;
    iget-object v8, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 707
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #arr$:[Lcom/android/internal/os/PkgUsageStats;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    .end local v6           #pus:Lcom/android/internal/os/PkgUsageStats;
    .end local v7           #stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    :catch_0
    move-exception v2

    .line 708
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ApplicationsProvider"

    const-string v9, "Could not fetch usage stats"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :cond_1
    return-object v7
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 312
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support querying."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 318
    :goto_0
    return-object v0

    .line 316
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 318
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.android.application"

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected hasGlobalSearchPermission()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.GLOBAL_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 188
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->createDatabase()V

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocale:Ljava/util/Locale;

    .line 191
    iget-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 194
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ApplicationsProviderUpdater"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 195
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 196
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/providers/applications/ApplicationsProvider;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    .line 198
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->postUpdateAll()V

    .line 200
    new-instance v2, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;

    invoke-direct {v2, p0, v5}, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;-><init>(Lcom/android/providers/applications/ApplicationsProvider;Lcom/android/providers/applications/ApplicationsProvider$1;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, localeFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    .line 333
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_0
    if-eqz p4, :cond_1

    array-length v2, p4

    if-eqz v2, :cond_1

    .line 337
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 340
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sortOrder not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_2
    sget-object v2, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 369
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t support querying."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :pswitch_0
    const/4 v0, 0x0

    .line 346
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 347
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_3
    const-string v2, "refresh"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 350
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->updateUsageStats()V

    .line 352
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 366
    .end local v0           #query:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 355
    :pswitch_1
    const/4 v1, 0x0

    .line 356
    .local v1, shortcutId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 357
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/android/providers/applications/ApplicationsProvider;->refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 362
    .end local v1           #shortcutId:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .line 363
    .restart local v0       #query:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 364
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getSearchResults(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 650
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected declared-synchronized updateUsageStats()V
    .locals 15
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->fetchUsageStats()Ljava/util/Map;

    move-result-object v9

    .line 593
    .local v9, usageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    iget-object v10, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 595
    :try_start_1
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 596
    .local v6, statsEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .local v8, updatedLaunchCount:Landroid/content/ContentValues;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 598
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/PkgUsageStats;

    .line 599
    .local v5, stats:Lcom/android/internal/os/PkgUsageStats;
    const-string v10, "launch_count"

    iget v11, v5, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    iget-object v10, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "applications"

    const-string v12, "package = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-virtual {v10, v11, v8, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 604
    iget-object v10, v5, Lcom/android/internal/os/PkgUsageStats;->componentResumeTimes:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 605
    .local v1, crtEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 606
    .local v7, updatedLastResumeTime:Landroid/content/ContentValues;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    .local v0, componentName:Ljava/lang/String;
    const-string v11, "last_resume_time"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    iget-object v10, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "applications"

    const-string v12, "package = ? AND class = ?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v14, 0x1

    aput-object v0, v13, v14

    invoke-virtual {v10, v11, v7, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 616
    .end local v0           #componentName:Ljava/lang/String;
    .end local v1           #crtEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #stats:Lcom/android/internal/os/PkgUsageStats;
    .end local v6           #statsEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    .end local v7           #updatedLastResumeTime:Landroid/content/ContentValues;
    .end local v8           #updatedLaunchCount:Landroid/content/ContentValues;
    :catchall_0
    move-exception v10

    :try_start_2
    iget-object v11, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 591
    .end local v9           #usageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 614
    .restart local v9       #usageStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    :cond_1
    :try_start_3
    iget-object v10, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 616
    :try_start_4
    iget-object v10, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 620
    monitor-exit p0

    return-void
.end method
