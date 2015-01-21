.class public Lcom/zte/heartyservice/privacy/CallLogContentObserver;
.super Landroid/database/ContentObserver;
.source "CallLogContentObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 16
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 25
    const-string v2, "chenlu"

    const-string v3, "CallLogContentObserver onChange()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getACHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 30
    .local v0, acHashSet:Ljava/util/HashSet;
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 31
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getMaxHandledCalllogId()I

    move-result v1

    .line 35
    .local v1, lastHandledCalllogId:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->moveCallLog2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z

    .line 36
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledCallId()V

    .line 37
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0
.end method
