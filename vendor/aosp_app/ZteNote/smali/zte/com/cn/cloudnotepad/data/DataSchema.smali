.class public interface abstract Lzte/com/cn/cloudnotepad/data/DataSchema;
.super Ljava/lang/Object;
.source "DataSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;,
        Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;,
        Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;,
        Lzte/com/cn/cloudnotepad/data/DataSchema$Tables;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "zte.com.cn.cloudnotepad.data"

.field public static final DATABASE_NAME:Ljava/lang/String; = "notepad.db"

.field public static final DATABASE_VERSION:I = 0x3

.field public static final LATEST_SORT_ORDER:Ljava/lang/String; = "updated DESC"

.field public static final LOCATION_SORT_ORDER:Ljava/lang/String; = "updated DESC"

.field public static final MAX_VERSION_NO_UUID:I = 0x2

.field public static final OLDEST_SORT_ORDER:Ljava/lang/String; = "updated ASC"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "zte.com.cn.cloudnotepad"

.field public static final SortOrder:[Ljava/lang/String; = null

.field public static final TAG_SORT_ORDER:Ljava/lang/String; = "updated DESC"

.field public static final TITLE_SORT_ORDER:Ljava/lang/String; = "title COLLATE LOCALIZED ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    const-string v2, "updated DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "updated ASC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title COLLATE LOCALIZED ASC"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 82
    const-string v2, "updated DESC"

    aput-object v2, v0, v1

    .line 79
    sput-object v0, Lzte/com/cn/cloudnotepad/data/DataSchema;->SortOrder:[Ljava/lang/String;

    .line 6
    return-void
.end method
