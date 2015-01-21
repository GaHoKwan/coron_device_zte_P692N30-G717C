.class public Lcom/android/providers/telephony/ThreadCache;
.super Ljava/lang/Object;
.source "ThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/ThreadCache$ThreadEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadCache"

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/providers/telephony/ThreadCache;

.field private static sThreadCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/providers/telephony/ThreadCache$ThreadEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;

    .line 36
    sput-object v0, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sput-object p1, Lcom/android/providers/telephony/ThreadCache;->sContext:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/android/providers/telephony/ThreadCache;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const-class v1, Lcom/android/providers/telephony/ThreadCache;

    monitor-enter v1

    :try_start_0
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;

    if-nez v0, :cond_0

    .line 46
    sput-object p0, Lcom/android/providers/telephony/ThreadCache;->sContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/providers/telephony/ThreadCache;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/ThreadCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit v1

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isEquals(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 7
    .parameter
    .parameter
    .parameter "useStrictPhoneNumberComparation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, a:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, b:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 124
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 125
    :cond_0
    const-string v4, "isEquals, Different addr size"

    invoke-static {v4}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    move v4, v6

    .line 146
    :goto_0
    return v4

    .line 128
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/ThreadCache;->toLowerCase(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, aTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/ThreadCache;->toLowerCase(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, bTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 131
    .local v3, result:Z
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 134
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5, p3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    const/4 v3, 0x1

    .line 142
    :cond_4
    if-nez v3, :cond_2

    move v4, v6

    .line 143
    goto :goto_0

    .line 133
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    .end local v2           #i:I
    :cond_6
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 56
    const-string v0, "ThreadCache"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method private toLowerCase(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v4, temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    .line 155
    .local v2, isEmail:Z
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, refinedAddress:Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #refinedAddress:Ljava/lang/String;
    :cond_0
    move-object v3, v0

    .line 155
    goto :goto_1

    .line 159
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #isEmail:Z
    :cond_1
    return-object v4
.end method


# virtual methods
.method public add(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 5
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v2, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;

    monitor-enter v2

    .line 65
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 66
    new-instance v0, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, p0, v3, v4, p2}, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;-><init>(Lcom/android/providers/telephony/ThreadCache;JLjava/util/List;)V

    .line 67
    .local v0, entry:Lcom/android/providers/telephony/ThreadCache$ThreadEntry;
    sget-object v1, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add item, threadId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " recipients count = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cache size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    .line 72
    .end local v0           #entry:Lcom/android/providers/telephony/ThreadCache$ThreadEntry;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public formCursor(J)Landroid/database/Cursor;
    .locals 6
    .parameter "threadId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formCursor, threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    .line 164
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    .line 168
    .local v1, projection:[Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 169
    .local v0, cursor:Landroid/database/MatrixCursor;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getThreadId(Ljava/util/List;Z)J
    .locals 5
    .parameter
    .parameter "useStrictPhoneNumberComparation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .line 110
    sget-object v4, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    if-nez v4, :cond_0

    .line 120
    :goto_0
    return-wide v2

    .line 113
    :cond_0
    sget-object v4, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;

    .line 114
    .local v1, threadEntry:Lcom/android/providers/telephony/ThreadCache$ThreadEntry;
    invoke-virtual {v1}, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, p1, p2}, Lcom/android/providers/telephony/ThreadCache;->isEquals(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get related thread id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->getThreadId()J

    move-result-wide v2

    goto :goto_0

    .line 119
    .end local v1           #threadEntry:Lcom/android/providers/telephony/ThreadCache$ThreadEntry;
    :cond_2
    const-string v4, "Can not get related thread id "

    invoke-static {v4}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(J)V
    .locals 7
    .parameter "threadId"

    .prologue
    .line 76
    sget-object v3, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 93
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove item, threadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " before remove, cache size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    .line 81
    sget-object v4, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;

    monitor-enter v4

    .line 83
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v3, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    .local v0, cacheTemp:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/providers/telephony/ThreadCache$ThreadEntry;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;

    .line 85
    .local v1, entry:Lcom/android/providers/telephony/ThreadCache$ThreadEntry;
    invoke-virtual {v1}, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->getThreadId()J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_1

    .line 86
    sget-object v3, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    .end local v1           #entry:Lcom/android/providers/telephony/ThreadCache$ThreadEntry;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove item, threadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after remove, cache size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    .end local v0           #cacheTemp:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/providers/telephony/ThreadCache$ThreadEntry;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public removeAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    sget-object v0, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 97
    sput-object v1, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;

    monitor-enter v1

    .line 102
    :try_start_0
    const-string v0, "Remove all items"

    invoke-static {v0}, Lcom/android/providers/telephony/ThreadCache;->logD(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/ThreadCache;->sThreadCache:Ljava/util/Set;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/ThreadCache;->sInstance:Lcom/android/providers/telephony/ThreadCache;

    .line 106
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
