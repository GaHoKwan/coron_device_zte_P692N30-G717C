.class Lcom/zte/heartyservice/floater/ScreenLockMonitor$5;
.super Ljava/lang/Object;
.source "ScreenLockMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/ScreenLockMonitor;->bindMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zte/heartyservice/floater/AppUsedData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$5;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zte/heartyservice/floater/AppUsedData;Lcom/zte/heartyservice/floater/AppUsedData;)I
    .locals 4
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 168
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p1, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 169
    .local v0, A1:Ljava/lang/Long;
    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p2, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 170
    .local v1, A2:Ljava/lang/Long;
    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    check-cast p1, Lcom/zte/heartyservice/floater/AppUsedData;

    .end local p1
    check-cast p2, Lcom/zte/heartyservice/floater/AppUsedData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$5;->compare(Lcom/zte/heartyservice/floater/AppUsedData;Lcom/zte/heartyservice/floater/AppUsedData;)I

    move-result v0

    return v0
.end method
