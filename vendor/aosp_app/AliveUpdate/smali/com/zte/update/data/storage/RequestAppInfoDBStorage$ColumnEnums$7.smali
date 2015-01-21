.class final enum Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums$7;
.super Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
.source "RequestAppInfoDBStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
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
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/update/data/storage/RequestAppInfoDBStorage$1;)V

    return-void
.end method


# virtual methods
.method getValue(Lcom/zte/update/data/RequestAppInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/zte/update/data/RequestAppInfo;->getNotificationType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lcom/zte/update/data/RequestAppInfo;Landroid/database/Cursor;)V
    .locals 1
    .parameter "info"
    .parameter "cursor"

    .prologue
    .line 65
    iget v0, p0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums$7;->index:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zte/update/data/RequestAppInfo;->setNotificationType(I)V

    .line 66
    return-void
.end method
