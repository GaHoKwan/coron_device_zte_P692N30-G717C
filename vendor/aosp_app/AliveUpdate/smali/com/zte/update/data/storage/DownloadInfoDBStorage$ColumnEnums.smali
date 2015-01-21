.class abstract enum Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
.super Ljava/lang/Enum;
.source "DownloadInfoDBStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/data/storage/DownloadInfoDBStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ColumnEnums"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

.field public static final enum app_name:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

.field public static final enum file_name:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

.field public static final enum install_type:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

.field public static final enum offset:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

.field public static final enum state:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

.field public static final enum thread_id:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

.field public static final enum total_size:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

.field public static final enum url:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;


# instance fields
.field col_type:Ljava/lang/String;

.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$1;

    const-string v1, "url"

    const-string v2, "char"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->url:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    .line 20
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$2;

    const-string v1, "offset"

    const-string v2, "long"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->offset:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    .line 30
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$3;

    const-string v1, "total_size"

    const-string v2, "long"

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->total_size:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    .line 39
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$4;

    const-string v1, "file_name"

    const-string v2, "char"

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->file_name:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    .line 48
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$5;

    const-string v1, "thread_id"

    const-string v2, "long"

    invoke-direct {v0, v1, v8, v2}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->thread_id:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    .line 55
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$6;

    const-string v1, "state"

    const/4 v2, 0x5

    const-string v3, "Integer"

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->state:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    .line 62
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$7;

    const-string v1, "app_name"

    const/4 v2, 0x6

    const-string v3, "char UNIQUE"

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->app_name:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    .line 71
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$8;

    const-string v1, "install_type"

    const/4 v2, 0x7

    const-string v3, "Integer"

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->install_type:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    sget-object v1, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->url:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->offset:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->total_size:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->file_name:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    aput-object v1, v0, v7

    sget-object v1, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->thread_id:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->state:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->app_name:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->install_type:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->$VALUES:[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "col_type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->index:I

    .line 87
    iput-object p3, p0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->col_type:Ljava/lang/String;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/update/data/storage/DownloadInfoDBStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getColumnTypes()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 99
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->values()[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    move-result-object v1

    .line 100
    .local v1, colums:[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 101
    .local v0, columnTypes:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "_id integer PRIMARY KEY AUTOINCREMENT"

    aput-object v4, v0, v3

    .line 103
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 104
    add-int/lit8 v3, v2, 0x1

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getColumnType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-object v0
.end method

.method public static getColunms()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->values()[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    move-result-object v1

    .line 112
    .local v1, colums:[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    array-length v3, v1

    new-array v0, v3, [Ljava/lang/String;

    .line 113
    .local v0, columnNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 114
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method

.method public static getMainKeyColumn()Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->app_name:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    return-object v0
.end method

.method public static getMainKeyColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getMainKeyColumn()Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainKeyColumnValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 145
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getMainKeyColumn()Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getValues(Lcom/zte/update/data/DownloadInfo;)[Ljava/lang/Object;
    .locals 4
    .parameter "info"

    .prologue
    .line 130
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->values()[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    move-result-object v0

    .line 131
    .local v0, columns:[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 132
    .local v2, values:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 133
    aget-object v3, v0, v1

    invoke-virtual {v3, p0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-object v2
.end method

.method public static initColumnIndex(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 120
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->values()[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    move-result-object v0

    .local v0, arr$:[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 121
    .local v1, column:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    invoke-virtual {v1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->index:I

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1           #column:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    :cond_0
    return-void
.end method

.method public static setValues(Lcom/zte/update/data/DownloadInfo;Landroid/database/Cursor;)V
    .locals 4
    .parameter "info"
    .parameter "cursor"

    .prologue
    .line 125
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->values()[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    move-result-object v0

    .local v0, arr$:[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 126
    .local v1, column:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    invoke-virtual {v1, p0, p1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->setValue(Lcom/zte/update/data/DownloadInfo;Landroid/database/Cursor;)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v1           #column:Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    return-object v0
.end method

.method public static values()[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->$VALUES:[Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    invoke-virtual {v0}, [Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;

    return-object v0
.end method


# virtual methods
.method public getColumnType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->col_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColunmIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->index:I

    return v0
.end method

.method abstract getValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;
.end method

.method abstract setValue(Lcom/zte/update/data/DownloadInfo;Landroid/database/Cursor;)V
.end method
