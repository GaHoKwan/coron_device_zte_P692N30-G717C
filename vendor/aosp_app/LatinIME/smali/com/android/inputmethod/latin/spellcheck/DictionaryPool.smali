.class public final Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "DictionaryPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<",
        "Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMEOUT:I = 0x3

.field private static final dummyDict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

.field static final noSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mClosed:Z

.field private final mLocale:Ljava/util/Locale;

.field private final mMaxSize:I

.field private final mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->noSuggestions:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    new-instance v1, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool$1;

    const-string v2, "main"

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool$1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;-><init>(Lcom/android/inputmethod/latin/Dictionary;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->dummyDict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    return-void
.end method

.method public constructor <init>(ILcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/util/Locale;)V
    .locals 1
    .parameter "maxSize"
    .parameter "service"
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mMaxSize:I

    .line 74
    iput-object p2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    .line 75
    iput-object p3, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mLocale:Ljava/util/Locale;

    .line 76
    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    .line 77
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mClosed:Z

    .line 78
    return-void
.end method

.method public static isAValidDictionary(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z
    .locals 1
    .parameter "dictInfo"

    .prologue
    .line 67
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->dummyDict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mClosed:Z

    .line 124
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    .line 125
    .local v0, dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    iget-object v2, v0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_0

    .line 128
    .end local v0           #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 127
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 128
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    return-void
.end method

.method public offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z
    .locals 1
    .parameter "dict"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mClosed:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p1, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    .line 135
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->dummyDict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    invoke-super {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v0

    return v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .locals 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    .line 84
    .local v0, dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    if-eqz v0, :cond_0

    .line 107
    .end local v0           #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :goto_0
    return-object v0

    .line 85
    .restart local v0       #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_0
    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mClosed:Z

    if-eqz v2, :cond_1

    .line 89
    sget-object v2, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The dictionaryPool has been closed. mSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 109
    .end local v0           #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 93
    .restart local v0       #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    iget v3, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mMaxSize:I

    if-lt v2, v3, :cond_3

    .line 96
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    .line 97
    .local v1, result:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    if-nez v1, :cond_2

    .line 98
    sget-object v2, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->TAG:Ljava/lang/String;

    const-string v3, "Deadlock detected ! Resetting dictionary pool"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 100
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    .line 101
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    iget-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->createDictAndProximity(Ljava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v0

    .end local v0           #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    monitor-exit p0

    goto :goto_0

    .line 103
    .restart local v0       #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_2
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 106
    .end local v1           #result:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_3
    iget v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mSize:I

    .line 107
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    iget-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->createDictAndProximity(Ljava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v0

    .end local v0           #dict:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->poll(JLjava/util/concurrent/TimeUnit;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v0

    return-object v0
.end method

.method public pollWithDefaultTimeout()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .locals 4

    .prologue
    .line 115
    const-wide/16 v1, 0x3

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->poll(JLjava/util/concurrent/TimeUnit;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method
