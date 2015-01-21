.class Lcom/zte/heartyservice/examination/StorageListActivity$AppInfoComparator;
.super Ljava/lang/Object;
.source "StorageListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/StorageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/StorageListActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/StorageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$AppInfoComparator;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/StorageListActivity;Lcom/zte/heartyservice/examination/StorageListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/StorageListActivity$AppInfoComparator;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zte/heartyservice/common/datatype/AppCacheInfo;Lcom/zte/heartyservice/common/datatype/AppCacheInfo;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 267
    iget-wide v0, p1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->data:J

    iget-wide v2, p2, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->data:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_0
    iget-wide v0, p1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->data:J

    iget-wide v2, p2, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->data:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 270
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 264
    check-cast p1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .end local p1
    check-cast p2, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/examination/StorageListActivity$AppInfoComparator;->compare(Lcom/zte/heartyservice/common/datatype/AppCacheInfo;Lcom/zte/heartyservice/common/datatype/AppCacheInfo;)I

    move-result v0

    return v0
.end method
