.class Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper$1;
.super Ljava/lang/Object;
.source "PrivacySQLiteOpenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setRSAKeyPairExist(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper$1;->this$0:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1178
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerCallLogContentObserver()V

    .line 1180
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerSmsContentObserver()V

    .line 1182
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getLastNoticeTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1184
    .local v0, currentTime:J
    const-wide/32 v2, 0x5265c000

    sub-long/2addr v0, v2

    .line 1185
    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 1186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1188
    :cond_0
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setLastNoticeTime(J)V

    .line 1190
    .end local v0           #currentTime:J
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->checkBackupNotice()V

    .line 1191
    return-void
.end method
