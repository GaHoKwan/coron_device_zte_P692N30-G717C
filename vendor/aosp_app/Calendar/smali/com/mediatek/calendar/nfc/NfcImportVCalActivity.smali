.class public Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;
.super Landroid/app/Activity;
.source "NfcImportVCalActivity.java"

# interfaces
.implements Lcom/mediatek/vcalendar/VCalStatusChangeOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_END_MILLIS:Ljava/lang/String; = "key_end_millis"

.field protected static final BUNDLE_KEY_EVENT_ID:Ljava/lang/String; = "key_event_id"

.field protected static final BUNDLE_KEY_START_MILLIS:Ljava/lang/String; = "key_start_millis"

.field private static final HANDLER_NAME:Ljava/lang/String; = "importVCalendar"

.field private static final TAG:Ljava/lang/String; = "NfcImportVCalActivity"


# instance fields
.field private mImportHandler:Landroid/os/Handler;

.field private mRecord:Landroid/nfc/NdefRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->mImportHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method private doImportAction(Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 72
    const-string v3, "NfcImportVCalActivity"

    const-string v4, "In doImportAction "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 74
    .local v0, content:[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 76
    .local v2, vcsContent:Ljava/lang/String;
    const-string v3, "NfcImportVCalActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doImportAction, vcsContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->getsaveContactHandler()Landroid/os/Handler;

    move-result-object v1

    .line 78
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 79
    new-instance v3, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2, p1}, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity$ImporterThread;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :cond_0
    return-void
.end method

.method private getsaveContactHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->mImportHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "importVCalendar"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, controllerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->mImportHandler:Landroid/os/Handler;

    .line 37
    .end local v0           #controllerThread:Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->mImportHandler:Landroid/os/Handler;

    return-object v1
.end method


# virtual methods
.method public createViewEventIntent(Landroid/net/Uri;JJ)Landroid/content/Intent;
    .locals 2
    .parameter "uri"
    .parameter "startMills"
    .parameter "endMills"

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const-string v3, "NfcImportVCalActivity"

    const-string v4, "NfcImportVCalActivity, onCreate."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/mediatek/calendar/features/Features;->isBeamPlusEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    const-string v3, "NfcImportVCalActivity"

    const-string v4, "MTK_NFC_SUPPORT is not enabled!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    const-string v3, "NfcImportVCalActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknowon intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, type:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "text/x-vcalendar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "text/calendar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 60
    :cond_2
    const-string v3, "NfcImportVCalActivity"

    const-string v4, "Not a vcalendar!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 64
    :cond_3
    const-string v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    aget-object v1, v3, v5

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 66
    .local v1, msg:Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    aget-object v3, v3, v5

    iput-object v3, p0, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->mRecord:Landroid/nfc/NdefRecord;

    .line 68
    invoke-direct {p0, p0}, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->doImportAction(Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    goto :goto_0
.end method

.method public vCalOperationCanceled(II)V
    .locals 2
    .parameter "finishedCnt"
    .parameter "totalCnt"

    .prologue
    .line 105
    const-string v0, "NfcImportVCalActivity"

    const-string v1, "vCalOperationCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public vCalOperationExceptionOccured(III)V
    .locals 2
    .parameter "finishedCnt"
    .parameter "totalCnt"
    .parameter "type"

    .prologue
    .line 110
    const-string v0, "NfcImportVCalActivity"

    const-string v1, "vCalOperationExceptionOccured"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public vCalOperationFinished(IILjava/lang/Object;)V
    .locals 12
    .parameter "successCnt"
    .parameter "totalCnt"
    .parameter "obj"

    .prologue
    .line 115
    const-string v0, "NfcImportVCalActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vCalOperationFinished, obj="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, eventUri:Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 118
    .local v2, startMillis:J
    move-wide v4, v2

    .line 119
    .local v4, endMills:J
    if-eqz p3, :cond_0

    move-object v9, p3

    .line 120
    check-cast v9, Landroid/os/Bundle;

    .line 121
    .local v9, out:Landroid/os/Bundle;
    const-string v0, "key_event_id"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 122
    .local v6, eventId:J
    const-string v0, "NfcImportVCalActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vCalOperationFinished, eventId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "key_start_millis"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 124
    const-string v0, "key_end_millis"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 125
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 127
    .end local v6           #eventId:J
    .end local v9           #out:Landroid/os/Bundle;
    :cond_0
    const-string v0, "NfcImportVCalActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vCalOperationFinished, timeMillis="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "NfcImportVCalActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vCalOperationFinished, endMills="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/calendar/nfc/NfcImportVCalActivity;->createViewEventIntent(Landroid/net/Uri;JJ)Landroid/content/Intent;

    move-result-object v8

    .line 130
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 132
    return-void
.end method

.method public vCalOperationStarted(I)V
    .locals 2
    .parameter "totalCnt"

    .prologue
    .line 136
    const-string v0, "NfcImportVCalActivity"

    const-string v1, "vCalOperationStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public vCalProcessStatusUpdate(II)V
    .locals 2
    .parameter "currentCnt"
    .parameter "totalCnt"

    .prologue
    .line 141
    const-string v0, "NfcImportVCalActivity"

    const-string v1, "vCalProcessStatusUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method
