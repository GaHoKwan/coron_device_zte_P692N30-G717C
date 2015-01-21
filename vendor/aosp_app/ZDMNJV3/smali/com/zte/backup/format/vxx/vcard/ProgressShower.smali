.class public Lcom/zte/backup/format/vxx/vcard/ProgressShower;
.super Ljava/lang/Object;
.source "ProgressShower.java"

# interfaces
.implements Lcom/pim/vcard/VCardEntryHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vcard.ProgressShower"


# instance fields
.field private composer:Lcom/zte/backup/composer/Composer;

.field private mTime:J


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/ProgressShower;->composer:Lcom/zte/backup/composer/Composer;

    .line 24
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcard/ProgressShower;->composer:Lcom/zte/backup/composer/Composer;

    .line 25
    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 6

    .prologue
    .line 43
    invoke-static {}, Lcom/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "vcard.ProgressShower"

    const-string v1, "Time to progress a dialog: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/zte/backup/format/vxx/vcard/ProgressShower;->mTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method

.method public onEntryCreated(Lcom/pim/vcard/VCardEntry;)V
    .locals 6
    .parameter "contactStruct"

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    .local v0, start:J
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->isIgnorable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/ProgressShower;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v2}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/ProgressShower;->composer:Lcom/zte/backup/composer/Composer;

    invoke-virtual {v2}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/ProgressShower;->composer:Lcom/zte/backup/composer/Composer;

    const/16 v3, 0x2003

    invoke-virtual {v2, v3}, Lcom/zte/backup/composer/Composer;->onEnd(I)V

    .line 39
    :cond_1
    iget-wide v2, p0, Lcom/zte/backup/format/vxx/vcard/ProgressShower;->mTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/zte/backup/format/vxx/vcard/ProgressShower;->mTime:J

    .line 40
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
