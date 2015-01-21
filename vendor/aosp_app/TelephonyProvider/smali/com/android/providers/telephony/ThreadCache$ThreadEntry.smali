.class Lcom/android/providers/telephony/ThreadCache$ThreadEntry;
.super Ljava/lang/Object;
.source "ThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadEntry"
.end annotation


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/telephony/ThreadCache;

.field private threadId:J


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/ThreadCache;JLjava/util/List;)V
    .locals 2
    .parameter
    .parameter "lthreadId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p4, addrArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->this$0:Lcom/android/providers/telephony/ThreadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->threadId:J

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->addresses:Ljava/util/List;

    .line 178
    iput-wide p2, p0, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->threadId:J

    .line 179
    iput-object p4, p0, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->addresses:Ljava/util/List;

    .line 180
    return-void
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/android/providers/telephony/ThreadCache$ThreadEntry;->threadId:J

    return-wide v0
.end method
