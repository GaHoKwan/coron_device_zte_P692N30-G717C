.class final enum Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums$11;
.super Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;
.source "CacheAppInfoDBStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/update/data/storage/CacheAppInfoDBStorage$1;)V

    return-void
.end method


# virtual methods
.method getValue(Lcom/zte/update/data/CacheAppInfo;)Ljava/lang/Object;
    .locals 2
    .parameter "info"

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/zte/update/data/CacheAppInfo;->getAllSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lcom/zte/update/data/CacheAppInfo;Landroid/database/Cursor;)V
    .locals 2
    .parameter "info"
    .parameter "cursor"

    .prologue
    .line 82
    iget v0, p0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums$11;->index:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/zte/update/data/CacheAppInfo;->setAllSize(J)V

    return-void
.end method
