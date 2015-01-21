.class public final Lcom/mediatek/filemanager/FileInfoComparator;
.super Ljava/lang/Object;
.source "FileInfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/filemanager/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final SORT_BY_NAME:I = 0x1

.field public static final SORT_BY_SIZE:I = 0x2

.field public static final SORT_BY_TIME:I = 0x3

.field public static final SORT_BY_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FileInfoComparator"

.field private static sInstance:Lcom/mediatek/filemanager/FileInfoComparator;


# instance fields
.field private mCollator:Ljava/text/RuleBasedCollator;

.field private mSortType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/mediatek/filemanager/FileInfoComparator;

    invoke-direct {v0}, Lcom/mediatek/filemanager/FileInfoComparator;-><init>()V

    sput-object v0, Lcom/mediatek/filemanager/FileInfoComparator;->sInstance:Lcom/mediatek/filemanager/FileInfoComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mSortType:I

    .line 68
    return-void
.end method

.method public static getInstance(I)Lcom/mediatek/filemanager/FileInfoComparator;
    .locals 1
    .parameter "sort"

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/filemanager/FileInfoComparator;->sInstance:Lcom/mediatek/filemanager/FileInfoComparator;

    invoke-direct {v0, p0}, Lcom/mediatek/filemanager/FileInfoComparator;->setSortType(I)V

    .line 91
    sget-object v0, Lcom/mediatek/filemanager/FileInfoComparator;->sInstance:Lcom/mediatek/filemanager/FileInfoComparator;

    return-object v0
.end method

.method private setSortType(I)V
    .locals 1
    .parameter "sort"

    .prologue
    .line 77
    iput p1, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mSortType:I

    .line 78
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    iput-object v0, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    .line 81
    :cond_0
    return-void
.end method

.method private sortByName(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I
    .locals 5
    .parameter "op"
    .parameter "oq"

    .prologue
    .line 175
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 176
    .local v0, c1:Ljava/text/CollationKey;
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    .line 177
    .local v1, c2:Ljava/text/CollationKey;
    iget-object v2, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private sortBySize(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I
    .locals 5
    .parameter "op"
    .parameter "oq"

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileSize()J

    move-result-wide v0

    .line 191
    .local v0, opSize:J
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileSize()J

    move-result-wide v2

    .line 192
    .local v2, oqSize:J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 193
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, -0x1

    .line 196
    .end local v0           #opSize:J
    .end local v2           #oqSize:J
    :goto_0
    return v4

    .line 193
    .restart local v0       #opSize:J
    .restart local v2       #oqSize:J
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 196
    .end local v0           #opSize:J
    .end local v2           #oqSize:J
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->sortByName(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v4

    goto :goto_0
.end method

.method private sortByTime(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I
    .locals 5
    .parameter "op"
    .parameter "oq"

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v0

    .line 209
    .local v0, opTime:J
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v2

    .line 210
    .local v2, oqTime:J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 211
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, -0x1

    .line 213
    :goto_0
    return v4

    .line 211
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->sortByName(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v4

    goto :goto_0
.end method

.method private sortByType(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I
    .locals 11
    .parameter "op"
    .parameter "oq"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 137
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v1

    .line 138
    .local v1, isOpDirectory:Z
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v3

    .line 139
    .local v3, isOqDirectory:Z
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {}, Lcom/mediatek/filemanager/IconManager;->getInstance()Lcom/mediatek/filemanager/IconManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/filemanager/IconManager;->isSystemFolder(Lcom/mediatek/filemanager/FileInfo;)Z

    move-result v0

    .line 141
    .local v0, isOpCategoryFolder:Z
    invoke-static {}, Lcom/mediatek/filemanager/IconManager;->getInstance()Lcom/mediatek/filemanager/IconManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/mediatek/filemanager/IconManager;->isSystemFolder(Lcom/mediatek/filemanager/FileInfo;)Z

    move-result v2

    .line 142
    .local v2, isOqCategoryFolder:Z
    xor-int v6, v0, v2

    if-eqz v6, :cond_3

    .line 144
    const-string v9, "FileInfoComparator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " - "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " result="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v0, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/mediatek/filemanager/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v0, :cond_2

    .line 163
    .end local v0           #isOpCategoryFolder:Z
    .end local v2           #isOqCategoryFolder:Z
    :cond_0
    :goto_1
    return v7

    .restart local v0       #isOpCategoryFolder:Z
    .restart local v2       #isOqCategoryFolder:Z
    :cond_1
    move v6, v8

    .line 144
    goto :goto_0

    :cond_2
    move v7, v8

    .line 146
    goto :goto_1

    .line 149
    .end local v0           #isOpCategoryFolder:Z
    .end local v2           #isOqCategoryFolder:Z
    :cond_3
    if-nez v1, :cond_6

    if-nez v3, :cond_6

    .line 151
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, opExtension:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/filemanager/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, oqExtension:Ljava/lang/String;
    if-nez v4, :cond_4

    if-nez v5, :cond_0

    .line 155
    :cond_4
    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    move v7, v8

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 163
    .end local v4           #opExtension:Ljava/lang/String;
    .end local v5           #oqExtension:Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->sortByName(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v7

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I
    .locals 7
    .parameter "op"
    .parameter "oq"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 105
    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v0

    .line 106
    .local v0, isOpDirectory:Z
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->isDirectory()Z

    move-result v1

    .line 107
    .local v1, isOqDirectory:Z
    xor-int v2, v0, v1

    if-eqz v2, :cond_2

    .line 109
    const-string v5, "FileInfoComparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " vs "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " result="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/mediatek/filemanager/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz v0, :cond_1

    .line 124
    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 109
    goto :goto_0

    :cond_1
    move v3, v4

    .line 111
    goto :goto_1

    .line 114
    :cond_2
    iget v2, p0, Lcom/mediatek/filemanager/FileInfoComparator;->mSortType:I

    packed-switch v2, :pswitch_data_0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->sortByName(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v3

    goto :goto_1

    .line 116
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->sortByType(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v3

    goto :goto_1

    .line 118
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->sortByName(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v3

    goto :goto_1

    .line 120
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->sortBySize(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v3

    goto :goto_1

    .line 122
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->sortByTime(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v3

    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p1, Lcom/mediatek/filemanager/FileInfo;

    .end local p1
    check-cast p2, Lcom/mediatek/filemanager/FileInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/filemanager/FileInfoComparator;->compare(Lcom/mediatek/filemanager/FileInfo;Lcom/mediatek/filemanager/FileInfo;)I

    move-result v0

    return v0
.end method
