.class public Lcom/mediatek/calendar/nfc/NfcHandler;
.super Ljava/lang/Object;
.source "NfcHandler.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarNfcHandler"


# instance fields
.field private final mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter "eventInfoFragment"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mediatek/calendar/nfc/NfcHandler;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 45
    return-void
.end method

.method public static register(Landroid/app/Activity;Lcom/android/calendar/EventInfoFragment;)V
    .locals 3
    .parameter "activity"
    .parameter "eventInfoFragment"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 36
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 37
    const-string v1, "CalendarNfcHandler"

    const-string v2, "register nfc, NFC not available on this device!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v1, Lcom/mediatek/calendar/nfc/NfcHandler;

    invoke-direct {v1, p1}, Lcom/mediatek/calendar/nfc/NfcHandler;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 14
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    .line 49
    const-string v11, "CalendarNfcHandler"

    const-string v12, "createNdefMessage.............."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v11, p0, Lcom/mediatek/calendar/nfc/NfcHandler;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v11}, Lcom/android/calendar/EventInfoFragment;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 53
    .local v3, eventUri:Landroid/net/Uri;
    iget-object v11, p0, Lcom/mediatek/calendar/nfc/NfcHandler;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 54
    .local v7, resolver:Landroid/content/ContentResolver;
    if-eqz v3, :cond_2

    .line 55
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, eventId:Ljava/lang/String;
    const-string v11, "CalendarNfcHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createNdefMessage, eventId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://com.mediatek.calendarimporter/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 59
    .local v8, shareUri:Landroid/net/Uri;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v4, ndefBytes:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 61
    .local v9, vcalendarInputStream:Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 64
    .local v0, buffer:[B
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 65
    if-nez v9, :cond_0

    .line 66
    const-string v11, "CalendarNfcHandler"

    const-string v12, "createNdefMessage, vcalendarInputStream = null"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0           #buffer:[B
    .end local v2           #eventId:Ljava/lang/String;
    .end local v4           #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .end local v8           #shareUri:Landroid/net/Uri;
    .end local v9           #vcalendarInputStream:Ljava/io/InputStream;
    :goto_0
    return-object v10

    .line 70
    .restart local v0       #buffer:[B
    .restart local v2       #eventId:Ljava/lang/String;
    .restart local v4       #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #shareUri:Landroid/net/Uri;
    .restart local v9       #vcalendarInputStream:Ljava/io/InputStream;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, r:I
    if-lez v5, :cond_1

    .line 71
    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 79
    .end local v5           #r:I
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/io/IOException;
    const-string v11, "CalendarNfcHandler"

    const-string v12, "IOException creating vcalendar."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #r:I
    :cond_1
    :try_start_3
    const-string v11, "CalendarNfcHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createNdefMessage, ndefBytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v11, "text/x-vcalendar"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v11, v12}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 76
    .local v6, record:Landroid/nfc/NdefRecord;
    const-string v11, "CalendarNfcHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createNdefMessage, record="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v11, Landroid/nfc/NdefMessage;

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/nfc/NdefRecord;

    invoke-direct {v11, v6, v12}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v10, v11

    goto :goto_0

    .line 86
    .end local v0           #buffer:[B
    .end local v2           #eventId:Ljava/lang/String;
    .end local v4           #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .end local v5           #r:I
    .end local v6           #record:Landroid/nfc/NdefRecord;
    .end local v8           #shareUri:Landroid/net/Uri;
    .end local v9           #vcalendarInputStream:Ljava/io/InputStream;
    :cond_2
    const-string v11, "CalendarNfcHandler"

    const-string v12, "No event URI to share."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
