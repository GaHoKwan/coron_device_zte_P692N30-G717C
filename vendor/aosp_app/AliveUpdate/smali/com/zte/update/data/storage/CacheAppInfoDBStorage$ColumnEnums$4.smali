.class final enum Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums$4;
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
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/update/data/storage/CacheAppInfoDBStorage$1;)V

    return-void
.end method


# virtual methods
.method getValue(Lcom/zte/update/data/CacheAppInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/zte/update/data/CacheAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lcom/zte/update/data/CacheAppInfo;Landroid/database/Cursor;)V
    .locals 1
    .parameter "info"
    .parameter "cursor"

    .prologue
    .line 30
    iget v0, p0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums$4;->index:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/update/data/CacheAppInfo;->setVersionName(Ljava/lang/String;)V

    return-void
.end method
